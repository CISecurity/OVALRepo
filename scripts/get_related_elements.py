#!/usr/bin/env/ python3
"""Get OVAL elements that are related to one or more elements.

Authors: David Ries <ries@jovalcm.com>

For usage information, please see the command line help:
    python3 get_related_elements.py -h

TODO:
- TBD
"""

import argparse, pprint, os, os.path, datetime, sys, time
import lib_repo, lib_xml, lib_search


def main():
    """ parse command line options and generate file """
    start_time = time.time()

    # parse command line options
    parser = argparse.ArgumentParser(description='Get OVAL elements that are related to one or more elements.')
    parser.add_argument('oval_id', nargs='+', help='one or more OVAL id(s)')
    direction_options = parser.add_argument_group('direction')
    direction_options.add_argument('--upstream', default=False, action="store_true", help='find elements that are upstream (i.e. reference) the provided OVAL id(s)')
    direction_options.add_argument('--downstream', default=False, action="store_true", help='find elements that are downstream (i.e. referenced by) the provided OVAL id(s)')
    limit_options = parser.add_argument_group('limit element results')
    limit_options.add_argument('--distance', nargs='?', type=int, help='limit distance from OVAL id(s) (e.g. 1 will only return parents/children, 2 would also return grandparents/grandchildren)')
    limit_options.add_argument('--element_type', nargs='*', help='filter by element typs(s): {0}'.format(', '.join(lib_repo.supported_element_types)))
    args = vars(parser.parse_args())

    if not (args['upstream'] or args['downstream']):
        parser.print_help()
        message('error',"Please specify at least one of: --upstream or --downstream.")
        sys.exit(0)
    
    if args['distance'] and args['distance'] < 1:
        parser.print_help()
        message('error','--distance must be a positive integer.')
        sys.exit(0)

    if args['element_type']:
        unsupported_element_types = [ element_type for element_type in args['element_type'] if element_type not in lib_repo.supported_element_types ]
        if unsupported_element_types:
            parser.print_help()
            message('error','Unsupported element type(s): {0}.'.format(', '.join(unsupported_element_types)))
            sys.exit(0)

    source_ids = set(args['oval_id'])
    num_source_ids = len(source_ids)
    distance = args['distance'] or 0

    elements_index = lib_search.ElementsIndex(message)

    if args['downstream']:
        # add all downstream element ids
        message('info','Finding downstream OVAL ids for {0} element(s)'.format(num_source_ids))
        downstream_ids = elements_index.find_downstream_ids(source_ids, set(), distance)
        message('info','Found {0} downstream OVAL ids (all element types)'.format(len(downstream_ids)))
        if args['element_type']:
            downstream_ids = { oval_id for oval_id in downstream_ids if lib_repo.get_element_type_from_oval_id(oval_id) in args['element_type'] }
            message('info','Found {0} downstream OVAL ids ({1} only)'.format(len(downstream_ids), 's, '.join(args['element_type']) + 's'))
        print('\n{0}\n'.format(', '.join(downstream_ids)))

    if args['upstream']:
        # add all upstream element ids
        message('info','Finding upstream OVAL ids for {0} element(s)'.format(num_source_ids))
        upstream_ids = elements_index.find_upstream_ids(source_ids, set(), distance)
        message('info','Found {0} upstream OVAL ids (all element types)'.format(len(upstream_ids)))
        if args['element_type']:
            upstream_ids = { oval_id for oval_id in upstream_ids if lib_repo.get_element_type_from_oval_id(oval_id) in args['element_type'] }
            message('info','Found {0} upstream OVAL ids ({1} only)'.format(len(upstream_ids), 's, '.join(args['element_type']) + 's'))
        print('\n{0}\n'.format(', '.join(upstream_ids)))

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



