#!/usr/bin/env/ python3
""" Iterates over the repository file system and performs an index query for the path, emitting paths that do not have a corresponding index entry. """

import argparse, sys, time, pprint, os
import lib_search, lib_repo

def message(label, message):
    """ print a message """
    sys.stdout.write('\r{0}: {1}\n'.format(label.upper(), message))

def main():

    # get index
    elements_index = lib_search.ElementsIndex(message)

    for element_type in ['definitions', 'objects', 'states', 'tests', 'variables']:
        for root, dirs, files in os.walk(os.path.join(lib_repo.get_repository_root_path(), element_type)):
            for name in files:
                full_path = os.path.join(root,name)
                message('info','Searching index for path {0}'.format(full_path))
                documents = elements_index.query({ 'path': full_path })

                if len(documents) == 0:
                    message('error',"File {0} has no corresponding index entry".format(full_path))

if __name__ == '__main__':
    main()
