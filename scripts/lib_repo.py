#!/usr/bin/env/ python3
"""Library for accessing files in this repository.

Authors: David Ries <ries@jovalcm.com>

This library should provide a stable interface to accessing OVAL objects
and other files stored in this repository. Other code should use this library
instead of making assumptions about how the repository content is organized.

Available functions:
- find_downstream_ids: gets list of ids downstream from provided OVAL id
- oval_id_to_path: gets filepath corresponding to provided OVAL id
- get_element_type_from_oval_id: gets element type from OVAL id string
- get_root_path: gets root path for all files in this git repo
- get_repository_root_path: returns full/real path to repo content root
- get_oval_def_schema: gets OVAL definitions schema file for specified schema version
- get_oval_def_schematron: gets OVAL definitions schema file for specified schematron version
- message: outputs a message to the CLI

TODO:
- TBD
"""


import pprint, inspect, os, os.path, sys
import lib_xml


supported_definition_classes = ('compliance', 'inventory', 'patch', 'vulnerability', 'miscellaneous')


def find_downstream_ids(parent_id, oval_ids=set()):
    """ Recursively find a list of all OVAL ids downstream from the provided OVAL id. """
    #message('info','checking {0} for oval refs'.format(parent_id))

    # get oval refs in current OVAL element
    path = oval_id_to_path(parent_id)
    ids_in_file = lib_xml.get_id_refs_in_file(path)

    for oval_id in ids_in_file:
        # if already in set, skip it
        if oval_id in oval_ids:
            continue

        # add id and all ids downstream from it
        oval_ids.add(oval_id)
        oval_ids = find_downstream_ids(oval_id, oval_ids)

    return oval_ids


def oval_id_to_path(oval_id):
    """ Transform an oval_id to a path in the repo. """
    repo_root = get_repository_root_path()
    folder = get_element_type_from_oval_id(oval_id) + 's'
    filename = oval_id.replace(':','_') + '.xml'

    return '{0}/{1}/{2}'.format(repo_root, folder, filename)


def get_element_type_from_oval_id(oval_id):
    """ Gets element type from OVAL id. """
    segments = oval_id.split(':')
    if len(segments) != 4:
        raise ValueError('Invalid OVAL id: {0}.'.format(oval_id))

    code = segments[2]
    if code == 'def':
        element_type = 'definition'
    elif code == 'tst':
        element_type = 'test'
    elif code == 'obj':
        element_type = 'object'
    elif code == 'ste':
        element_type = 'state'
    elif code == 'var':
        element_type = 'variable'
    else:
        raise ValueError("Unknown OVAL object type '{0}' in {1}.".format(element_type, oval_id))

    return element_type


def get_root_path():
    """ Gets root path. """
    global root_path
    if 'root_path' not in globals():
        scripts_path = os.path.dirname(os.path.abspath(inspect.getfile(inspect.currentframe())))
        root_path = os.path.realpath(scripts_path + '/../')
    return root_path


def get_repository_root_path():
    """ Gets repository root path. """
    return os.path.realpath(get_root_path() + '/oval_repository/repository' )


def get_oval_def_schema(schema_version='5.11.1'):
    """ Gets OVAL definitions schema file for specified schema version. """
    return os.path.realpath(get_root_path() + '/oval_schemas/' + schema_version + '/all-oval-definitions.xsd' )


def get_oval_def_schematron(schema_version='5.11.1'):
    """ Gets OVAL definitions schema file for specified schema version. """
    return os.path.realpath(get_root_path() + '/oval_schemas/' + schema_version + '/all-oval-definitions-schematron.xsl' )


def message(type, message):
    """ Print a message """
    sys.stdout.write('\r{0}: {1}\n'.format(type.upper(), message))
