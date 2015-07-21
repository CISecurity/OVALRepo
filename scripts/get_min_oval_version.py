#!/usr/bin/env/ python3
""" Determines the minimum OVAL schema version for a given definition fragment

For usage information, please see the command line help:
    python3 get_min_oval_version -h

TODO:
"""

import argparse, sys, time, pprint
import lib_repo, lib_xml, lib_search
import os, errno, tempfile

def message(label, message):
    """ print a message """
    sys.stdout.write('\r{0}: {1}\n'.format(label.upper(), message))

def determine_def_min_version(defpath, definitions_index, elements_index):

    minimum_version=None
    exception=None

    for schema_version in lib_repo.get_schema_versions():

        def_id = lib_repo.path_to_oval_id(defpath)
        schema_path = lib_repo.get_oval_def_schema(schema_version)

        # add all downstream element ids
        def_ids = set([def_id])
        oval_ids = elements_index.find_downstream_ids(def_ids, def_ids)
        file_paths = elements_index.get_paths_from_ids(oval_ids)

        # create generator
        OvalGenerator = lib_xml.OvalGenerator(message)
        OvalGenerator.oval_schema_version = schema_version

        # add each OVAL definition to generator
        for file_path in file_paths:
            element_type = lib_repo.get_element_type_from_path(file_path)
            OvalGenerator.queue_element_file(element_type, file_path)

        # write output file
        temp = tempfile.mkstemp()
        os.close(temp[0]);
        path = temp[1]
        OvalGenerator.write(path)

        # test of definitions file validates against current schema
        try:
            lib_xml.schema_validate(path, schema_path)
            minimum_version = schema_version
        except lib_xml.SchemaValidationError as e:
            exception = e.message
            break;

        os.remove(path)

    return { 'oval_id': def_id, 'minimum_version': minimum_version, 'exception': exception }

def main():
    """ parse command line options and generate file """

    # parse command line options
    parser = argparse.ArgumentParser(description='Determine minimum supported OVAL schema for a given definition')
    parser.add_argument('-p', '--path', help='path to definition fragment')
    parser.add_argument('-i', '--id',   help='id of definition fragment')

    args = vars(parser.parse_args())

    if not (args['path'] or args['id']):
        parser.print_help()
        message('error',"Please specify at least one of: --path or --id.")
        sys.exit(0)

    if (args['path'] and args['id']):
        parser.print_help()
        message('error',"Please specify --path OR --id.")
        sys.exit(0)

    # get indexes
    definitions_index = lib_search.DefinitionsIndex(message)
    elements_index = lib_search.ElementsIndex(message)

    if args['id']:
        documents = elements_index.query({ 'oval_id': args['id'] })

        if len(documents) == 0:
            message('info',"No object having id '{0}' found.".format(args['id']))
            sys.exit(0)

        paths = [ document['path'] for document in documents ]

        for path in paths:
            result = determine_def_min_version(path, definitions_index, elements_index)
            report(result['oval_id'], result['minimum_version'])

    elif args['path'] and not os.path.isfile(args['path']):
        message('info',"Definition fragment path not found: " + args['path'])
        sys.exit(0)
    else:
        result = determine_def_min_version(args['path'], definitions_index, elements_index)
        report(args['path'], result['minimum_version'])

def report(subject, version):
    print("The minimum OVAL version suported by '{0}' is {1}.".format(subject, version))

if __name__ == '__main__':
    main()
