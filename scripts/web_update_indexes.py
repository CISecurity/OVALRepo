#!/usr/bin/env/ python3
"""Updates indexes. Should be run one each time new OVAL content is published.

Authors: David Ries <ries@jovalcm.com>

For usage information, please see the command line help:
    python3 web_update_indexes.py -h

TODO:
- testing
"""

import argparse, sys, time, json
import lib_repo, lib_xml, lib_search


def main():
    """ parse command line options and generate file """
    start_time = time.time()

    # parse command line options
    parser = argparse.ArgumentParser(description='Updates indexes. Should be run one each time new OVAL content is published.')
    parser.add_argument('--nocache', required=False, action="store_true", help='Rebuild from scratch even if not necessary')
    args = vars(parser.parse_args())

    # get output object
    output = WebOutput()

    # get definitions index and update
    index = lib_search.ThreadSafeDefinitionsIndex(output.message)
    index.no_output = True
    index.update(args['nocache'])
    output.message('definitions','index updated')

    # get elements index and update
    index = lib_search.ThreadSafeElementsIndex(output.message)
    index.no_output = True
    index.update(args['nocache'])
    output.message('elements','index updated')

    # get elements index and update
    index = lib_search.ThreadSafeRevisionsIndex(output.message)
    index.no_output = True
    index.update(args['nocache'])
    output.message('revisions','index updated')

    # add timinig
    seconds_elapsed = time.time() - start_time
    output.message('time','{0}'.format(format_duration(seconds_elapsed)))

    # output results
    output.write_json()


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
            "MESSAGES": []
        }

    def message(self, label, message):
        """ add a message to output """
        self.output['MESSAGES'].append({ label.upper(): message })

    def write_json(self):
        print(json.dumps(self.output, sort_keys=True, indent=4))


if __name__ == '__main__':
    main()



