#!/usr/bin/env/ python3
""" Searches the index for duplicate oval ids

For usage information, please see the command line help:
    python3 find_duplicate_oval_ids.py -h

"""

import argparse, sys, time, pprint, re, os
import lib_search, lib_repo

def message(label, message):
    """ print a message """
    sys.stdout.write('\r{0}: {1}\n'.format(label.upper(), message))

def main():
    """ parse command line options and generate file """

    # parse command line options
    parser = argparse.ArgumentParser(description='Searches the index for duplicate oval ids')

    # get index
    elements_index = lib_search.ElementsIndex(message)


    all_oval_ids = dict()
    duplicate_oval_ids = dict()
    for document in elements_index.query():
        oval_id = document['oval_id']
        root_path = document['path'].replace(lib_repo.get_root_path(), '')
        
        if oval_id in all_oval_ids:
            if oval_id not in duplicate_oval_ids:
                duplicate_oval_ids[oval_id] = set()
                duplicate_oval_ids[oval_id].add(all_oval_ids[oval_id])
            duplicate_oval_ids[oval_id].add(root_path)

        all_oval_ids[oval_id] = root_path

    print('Found {0} duplicate OVAL IDs'.format(len(duplicate_oval_ids)))
    pprint.pprint(duplicate_oval_ids)

if __name__ == '__main__':
    main()
