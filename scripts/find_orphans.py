#!/usr/bin/env/ python3
""" Searches the index for test, object, state and variable elements that are not used 
by any definitions and optionally deletes them.

"""

__author__ = 'wmunyan'

import sys, time
import lib_repo
import lib_search
import os, os.path

def main():
    start_time = time.time()

    tracking = dict()
    elements_index = lib_search.ElementsIndex(message)
    
    # getting all definitions
    all_def_ids = set()
    message('info', 'getting all definitions')
    for defpath in lib_repo.get_definition_paths_iterator():
        all_def_ids.add(lib_repo.path_to_oval_id(defpath))
    message('info', 'found {0} definitions'.format(len(all_def_ids)))

    # getting all element ids downstream from any definition
    message('info', 'getting all downstream element ids')
    all_downstream_ids = elements_index.find_downstream_ids(all_def_ids)
    message('info', 'found {0} downstream element ids'.format(len(all_downstream_ids)))

    # get elements that aren't in all_downstream_ids
    message('info', 'checking all elements')
    cur_element_type = None
    for elempath in lib_repo.get_element_paths_iterator():
        oval_id = lib_repo.path_to_oval_id(elempath)
        element_type = lib_repo.get_element_type_from_oval_id(oval_id)

        # skip definitions... we're only pruning child elements
        if element_type == 'definition':
            continue

        # write status msg
        if element_type != cur_element_type:
            cur_element_type = element_type
            i_element_type = 0
        i_element_type = i_element_type + 1
        sys.stdout.write('Analyzing {0}s: {1}                            \r'.format(cur_element_type, i_element_type))
        sys.stdout.flush()

        # it's an orphan if it's not downsteam of a definition
        track_as = 'orphan' if oval_id not in all_downstream_ids else 'in_use'
        if not track_as in tracking:
            tracking[track_as] = dict()
        if not element_type in tracking[track_as]:
            tracking[track_as][element_type] = set()
        tracking[track_as][element_type].add(oval_id)

    sys.stdout.write('                                                               \r'.format(cur_element_type, i_element_type))
    sys.stdout.flush()

    # generate report
    report = []
    for track_as, elements_by_type in tracking.items():
        report.append('\t{0}:'.format(track_as.replace('_', ' ').capitalize()))
        for element_type, oval_ids in elements_by_type.items():
            report.append('\t\t{0} {1}s'.format(len(oval_ids), element_type))
    message('found', '\n'.join(report))

    response = input("\n :::: Remove all orphans? (N[o] / y[es]): ")
    if response.lower() == 'y':
        orphan_ids = set()
        for element_type, oval_ids in tracking['orphan'].items():
            orphan_ids.update(oval_ids)
        
        file_paths = elements_index.get_paths_from_ids(orphan_ids)
        for file_path in file_paths:
            message("INFO", "Deleting Orphan '%s'" % os.path.basename(file_path))
            os.remove(file_path)

    seconds_elapsed = time.time() - start_time
    message('info','Completed in {0}!'.format(format_duration(seconds_elapsed)))


def get_non_def_element_paths_bottom_up():
    """ Returns an iterator of all non-definition elements OVAL element paths. """
    elements_root = os.path.join(lib_repo.get_repository_root_path())

    for element_type in ['variables', 'states', 'objects', 'tests']:
        for dirpath, dirnames, filenames in os.walk(os.path.join(elements_root, element_type)):
            for filename in filenames:
                if filename.endswith('.xml'):
                    yield os.path.join(dirpath, filename)


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