#!/usr/bin/env/ python3
"""Powers website OVAL definitions search.

Authors: David Ries <ries@jovalcm.com>

For usage information, please see the command line help:
    python3 web_search_definitions.py -h

TODO:
- update contributor / organization filtering to run from revisions index
- add schema version filter 
- testing
"""

import argparse, sys, time, json
import lib_repo, lib_xml, lib_search


def main():
    """ parse command line options and generate file """
    start_time = time.time()

    # parse command line options
    parser = argparse.ArgumentParser(description='Powers website OVAL definitions search.')
    output_options = parser.add_argument_group('output options')
    output_options.add_argument('--page', nargs='?', default=1, type=int, help='page number to return (1 based, default: 1)')
    output_options.add_argument('--page_length', nargs='?', default=50, type=int, help='number of items per page (default: 50)')
    criteria_options = parser.add_argument_group('search criteria',
                                               'Provide at least one of the following criteria to determine which definition(s) ' +
                                               'will be included in the results set. Results will include the intersection of matches for each parameter ' +
                                               'supplied. When multiple values are supplied for one paramater, the parameter will ' +
                                               'match definitions that match any provided value.')
    criteria_options.add_argument('--definition_id', nargs='*', dest='oval_id', help='match OVAL definition id(s)')
    criteria_options.add_argument('--title', nargs='*', dest='title', metavar='PHRASE', help='match phrase(s) in definition titles')
    criteria_options.add_argument('--description', nargs='*', dest='description', metavar='PHRASE', help='match phrase(s) in definition titles')
    criteria_options.add_argument('--class', nargs='*', dest='class', help='filter by class(es): {0}'.format(', '.join(lib_repo.supported_definition_classes)))
    criteria_options.add_argument('--status', nargs='*', dest='status', help='filter by status(es): {0}'.format(', '.join(lib_repo.supported_definition_statuses)))
    criteria_options.add_argument('--family', nargs='*', dest='family', help='filter by family(ies)')
    criteria_options.add_argument('--platform', nargs='*', dest='platforms', metavar='PLATFORM', help='filter by platform(s)')
    criteria_options.add_argument('--product', nargs='*', dest='products', metavar='PRODUCT', help='filter by product(s)')
    criteria_options.add_argument('--contributor', nargs='*', dest='contributors', metavar='NAME', help='filter by contributor(s)')
    criteria_options.add_argument('--organization', nargs='*', dest='organizations', metavar='NAME', help='filter by organization(s)')
    criteria_options.add_argument('--reference_id', nargs='*', dest='reference_ids', metavar='REFERENCE_ID', help='filter by reference ids, e.g. CVE-2015-3306')
    criteria_options.add_argument('--max_schema_version', nargs="?", dest='max_schema_version', metavar='SCHEMA_VERSION',  help='filter by maximum oval schema version, e.g. 5.10')
    criteria_options.add_argument('--all_definitions', default=False, action="store_true", help='include all definitions in the repository (do not specify any other filters)')
    criteria_options.add_argument('--from', nargs='?', default='', metavar='YYYYMMDD', help='include elements revised on or after this day (format: YYYYMMDD)')
    criteria_options.add_argument('--to', nargs='?', default='', metavar='YYYYMMDD', help='include elements revised on or before this day (format: YYYYMMDD)')
    criteria_options.add_argument('--revision_type', nargs='*', metavar='TYPE', help='optionally specify the type of revisons that the --to and --from date should match: status_change, created, submitted, modified, any (default:any)')
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
    if args['from'] or args['to'] or args['contributors'] or args['organizations']:
        # get revisions index
        revisions_index = lib_search.ThreadSafeRevisionsIndex(output.message)
        
        if args['from'] or args['to']:
            revision_date_query = { 'date': revisions_index.format_daterange(args['from'], args['to']) }
            if args['revision_type'] and 'any' not in args['revision_type']:
                revision_date_query['type'] = args['revision_type']
            filtered_oval_ids = revisions_index.get_definition_ids(revision_date_query)

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
            output.message('info','No matching OVAL definitions found. Aborting.')
            output.write_json()
            sys.exit(0)

    # --all_definitions OR at least one definition selection option must be specified
    if args['all_definitions'] and query:
        output.message('error',"The '--all_definitions' filter cannot be combined with any other filters.")
        output.write_json()
        sys.exit(0)
    elif not (args['all_definitions'] or query):
        output.message('error','At least one definitions filtering argument must be provided.')
        output.write_json()
        sys.exit(0)

    # query index
    query_results = definitions_index.paged_query(query, args['page'], args['page_length'])
    if not query_results or not query_results['documents']:
        output.message('info','No matching OVAL definitions found. Aborting.')
        output.write_json()
        sys.exit(0)

    # add results to output
    for query_result in query_results['documents']:
        del query_result['path']
        for split_field in ['platforms', 'products', 'reference_ids']:
            query_result[split_field] = query_result[split_field].split(',') if query_result[split_field] else []
        query_result['last_modified'] = query_result['last_modified'].isoformat() if query_result['last_modified'] else ''
        output.add_result(query_result)

    # add paging metadata
    output.add_keyvalue('page', query_results['page'])
    output.add_keyvalue('page_count', query_results['page_count'])
    output.add_keyvalue('page_length', query_results['page_length'])

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
    """ A SearchIndex for OVAL definitions. """

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



