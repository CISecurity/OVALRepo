__author__ = 'wmunyan'

import sys
import lib_repo
import lib_search
import os, os.path

def main():
    orphans = {}

    elements_index = lib_search.ElementsIndex(message)

    for elempath in lib_repo.get_element_paths_iterator():
        oval_id = lib_repo.path_to_oval_id(elempath)
        oval_ids = { oval_id }

        upstream_ids = elements_index.find_upstream_ids(oval_ids, set())
        downstream_ids = elements_index.find_downstream_ids(oval_ids, set())

        #message("INFO", "OVAL ID '%s' had %i upstream ids and %i downstream ids" % (oval_id, len(upstream_ids), len(downstream_ids)))

        if len(upstream_ids) == 0 and len(downstream_ids) == 0:
            message("INFO", "Found Orphan '%s'" % oval_id)
            orphans[oval_id] = elempath

    response = input("\n :::: Remove all orphans? (N[o] / y[es]): ")
    if response != 'y' and response != 'Y':
        return

    message("INFO", "\n\n")
    
    for ok in orphans.keys():
        message("INFO", "Deleting Orphan '%s'" % ok)
        os.remove(orphans[ok])

def message(label, message, silent=False):
    """ print a message """
    if not silent:
        sys.stdout.write('\r{0}: {1}\n'.format(label.upper(), message))

if __name__ == '__main__':
    main()