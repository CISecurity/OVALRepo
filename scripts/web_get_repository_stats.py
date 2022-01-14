#!/usr/bin/env/ python3
"""Get repository content statistics for website.

Authors: David Ries <ries@jovalcm.com>

For usage information, please see the command line help:
    python3 web_get_repository_stats.py -h

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
    'reference_ids': { 'index': 'definitions', 'label': 'reference_id' },
    'element_type': { 'index': 'elements', 'label': 'element_type' },
    'predicate': { 'index': 'elements', 'label': 'predicate' }
}

import argparse, pprint, os, os.path, datetime, sys, time, json
import lib_repo, lib_xml, lib_search

def main():
    """ parse command line options and generate statistics """
    start_time = time.time()

    # parse command line options
    parser = argparse.ArgumentParser(description='Get repository content statistics for website.')
    groups_options = parser.add_argument_group('groups','Specify one or more groups to only show those groups. Displays all by default.')
    for field in grouping_fields.keys():
        label = grouping_fields[field]['label']
        groups_options.add_argument('--{0}'.format(label), default=False, action="store_true", help='show totals by {0}'.format(label))
    args = vars(parser.parse_args())

    # get list of groups specified in args
    show_grouping_fields = [ group for group in grouping_fields.keys() if args[grouping_fields[group]['label']] ]

    # if not groups specified, show all
    if not show_grouping_fields:
        show_grouping_fields = grouping_fields.keys()

    # get output object
    output = WebOutput()

    # get index references
    index_refs = {
        'definitions': lib_search.ThreadSafeDefinitionsIndex(output.message),
        'revisions': lib_search.ThreadSafeRevisionsIndex(output.message),
        'elements': lib_search.ThreadSafeElementsIndex(output.message)
    }

    for index in index_refs:
        index_refs[index].no_output = True

    # output the groups we're showing
    total_groups = len(show_grouping_fields)
    for i, group in enumerate(show_grouping_fields):
        index = index_refs[grouping_fields[group]['index']]
        group_totals = get_grouped_totals(group, index)
        output.add_result(group, group_totals)

    # add timinig
    seconds_elapsed = time.time() - start_time
    output.message('time','{0}'.format(format_duration(seconds_elapsed)))

    # output results
    output.write_json()


def get_grouped_totals(group_by, index):    
    results = index.grouped_query({}, [group_by])

    group_totals = {}

    # get field/value pairs
    total = 0
    for field, count in results.items():
        field = field.replace('_', ' ') if field else 'none'
        group_totals[field] = count
        total = total + count

    #group_totals['total'] = total

    return group_totals


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
            "RESULTS": {},
            "MESSAGES": []
        }

    def add_result(self, key, result):
        """ add a message to output """
        self.output['RESULTS'][key] = result

    def add_keyvalue(self, key, value):
        """ add key/value pair to output """
        self.output[key.upper()] = value

    def message(self, label, message):
        """ add a message to output """
        self.output['MESSAGES'].append({ label.upper(): message })

    def write_json(self):
        print(json.dumps(self.output, sort_keys=True, indent=4))



if __name__ == '__main__':
    main()



