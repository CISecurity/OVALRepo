#!/usr/bin/env/ python3
""" Schema validates one or more OVAL definitions files.

Authors: David Ries <ries@jovalcm.com>

For usage information, please see the command line help:
    python3 validate_oval_definitions_files.py -h

TODO:
- testing
- add args/support for specifying schema version
- improve performance of schematron validation (if possible)
"""

import argparse, os, os.path, datetime, sys, time, glob
import lib_repo, lib_xml


def main():
    """ parse command line options and generate file """
    start_time = time.time()

    # parse command line options
    parser = argparse.ArgumentParser(description='Schema validates one or more OVAL definitions files.')
    parser.add_argument('pathname', nargs='+', help='pathname(s) specifying file(s) to validate (supports glob patterns)')
    parser.add_argument('-s', '--schematron', default=False, action="store_true", help='additionally, schematron validate the output file')
    args = vars(parser.parse_args())

    # find and normalize all files in provided glob(s)
    files = { os.path.normpath(pathname) for pathname in args['pathname'] for filepath in glob.glob(pathname) }

    files_count = len(files)
    message('info', 'Preparing to validate {0} file(s)'.format(files_count))
    
    schema_path = lib_repo.get_oval_def_schema('5.11.2') 
    for i_file, filepath in enumerate(files):
        message('info','{0}. {1}'.format(i_file + 1, filepath))

        # schema validate
        message('info','Performing schema validation')
        try:
            lib_xml.schema_validate(filepath, schema_path)
            message('info','Schema validation successful')
        except lib_xml.SchemaValidationError as e:
            message('error','Schema validation failed:\n\t{0}'.format(e.message))

        if args['schematron']:
            # schematron validate
            message('info','Performing schematron validation')
            try:
                lib_xml.schematron_validate(filepath, schema_path)
                message('info','Schematron validation successful')
            except lib_xml.SchematronValidationError as e:
                message('error','Schematron validation failed:\n\t{0}'.format('\n\t'.join(e.messages)))

    seconds_elapsed = time.time() - start_time
    message('info','Completed in {0}!'.format(format_duration(seconds_elapsed)))


def format_duration(seconds):
    """ format a duration in seconds """
    hours = int(seconds // 3600)
    seconds = seconds - (hours * 3600)
    minutes = int(seconds // 60)
    seconds = int(seconds - (minutes * 60))
    return '{0:02d}:{1:02d}:{2:02d}'.format(hours, minutes, seconds)


def message(type, message):
    """ print a message """
    sys.stdout.write('\r{0}: {1}\n'.format(type.upper(), message))
    

if __name__ == '__main__':
    main()



