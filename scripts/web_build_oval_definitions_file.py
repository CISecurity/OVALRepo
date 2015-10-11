#!/usr/bin/env/ python3
"""Powers website-intiated builds if schema-valid OVAL definitions file.

Authors: David Ries <ries@jovalcm.com>

For usage information, please see the command line help:
    python3 build_oval_definitions_file.py -h

Note: 
    Unlike build_oval_definitions_file.py, this script will not automatically build/update the indices. 
    sYou must run web_update_indexes.py before running this script to ensure you get accurate results.

TODO:
- testing
- improve performance of schematron validation (if possible)
- add options to zip/tar the result file?
"""

import argparse, sys, time, json
import lib_repo, lib_xml, lib_search


def main():
    """ parse command line options and generate file """
    start_time = time.time()

    # parse command line options
    parser = argparse.ArgumentParser(description='Powers website-intiated builds if schema-valid OVAL definitions file. Note: unlike build_oval_definitions_file.py, this script will not automatically build/update the indices. You must run web_update_indexes.py before running this script to ensure you get accurate results.')
    output_options = parser.add_argument_group('output options')
    output_options.add_argument('-o', '--outfile', required=True, help='file name for output OVAL definitions file')
    output_options.add_argument('-v', '--validate', default=False, action="store_true", help='schema validate the output file')
    output_options.add_argument('-s', '--schematron', default=False, action="store_true", help='schematron validate the output file')
    output_options.add_argument('-t', '--tempdir', required=False, default="./", help="directory to store temporary files used when building oval definitions (default: './')")
    source_options = parser.add_argument_group('definitions filtering',
                                               'Provide at least one of the following options to determine which definition(s) ' +
                                               'will be included. Results will include the intersection of matches for each parameter ' +
                                               'supplied. When multiple values are supplied for one paramater, the parameter will ' +
                                               'match definitions that match any provided value.')
    source_options.add_argument('--definition_id', nargs='*', dest='oval_id', help='match OVAL definition id(s)')
    source_options.add_argument('--title', nargs='*', dest='title', metavar='PHRASE', help='match phrase(s) in definition titles')
    source_options.add_argument('--description', nargs='*', dest='description', metavar='PHRASE', help='match phrase(s) in definition titles')
    source_options.add_argument('--class', nargs='*', dest='class', help='filter by class(es): {0}'.format(', '.join(lib_repo.supported_definition_classes)))
    source_options.add_argument('--status', nargs='*', dest='status', help='filter by status(es): {0}'.format(', '.join(lib_repo.supported_definition_statuses)))
    source_options.add_argument('--family', nargs='*', dest='family', help='filter by family(ies)')
    source_options.add_argument('--platform', nargs='*', dest='platforms', metavar='PLATFORM', help='filter by platform(s)')
    source_options.add_argument('--product', nargs='*', dest='products', metavar='PRODUCT', help='filter by product(s)')
    source_options.add_argument('--contributor', nargs='*', dest='contributors', metavar='NAME', help='filter by contributor(s)')
    source_options.add_argument('--organization', nargs='*', dest='organizations', metavar='NAME', help='filter by organization(s)')
    source_options.add_argument('--reference_id', nargs='*', dest='reference_ids', metavar='REFERENCE_ID', help='filter by reference ids, e.g. CVE-2015-3306')
    source_options.add_argument('--max_schema_version', nargs="?", dest='max_schema_version', metavar='SCHEMA_VERSION',  help='filter by maximum oval schema version, e.g. 5.10')
    source_options.add_argument('--all_definitions', default=False, action="store_true", help='include all definitions in the repository (do not specify any other filters)')
    source_options.add_argument('--from', nargs='?', default='', metavar='YYYYMMDD', help='include elements revised on or after this day (format: YYYYMMDD)')
    source_options.add_argument('--to', nargs='?', default='', metavar='YYYYMMDD', help='include elements revised on or before this day (format: YYYYMMDD)')
    args = vars(parser.parse_args())

    # get output object
    output = WebOutput()

    # get index
    definitions_index = lib_search.ThreadSafeDefinitionsIndex(output.message)
    definitions_index.no_output = True

    # contruct query from args
    query = {}
    for field in definitions_index.get_fieldnames():
        if field in args and args[field]:
            query[field] = args[field]

    # add schema_version filter, if specified
    if args['max_schema_version']:
        query['min_schema_version'] = '[0 TO {0}]'.format(definitions_index.version_to_int(args['max_schema_version']))

    # add date range and contributor/org filters, if specified
    all_definitions_filtered = False
    if args['from'] or args['to'] or args['contributors'] or args['organizations']:
        # get revisions index
        revisions_index = lib_search.ThreadSafeRevisionsIndex(output.message)
        revisions_index.no_output = True

        if args['from'] or args['to']:
            filtered_oval_ids = revisions_index.get_definition_ids({ 'date': revisions_index.format_daterange(args['from'], args['to']) })

        if args['contributors']:
            contributor_filtered_ids = revisions_index.get_definition_ids({ 'contributor': args['contributors'] })
            filtered_oval_ids = filtered_oval_ids & contributor_filtered_ids if 'filtered_oval_ids' in locals() else contributor_filtered_ids

        if args['organizations']:
            organization_filtered_ids = revisions_index.get_definition_ids({ 'organization': args['organizations'] })
            filtered_oval_ids = filtered_oval_ids & organization_filtered_ids if 'filtered_oval_ids' in locals() else organization_filtered_ids

        # add to query
        if 'oval_id' in query and query['oval_id']:
            # if oval_id(s) specified in args, get intersection with filtered oval ids
            query['oval_id'] = set(query['oval_id']) & filtered_oval_ids
        else:
            query['oval_id'] = filtered_oval_ids

        if not query['oval_id']:
            all_definitions_filtered = True

    # --all_definitions OR at least one definition selection option must be specified
    if args['all_definitions'] and query:
        parser.print_help()
        output.message('error',"The '--all_definitions' filter cannot be combined with any other filters.")
        sys.exit(1)
    elif not (args['all_definitions'] or query):
        parser.print_help()
        output.message('error','At least one definitions filtering argument must be provided.')
        sys.exit(1)

    # query index
    query_results = definitions_index.query(query) if not all_definitions_filtered else {}

    # get set of all definition ids found
    definition_ids = { document['oval_id'] for document in query_results }
    output.message('info','Found {0} matching OVAL definitions'.format(len(definition_ids)))

    # create generator and set oval schema version, if necessary
    OvalGenerator = lib_xml.OvalGenerator(output.message, args['tempdir'])
    if args['max_schema_version']:
        OvalGenerator.oval_schema_version = args['max_schema_version']

    if definition_ids:
        # add all downstream element ids
        output.message('info','Finding downstream OVAL ids for all definitions')
        elements_index = lib_search.ThreadSafeElementsIndex(output.message)
        elements_index.no_output = True

        oval_ids = elements_index.find_downstream_ids(definition_ids, definition_ids)
        output.message('info','Found {0} downstream OVAL ids'.format(len(oval_ids) - len(query_results)))

        # get paths for all elements
        output.message('info','Finding paths for {0} OVAL elements'.format(len(oval_ids)))
        file_paths = elements_index.get_paths_from_ids(oval_ids)

        # build in memory if there aren't that many files
        if len(file_paths) < 200:
            OvalGenerator.use_file_queues = False

        # add each OVAL definition to generator
        output.message('info','Generating OVAL definition file with {0} elements'.format(len(oval_ids)))
        for file_path in file_paths:
            element_type = lib_repo.get_element_type_from_path(file_path)
            OvalGenerator.queue_element_file(element_type, file_path)

    # write output file
    output.message('info','Writing OVAL definitions to {0}'.format(args['outfile']))
    OvalGenerator.to_file(args['outfile'])
    output.add_result(args['outfile'])

    # validate
    if args['validate']:
        # schema validate
        schema_path = lib_repo.get_oval_def_schema(OvalGenerator.oval_schema_version)
        output.message('info','performing schema validation')
        try:
            lib_xml.schema_validate(args['outfile'], schema_path)
            output.message('info','schema validation successful')
        except lib_xml.SchemaValidationError as e:
            output.message('error','schema validation failed:\n\t{0}'.format(e.message))

    if args['schematron']:
        # schematron validate
        schema_path = lib_repo.get_oval_def_schema(OvalGenerator.oval_schema_version)
        output.message('info','performing schematron validation')
        try:
            lib_xml.schematron_validate(args['outfile'], schema_path)
            output.message('info','schematron validation successful')
        except lib_xml.SchematronValidationError as e:
            output.message('error','schematron validation failed:\n\t{0}'.format('\n\t'.join(e.messages)))

    # add timinig
    seconds_elapsed = time.time() - start_time
    output.message('time','{0}'.format(format_duration(seconds_elapsed)))

    # output results
    output.write_json()


def format_duration(seconds):
    """ format a duration in seconds """
    hours = int(seconds // 3600)
    seconds = seconds - (hours * 3600)
    minutes = int(seconds // 60)
    seconds = int(seconds - (minutes * 60))
    return '{0:02d}:{1:02d}:{2:02d}'.format(hours, minutes, seconds)


class WebOutput():
    """ An utlity class to queue and output JSON messages. """

    def __init__(self):
        """ constructor, set defaults for instances """
        self.output = {
            "RESULTS": [],
            "RESULTS_COUNT": 0, 
            "MESSAGES": []
        }

    def add_result(self, result):
        """ add a message to output """
        self.output['RESULTS'].append(result)

    def add_keyvalue(self, key, value):
        """ add key/value pair to output """
        self.output[key.upper()] = value

    def message(self, label, message):
        """ add a message to output """
        self.output['MESSAGES'].append({ label.upper(): message })

    def write_json(self):
        self.output['RESULTS_COUNT'] = len(self.output['RESULTS'])
        print(json.dumps(self.output, sort_keys=True, indent=4))
    

if __name__ == '__main__':
    main()



