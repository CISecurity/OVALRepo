#!/usr/bin/env/ python3
"""Get repository contributor statistics for website.

Authors: David Ries <ries@jovalcm.com>

For usage information, please see the command line help:
    python3 web_get_contributor_stats.py -h

TODO:
- TBD
"""

import argparse, pprint, os, os.path, datetime, sys, time, json
import lib_repo, lib_xml, lib_search

def main():
    """ parse command line options and generate statistics """
    start_time = time.time()

    # parse command line options
    parser = argparse.ArgumentParser(description='Get repository contributor statistics for website.')
    filter_options = parser.add_argument_group('filter options')
    filter_options.add_argument('--from', nargs='?', default='', metavar='YYYYMMDD', help='omit contributions before this day (format: YYYYMMDD)')
    filter_options.add_argument('--to', nargs='?', default='', metavar='YYYYMMDD', help='omit contributions after this day (format: YYYYMMDD)')
    args = vars(parser.parse_args())

    # get output object
    output = WebOutput()

    # get index
    revisions_index = lib_search.ThreadSafeRevisionsIndex(output.message)
    revisions_index.no_output = True

    # construct query
    if args['from'] or args['to']:
        date_range = "{0} TO {1}".format(args['from'] or '', args['to'] or '').strip()
        query = { "date": '[{0}]'.format(date_range) }
    else :
        query = {}

    # output the groups we're showing
    results = revisions_index.grouped_query(query, ['contributor','type'])
    output.add_result('contributor', format_grouped_totals(results))

    results = revisions_index.grouped_query(query, ['organization','type'])
    output.add_result('organization', format_grouped_totals(results))

    # add timinig
    seconds_elapsed = time.time() - start_time
    output.message('time','{0}'.format(format_duration(seconds_elapsed)))

    # output results
    output.write_json()


def format_grouped_totals(results):    
    group_totals = {}

    # get field/value pairs
    total = 0
    for fields, count in results.items():
        if isinstance(fields, str):
            field = field.replace('_', ' ') if field else 'none'
            group_totals[field] = count
        else:
            field1 = fields[0].replace('_', ' ') if fields[0] else 'none'
            field2 = fields[1].replace('_', ' ') if fields[1] else 'none'
            if field1 not in group_totals:
                group_totals[field1] = {}
            group_totals[field1][field2] = count
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



