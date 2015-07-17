#!/usr/bin/env/ python3
"""Identify all the elements that will be affected by a submission, whether that submission
is via a file or a pull request

Authors: Gunnar Engelbach <Gunnar.Engelbach@ThreatGuard.com>

For usage information, please see the command line help:
    python3 find_affected.py -h

TODO:
- TBD
"""


import argparse
import lib_search
import lib_git
import lib_oval
import lib_repo
import os


def main():
    verbose = False;
    
    parser = argparse.ArgumentParser(description='Uses a file or a diff of the local uncommitted changes to identify all items that could be affected.')
    options = parser.add_argument_group('Options')
    options.add_argument('-f', '--file', required=False, help='The name of the source file.  If not used the local git repository will be used as the source')
    options.add_argument('-v', '--verbose', required=False, action="store_true", help='Enable verbose messages')

    args = vars(parser.parse_args())

    if args['verbose']:
        verbose = True
    
    source = args['file']
    if source:
        if not os.path.isfile(source):
            print("\n## Error:  source file '{0}' not found.  No actions taken.\n".format(source))
            return
        if verbose:
            print("\n Looking for changed items in source file '{0}'".format(source))
        idlist = get_changed_ids_from_file(source)
    else:
        if verbose:
            print("\n Checking the local repository for uncommitted changes...")
        idlist = get_changed_ids_from_git()
        
    if not idlist or idlist is None or len(idlist) < 1:
        print("---  Action complete:  no changes found.\n")
        return
        
        
    #Find all downstream children -- that is, a search depth of one
    #Find all upstream users, all the way up to the definition
    
    #Sort the list:  definitions, then tests, objects, states, and variables
    #Show the list
    #Offer to build an OVAL file that contains all the changes
        
        
      
      
      
def get_changed_ids_from_git():
    try:
        changed_files = lib_git.get_uncommitted_oval()
        if not changed_files or changed_files is None:
            return None
        
        change_list = []
        for file in changed_files:
            change_list.add(lib_repo.path_to_oval_id(file))
            
        return change_list
    
    except Exception:
        if main.verbose:
            print("## Error while querying git for changes: ", format(Exception))
        return None
    
    
def get_changed_ids_from_file(source):
    if not source or source is None:
        return None


if __name__ == '__main__':
    main()
