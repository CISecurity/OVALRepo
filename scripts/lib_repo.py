#!/usr/bin/env/ python3
"""Library for accessing files in this repository.

Authors: David Ries <ries@jovalcm.com>

This library should provide a stable interface to accessing OVAL objects
and other files stored in this repository. Other code should use this library
instead of making assumptions about how the repository content is organized.

Available functions:
- path_to_oval_id: gets OVAL id corresponding to provided path
- get_element_type_from_oval_id: gets element type from OVAL id string
- get_element_type_from_path: gets element type from path
- get_definition_paths_iterator: get an iterator of all definition paths
- get_element_paths_iterator: get an iterator of all OVAL element paths.
- get_root_path: get full/real path for all files in this git repo
- get_repository_root_path: get full/real path to repo content root
- get_scripts_path: get full/real path for scripts folder
- get_oval_def_schema: gets OVAL definitions schema file for specified schema version
- get_oval_def_schematron: gets OVAL definitions schema file for specified schematron version
- message: outputs a message to the CLI

TODO:
- TBD
"""


import pprint, inspect, os, os.path, sys, glob
import lib_xml


supported_definition_classes = ('compliance', 'inventory', 'patch', 'vulnerability', 'miscellaneous')
supported_definition_statuses = ('ACCEPTED', 'DEPRECATED', 'DRAFT', 'INTERIM')
supported_element_types = ('definition', 'test', 'object', 'state', 'variable')


def path_to_oval_id(path):
    """ Transform a path to an oval_id. """
    file_name = os.path.basename(path)
    oval_id = file_name.replace('_', ':')
    return oval_id


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


def get_element_type_from_path(path):
    """ Gets element type from path. """
    return get_element_type_from_oval_id(path_to_oval_id(path))


def get_definition_paths_iterator():
    """ Returns an iterator of all definition paths. """
    definitions_root = os.path.join(get_repository_root_path(), 'definitions')
    for dirpath, dirnames, filenames in os.walk(definitions_root):
        for filename in filenames:
            yield os.path.join(dirpath, filename)


def get_element_paths_iterator():
    """ Returns an iterator of all OVAL element paths. """
    elements_root = os.path.join(get_repository_root_path())
    for dirpath, dirnames, filenames in os.walk(elements_root):
        for filename in filenames:
            yield os.path.join(dirpath, filename)


def get_root_path():
    """ Gets root path. """
    global root_path
    if 'root_path' not in globals():
        scripts_path = os.path.dirname(os.path.abspath(inspect.getfile(inspect.currentframe())))
        root_path = os.path.realpath(scripts_path + '/../')
    return root_path


def get_repository_root_path():
    """ Gets repository root path. """
    return os.path.realpath(get_root_path() + '/repository' )


def get_scripts_path():
    """ Gets scripts folder root path. """
    return os.path.realpath(get_root_path() + '/scripts' )


def get_oval_def_schema(schema_version='5.11.1'):
    """ Gets OVAL definitions schema file for specified schema version. """
    return os.path.realpath(get_root_path() + '/oval_schemas/' + schema_version + '/all-oval-definitions.xsd' )


def get_oval_def_schematron(schema_version='5.11.1'):
    """ Gets OVAL definitions schema file for specified schema version. """
    return os.path.realpath(get_root_path() + '/oval_schemas/' + schema_version + '/all-oval-definitions-schematron.xsl' )


def message(type, message):
    """ Print a message """
    sys.stdout.write('\r{0}: {1}\n'.format(type.upper(), message))
