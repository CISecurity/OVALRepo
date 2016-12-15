#!/usr/bin/env/ python3
"""Identify changes in current working directory as compared to a remote authoritative copy of the repo and
identify all the elements affected by those changes.

Authors: Gunnar Engelbach <Gunnar.Engelbach@ThreatGuard.com>, David Ries <ries@jovalcm.com>

For usage information, please see the command line help:
    python3 find_affected.py -h

TODO:
- TBD
"""


import argparse
import lib_search
import lib_git
import lib_oval
import lib_repo
import lib_xml
import os, time, sys


def main():
    """ parse command line options and call lib functions """
    start_time = time.time()

    parser = argparse.ArgumentParser(description='Identify changes in current working directory as compared to a remote authoritative copy of the repo and identify all the elements affected by those changes.')
    # Note: I don't think we need to support files. If a file is submitted, CIS/QA can decompose it and then run this. So this can always run against repo.
    #parser.add_argument('-f', '--file', required=False, help='The name of the source file.  If not used the local git repository will be used as the source')
    parser.add_argument('--silent', required=False, action="store_true", help='Suppress messages')
    parser.add_argument('--remote', required=False, default='upstream', help="name of authoritative remote (default: 'upstream')")
    parser.add_argument('--branch', required=False, default='master', help="name of branch in authoritative remote (default: 'master')")
    parser.add_argument('--outfile', required=False, default='all.affected.oval.xml', help="file name OVAL definitions file containing all affected definitions (default 'all.affected.oval.xml')")
    parser.add_argument('-s', '--schematron', default=False, action="store_true", help='schematron validate the affected definitions')
    args = vars(parser.parse_args())

    silent = args['silent']

    ## 1. Find Affected Elements

    # get changes in working dir vs. remote/branch
    message('info', 'Comparing working directory to {0}/{1}'.format(args['remote'], args['branch']), silent)
    paths_changed = lib_git.compare_current_oval_to_remote(args['remote'], args['branch'])
    if not paths_changed:
        message('info', 'No changes. Aborting.', silent)
        sys.exit(0)
    message('info', 'Found {0} files changed in working directory:\n\t{1}'.format(len(paths_changed), '\n\t'.join(paths_changed)), silent)

    # convert paths to oval ids
    oval_ids_changed = { lib_repo.path_to_oval_id(filepath) for filepath in paths_changed }
    message('info', 'Found {0} OVAL elements changed in working directory:\n\t{1}'.format(len(oval_ids_changed), '\n\t'.join(oval_ids_changed)), silent)

    # find all upstream ids
    message('info','Finding upstream OVAL ids for {0} element(s)'.format(len(oval_ids_changed)), silent)
    elements_index = lib_search.ElementsIndex(message)
    upstream_ids = elements_index.find_upstream_ids(oval_ids_changed, set())
    message('info','Found {0} upstream OVAL ids (all element types)'.format(len(upstream_ids)), silent)

    affected_oval_ids = oval_ids_changed.union(upstream_ids)


    # filter affected to definition ids
    affected_def_ids = { oval_id for oval_id in upstream_ids if lib_repo.get_element_type_from_oval_id(oval_id) == 'definition' }
    message('info','Found {0} upstream OVAL definitions:\n\t{1}'.format(len(affected_def_ids), '\n\t'.join(affected_def_ids)), silent)


    ## 2. Build an OVAL Definitions File and Validate It!
    message('info','Building an OVAL definitions file for all affected definitions.', silent)

    # get all downstream elements
    oval_ids = elements_index.find_downstream_ids(affected_def_ids, affected_def_ids)
    file_paths = elements_index.get_paths_from_ids(oval_ids)

    # add each OVAL definition to generator and write to file
    message('info',"Generating OVAL definition file '{0}' with {1} elements".format(args['outfile'], len(oval_ids)), silent)
    OvalGenerator = lib_xml.OvalGenerator(message)
    for file_path in file_paths:
        element_type = lib_repo.get_element_type_from_path(file_path)
        OvalGenerator.queue_element_file(element_type, file_path)
    OvalGenerator.to_file(args['outfile'])

    # validate
    schema_path = lib_repo.get_oval_def_schema('5.11.2')
    message('info','Performing schema validation', silent)
    try:
        lib_xml.schema_validate(args['outfile'], schema_path)
        message('info','Schema validation successful', silent)
    except lib_xml.SchemaValidationError as e:
        message('error','Schema validation failed:\n\t{0}'.format(e.message), silent)

    if args['schematron']:
        # schematron validate
        schema_path = lib_repo.get_oval_def_schema('5.11.2')
        message('info','Performing schematron validation', silent)
        try:
            lib_xml.schematron_validate(args['outfile'], schema_path)
            message('info','Schematron validation successful', silent)
        except lib_xml.SchematronValidationError as e:
            message('error','Schematron validation failed:\n\t{0}'.format('\n\t'.join(e.messages)), silent)

    #Find all downstream children -- that is, a search depth of one
    #Find all upstream users, all the way up to the definition
    
    #Sort the list:  definitions, then tests, objects, states, and variables
    #Show the list
    #Offer to build an OVAL file that contains all the changes

    seconds_elapsed = time.time() - start_time
    message('info','Completed in {0}!'.format(format_duration(seconds_elapsed)), silent)
    

def format_duration(seconds):
    """ format a duration in seconds """
    hours = int(seconds // 3600)
    seconds = seconds - (hours * 3600)
    minutes = int(seconds // 60)
    seconds = int(seconds - (minutes * 60))
    return '{0:02d}:{1:02d}:{2:02d}'.format(hours, minutes, seconds)


def message(label, message, silent=False):
    """ print a message """
    if not silent:
        sys.stdout.write('\r{0}: {1}\n'.format(label.upper(), message))

if __name__ == '__main__':
    main()