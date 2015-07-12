#!/usr/bin/env/ python3
"""Get repository content statistics.

Authors: David Ries <ries@jovalcm.com>

For usage information, please see the command line help:
    python3 get_repository_stats -h

TODO:
- TBD
"""

# configure fields in index that we can group on
grouping_fields = {
    'class': { 'index': 'definitions', 'label': 'class' },
    'status': { 'index': 'definitions', 'label': 'status' },
    'family': { 'index': 'definitions', 'label': 'family' },
    'platforms': { 'index': 'definitions', 'label': 'platform' },
    'products': { 'index': 'definitions', 'label': 'product' },
    'contributors': { 'index': 'definitions', 'label': 'contributor' },
    'organizations': { 'index': 'definitions', 'label': 'organization' },
    'reference_ids': { 'index': 'definitions', 'label': 'reference_id' },
    'element_type': { 'index': 'elements', 'label': 'element_type' },
    'predicate': { 'index': 'elements', 'label': 'predicate' }
}

import argparse, pprint, os, os.path, datetime, sys, time
import lib_repo, lib_xml, lib_search

def main():
    """ parse command line options and generate statistics """
    start_time = time.time()

    # parse command line options
    parser = argparse.ArgumentParser(description='Get repository content statistics.')
    output_options = parser.add_argument_group('output options')
    output_options.add_argument('--format', default='screen', help="format: screen (default), ini, or json")
    groups_options = parser.add_argument_group('groups','Specify one or more groups to only show those groups. Displays all by default.')
    for field in grouping_fields.keys():
        label = grouping_fields[field]['label']
        groups_options.add_argument('--{0}'.format(label), default=False, action="store_true", help='show totals by {0}'.format(label))
    args = vars(parser.parse_args())

    output_format = args['format']

    # get list of groups specified in args
    show_grouping_fields = [ group for group in grouping_fields.keys() if args[grouping_fields[group]['label']] ]

    # if not groups specified, show all
    if not show_grouping_fields:
        show_grouping_fields = grouping_fields.keys()

    # get index references
    index_refs = {
        'definitions': lib_search.DefinitionsIndex(),
        'elements': lib_search.ElementsIndex()
    }

    # suppress index output if not screen
    if output_format != 'screen':
        index_refs['definitions'].no_output = True
        index_refs['elements'].no_output = True

    # output the groups we're showing
    total_groups = len(show_grouping_fields)
    for i, group in enumerate(show_grouping_fields):
        is_first = (i == 0)
        is_last = (i == total_groups - 1)
        index = index_refs[grouping_fields[group]['index']]
        output_grouped_totals(group, index, output_format, is_first, is_last)

    # output timing for screen only
    if output_format == 'screen':
        seconds_elapsed = time.time() - start_time
        message('info','Completed in {0}!'.format(format_duration(seconds_elapsed)))


def output_grouped_totals(group_by, index, output_format, is_first, is_last):    
    results = index.query({}, [group_by])

    if is_first and output_format == 'json':
        print("{")

    # output section header
    group_label = group_by.replace('_',' ').capitalize()
    total_fields = len(results.items())
    if output_format == 'ini':
        print('[{0}]'.format(group_label))
    elif output_format == 'json':
        print('\t"{0}": {{'.format(group_label))
    else: 
        print('------------------')
        print('By {0} ({1})'.format(group_label, total_fields))
        print('------------------')

    # output field: value pairs
    total = 0
    current = 0
    for field, count in results.items():
        current = current + 1
        field = field.replace('_', ' ') if field else 'none'
        if output_format == 'ini':
            print('{0} = {1}'.format(field.replace('=','\\='), count))
        elif output_format == 'json':
            print('\t\t"{0}": {1}{2}'.format(field, count, ',' if current < total_fields else ''))
        else: 
            print('{0}: {1}'.format(field, count))
        total = total + count

    if output_format == 'ini':
        print('')
    elif output_format == 'json':
        print('\t}}{0}'.format('' if is_last else ','))
    else: 
        print('\nTotal: {0}\n'.format(total))

    if is_last and output_format == 'json':
        print("}")


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



