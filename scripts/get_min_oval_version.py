#!/usr/bin/env/ python3
""" Determines the minimum OVAL schema version for a given definition fragment

For usage information, please see the command line help:
    python3 get_min_oval_version.py -h

TODO:

    - Once the xml c14n work is complete, port set_min_schema_version()

"""

import argparse, sys, time, pprint, re, os
import lib_repo, lib_xml, lib_search
from lxml import etree
 
schema_path_cache = {}

def message(label, message):
    """ print a message """
    sys.stdout.write('\r{0}: {1}\n'.format(label.upper(), message))

def set_min_schema_version(defpath, schema_version):
    """ updates or sets the min_schema_version attribute in the provided oval definition. """

    current_version = None

    with open(defpath, mode='rt', encoding='utf-8') as f:
        deftext = f.read()

    p = re.compile(r'<min_schema_version>(.*?)<\/min_schema_version>')

    if p.match(deftext):
        if current_version == p.group(1):
            return
        else:
            deftext = deftext.replace(p.group(0),'<min_schema_version>' + schema_version + '</min_schema_version>')
    else:
        deftext = deftext.replace('</oval_repository>','  <min_schema_version>' + schema_version + '</min_schema_version>\n    </oval_repository>')

    with open(defpath + ".new", mode='wt', encoding='utf-8') as f:
        f.write(deftext)

def determine_def_min_version(defpath, definitions_index, elements_index, update):
    """ determines the minimum oval schema version the given definition can be expressed in. """

    global schema_path_cache

    minimum_version=None
    exception=None

    # get id of oval definition
    def_id = lib_repo.path_to_oval_id(defpath)

    # add all downstream element ids
    def_ids = set([def_id])
    oval_ids = elements_index.find_downstream_ids(def_ids, def_ids)
    file_paths = elements_index.get_paths_from_ids(oval_ids)

    # create generator
    OvalGenerator = lib_xml.OvalGenerator(message)
    #OvalGenerator.oval_schema_version = schema_version

    # add each OVAL definition to generator
    for file_path in file_paths:
        element_type = lib_repo.get_element_type_from_path(file_path)
        OvalGenerator.queue_element_file(element_type, file_path)

    for schema_version in lib_repo.get_schema_versions():

        OvalGenerator.oval_schema_version = schema_version

        tree = etree.fromstring(OvalGenerator.to_string())

        # test of definitions file validates against current schema
        try:
            lib_xml.schema_validate_tree(tree, schema_path_cache[schema_version], 1)
            minimum_version = schema_version
        except lib_xml.SchemaValidationError as e:
            exception = e.message
            break;

    OvalGenerator.clear()

    if update:
        set_min_schema_version(defpath, minimum_version)

    return { 'oval_id': def_id, 'minimum_version': minimum_version, 'exception': exception }

def main():
    """ parse command line options and generate file """

    # parse command line options
    parser = argparse.ArgumentParser(description='Determine minimum supported OVAL schema for a given definition')
    parser.add_argument('-p', '--path', help='path to definition fragment')
    parser.add_argument('-i', '--id',  help='id of definition fragment')
    parser.add_argument('-a', '--all', default=False, action="store_true", help='determine minimum supported OVAL schema for all indexed definitino fragments. cannot be combined with --id or --path')
    parser.add_argument('-u', '--update', default=False, action="store_true", help='update the given definition to include the min_schema_version element')

    args = vars(parser.parse_args())

    if (args['all'] and (args['id'] or args['path'])):
        parser.print_help()
        message('error', "--all cannot be combined with --id or --path.")    
        sys.exit(0)

    if not args['all'] and not (args['path'] or args['id']):
        parser.print_help()
        message('error',"Please specify one of: --all, --path or --id.")
        sys.exit(0)

    if (args['path'] and args['id']):
        parser.print_help()
        message('error',"Please specify one of: --all, --path, or --id.")
        sys.exit(0)

    # get indexes
    definitions_index = lib_search.DefinitionsIndex(message)
    elements_index = lib_search.ElementsIndex(message)

    # build schema path cache
    for schema_version in lib_repo.get_schema_versions():
        schema_path_cache[schema_version] = lib_repo.get_oval_def_schema(schema_version)

    if args['all']:
    
        for defpath in lib_repo.get_definition_paths_iterator():
            result = determine_def_min_version(defpath, definitions_index, elements_index, args['update'])
            report(defpath, result['minimum_version'])

    elif args['id']:
        documents = elements_index.query({ 'oval_id': args['id'] })

        if len(documents) == 0:
            message('info',"No object having id '{0}' found.".format(args['id']))
            sys.exit(0)

        paths = [ document['path'] for document in documents ]

        for path in paths:
            result = determine_def_min_version(path, definitions_index, elements_index, args['update'])
            report(result['oval_id'], result['minimum_version'])

    elif args['path'] and not os.path.isfile(args['path']):
        message('info',"Definition fragment path not found: " + args['path'])
        sys.exit(0)
    else:
        result = determine_def_min_version(args['path'], definitions_index, elements_index, args['update'])
        report(args['path'], result['minimum_version'])

def report(subject, version):
    print("The minimum OVAL version suported by '{0}' is {1}.".format(subject, version))

if __name__ == '__main__':
    main()
