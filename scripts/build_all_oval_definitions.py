#!/usr/bin/env/ python3
"""Builds all OVAL definitons in the repository.

Authors: David Ries <ries@jovalcm.com>

For usage information, please see the command line help:
    python3 build_all_oval_definitions.py -h

TODO:
- TBD
"""

import argparse, sys, time, cProfile
import lib_repo, lib_xml, lib_search


def main():
    """ parse command line options and generate file """
    start_time = time.time()

    # parse command line options
    parser = argparse.ArgumentParser(description='Builds all OVAL definitons in the repository.')
    parser.add_argument('-l', '--limit', nargs='?', default="0", type=int, help='limits number of definitions that will be built)')
    args = vars(parser.parse_args())

    # get indexes
    definitions_index = lib_search.DefinitionsIndex(message)
    elements_index = lib_search.ElementsIndex(message)

    # create generator, build in memory b/c smallish files
    OvalGenerator = lib_xml.OvalGenerator(message)
    OvalGenerator.use_file_queues = False

    i_file = 0
    i_limit = args['limit']
    for defpath in lib_repo.get_definition_paths_iterator():
        i_file = i_file + 1
        if i_limit > 0 and i_file > i_limit:
            break

        def_id = lib_repo.path_to_oval_id(defpath)
        message('info','Building file {0} for {1}.'.format(i_file, def_id))

        # add all downstream element ids
        def_ids = set([def_id])
        oval_ids = elements_index.find_downstream_ids(def_ids, def_ids)
        file_paths = elements_index.get_paths_from_ids(oval_ids)

        # add each OVAL definition to generator
        for file_path in file_paths:
            element_type = lib_repo.get_element_type_from_path(file_path)
            OvalGenerator.queue_element_file(element_type, file_path)

        # write output file
        outfile = './tmp/gen.{0}'.format(lib_repo.oval_id_to_path(def_id))
        OvalGenerator.to_file(outfile)

    seconds_elapsed = time.time() - start_time
    message('info','Completed in {0}!'.format(format_duration(seconds_elapsed)))


def format_duration(seconds):
    """ format a duration in seconds """
    hours = int(seconds // 3600)
    seconds = seconds - (hours * 3600)
    minutes = int(seconds // 60)
    seconds = int(seconds - (minutes * 60))
    return '{0:02d}:{1:02d}:{2:02d}'.format(hours, minutes, seconds)


def message(label, message):
    """ print a message """
    sys.stdout.write('\r{0}: {1}\n'.format(label.upper(), message))
    

if __name__ == '__main__':
    main()



