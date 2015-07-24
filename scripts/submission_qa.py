#!/usr/bin/env/ python3
"""Steps through all of the QA tasks needed for a submission and updates the local repository as necessary on success. 

Authors: Gunnar Engelbach <Gunnar.Engelbach@ThreatGuard.com>


TODO:
- Build each of the library calls necessary to complete all of the steps
- Use gitpython to do a commit and push if everything checks
- Prune out elements that don't represent a significant change
"""


import lib_search
import lib_git
import lib_repo
import lib_xml
import sys
import os
import re
import argparse
from lxml import etree
from xml.etree import ElementTree

import get_min_oval_version
from lib_oval import OvalDocument
from lib_oval import OvalElement


verbose = False
debug = False

def main():
    
    SCHEMA_VERSION = '5.11.1'
    global verbose
    global debug
    
    parser = argparse.ArgumentParser(description='Performs all of the identified QA tasks against an OVAL submission in the repository')
    output_options = parser.add_argument_group('verbosity options')
    output_options.add_argument('-v', '--verbose', default=False, action="store_true", help='Verbose progress messages')
    output_options.add_argument('-d', '--debug', default=False, action="store_true", help='Include debug information on errors')

    args = vars(parser.parse_args())

    if args['verbose']:
        verbose = True
        
    if args['debug']:
        debug = True
    
    
    # 1. Locate all uncommitted changes to the local repository
    if verbose:
        print("\n + 1:  looking for uncommitted changes")
    change_list = lib_git.get_uncommitted_oval()
    if change_list is None or len(change_list) < 1:
        print("\n-------- This update does not include any changes of significance --------")
        return


    # 1.1 Determine which of these changes are due to removed files    
    if verbose:
        print("   +++ Number of changed items to QA: {0}".format(len(change_list)))
    remove_list = find_removed_items(change_list)
    
    # 1.2 Issue warning (prompt to continue) if any of the changes are a deleted item
    if verbose:
        print("  + 1.2: Determining if any changes are deleted items...")
    if remove_list is not None and len(remove_list) > 0:
        print("\n  -------- The following files were removed as a part of this update --------\n")
        show_files(remove_list)
        # TODO:  Offer the option to inspect the OVALIDs in the removed files and 
        #    build a list of what items, if any, refer to them
        response = input("\n :: Accept these changes (N[o] / y[es] / s[how affected]): ")
        if response == 's' or response == 'S':
            show_affected(remove_list)
            response = input("\n :::: Accept these changes (N[o] / y[es]): ")
            if response != 'y' and response != 'Y':
                return
        elif response != 'y' and response != 'Y':
            return
        # 1.3 Don't include removed files as part of the update
        change_list = [file for file in change_list if file not in remove_list]
        
        
    elif verbose:
        print("    +++ No removed items found")
        
    

    # 2. Remove all changes that are semantically the same as existing elements (except for states)
    if verbose:
        print("\n + 2: Removing items that don't contain meaningful changes...")
    change_list = prune_unchanged_elements(change_list)
    
    # 2.1 If that means we have no changes left, there is nothing else to do
    if len(change_list) < 1:
        print("\n  ----- This update does not include any changes of significance")
        return
    print("\n  ---- Number of changed elements to process: {0}\n".format(len(change_list)))
    
    
    # 3. For each element in the list that is a definition, check:
    if verbose:
        print(" + 3: Checking correctness of definition metadata")
    def_list = [ path for path in change_list if lib_repo.get_element_type_from_path(path) == 'definition']
    if def_list is not None and len(def_list) > 0:
        if verbose:
            print("   +++ Number of definitions in this update: {0}".format(len(def_list)))
        for def_path in def_list:
            def_element = lib_xml.load_standalone_element(def_path)
        # 3.1 If this is an update, does it change any existing metadata?
        # 3.2 Check existence and accuracy of definition metadata (<status> and date)
        #  - DRAFT on new submission
        #  - INTERIM if updating a previous definition
        #  - ?
    elif verbose:
        print("   +++ No definitions to check")
    
    
    # 4. Schema validate the changes
    # First, generate an OVAL document
    if verbose:
        print("\n + 4: Schema validating changes...")
        
    schema_path = lib_repo.get_oval_def_schema(SCHEMA_VERSION)
    for element_file in change_list:
        try:
            lib_xml.schema_validate(element_file, schema_path, True)
        except Exception as e:
            print('    Schema validation failed:\n\t{0}'.format(e.message))
            print("\n ### Offending file {0}".format(element_file))
            return

    if verbose:
        print(" ++++ Schema validations passed")
        

    if verbose:
        print("\n + 5: Updating elements...")    
    e_index = lib_search.ElementsIndex(message)
    d_index = lib_search.DefinitionsIndex(message)

    # 5. On passing all of the above, make these changes for all elements:
    for path in change_list:
        oval_element = lib_xml.load_standalone_element(path)
    #  5.1 If it's a definition, determine and set the minimum schema version
        if lib_repo.get_element_type_from_path(path) == 'definition':
            mvt = get_min_oval_version.determine_def_min_version(path, d_index, e_index, False)
            min_schema = mvt['minimum_version']
            
    #  5.2 Set/update version numbers as necessary
    #    5.2.2 If this is an update, find the previous version and increment by one
    #        Otherwise, set it to 1
    #  5.3 For each element that is not using an OVALID in the CIS namespace:
    #      5.3.1 Set to a unique OVALID in the CIS namespace
    #      5.3.2 Update all references from the old OVALID
    #  5.4 Canonicalize all altered elements (if possible)
    #  5.5 Write the element, and remove the old if the path changed
        new_path = lib_repo.get_element_repository_path(oval_element)
        print("## Should write {0}".format(new_path))
#         save_element(oval_element, new_path)
        if new_path != path:
            print("### Should delete {0}".format(path))
#             os.remove(path)
    
    # 6. Prompt for a message to use for the commit
    # 6.1 Commit and push the changes
    
    return


def show_affected(file_list):
    """For a list of files, show all elements that reference them
    """
    
    if file_list is None or len(file_list) < 1:
        print("  ----- Empty file list.  Nothing is affected by that")
        return
    
    elements_index = lib_search.ElementsIndex(False)
    
    for file in file_list:
        ovalid = lib_repo.path_to_oval_id(file)
        print("\n=========== For item {0}:".format(ovalid))
        
        affected = elements_index.find_upstream_ids(ovalid, set(), depth_limit = 1)
        if affected is not None and len(affected) > 0:
            for affected_id in affected:
                print("   ---> {0}".format(affected_id))
        else:
            print("   **** No affected items found ****")


    
def message(label, message):
    """ print a message """
    sys.stdout.write('\r   >>> {0}: {1}\n'.format(label.upper(), message))
    
    
def find_removed_items(changes):
    
    if changes is None or len(changes) < 1:
        return None
        
    return [file for file in changes if not os.path.exists(file)]


def save_element(element, path):
    
    if element is None:
        return
    
    if not path or path is None:
        return
    
    dir = os.path.dirname(path)
    if not os.path.isdir(dir):
        os.makedirs(dir, 755, True)
        
        
    try:
        namespace = element.getNamespace()
        indent(element)
        # Create a new ElementTree with this element as the root
        tree = etree.ElementTree(element)
        # Write the full tree to a file
        tree.write(file_or_filename = path, encoding="UTF-8", method="xml", default_namespace = namespace)
        return True
    except:
        return False


def indent(elem, level=0):
    i = "\n" + level*"  "
    if len(elem):
        if not elem.text or not elem.text.strip():
            elem.text = i + "  "
        if not elem.tail or not elem.tail.strip():
            elem.tail = i
        for elem in elem:
            indent(elem, level+1)
        if not elem.tail or not elem.tail.strip():
            elem.tail = i
    else:
        if level and (not elem.tail or not elem.tail.strip()):
            elem.tail = i    
    
    
    
def schema_validate(oval_tree, schema_version):
        
    global verbose
    
    schema_path = lib_repo.get_oval_def_schema(schema_version)
    try:
        lib_xml.schema_validate(oval_tree, schema_path)
    except Exception as e:
        print('    Schema validation failed:\n\t{0}'.format(e.message))
        return False

    # schematron validate
    print('info','Performing schematron validation')
    try:
        lib_xml.schematron_validate_tree(oval_tree, schema_path)
    except Exception as e:
        print('    Schematron validation failed:\n\t{0}'.format('\n\t'.join(e.messages)))
        return False;
        
    return True



def build_comprehensive_oval_document(changes):
    """
    Builds an XML tree which contains all elements affected by the changes
    """
    
    global debug
    global verbose
    
    if changes is None or len(changes) < 1:
        return None
    
    if verbose:
        print("    ---- Getting OVAL ID's for all changed files...")
    oval_ids_changed = { lib_repo.path_to_oval_id(filepath) for filepath in changes }

    # find all upstream ids
    if verbose:
        print("    ---- Locating parent definitions for all changed elements...")
    elements_index = lib_search.ElementsIndex(False)
    upstream_ids = elements_index.find_upstream_ids(oval_ids_changed, set())

    # filter affected to definition ids
    affected_def_ids = { oval_id for oval_id in upstream_ids if lib_repo.get_element_type_from_oval_id(oval_id) == 'definition' }

    # get all downstream elements
    if verbose:
        print("    ---- Resolving all elements needed to build comprehensive document...")
    oval_ids = elements_index.find_downstream_ids(affected_def_ids, affected_def_ids)
    file_paths = elements_index.get_paths_from_ids(oval_ids)
    
    if verbose:
        print("    ---- Importing separate elements into comprehensive document....")
    oval = OvalDocument(None)
    for path in file_paths:
        element = OvalElement.fromStandaloneFile(path)
        if element is None:
            print (":::: None from path: ", path)
            return None
        oval.addElement(element, True)
                
    return etree.fromstring(oval.to_string())

    # add each OVAL definition to generator
#     OvalGenerator = lib_xml.OvalGenerator(False)
#     for file_path in file_paths:
#         element_type = lib_repo.get_element_type_from_path(file_path)
#         xml_text = get_element_text(file_path)
#         if xml_text is not None:
#             OvalGenerator.queue_element(element_type, xml_text)
#         
#     try:
#         return etree.fromstring(OvalGenerator.to_string())
#     except Exception:
#         if debug:
#             sys.stdout.write(OvalGenerator.to_string())
            
    return None
    
def get_element_text(path):
    
    if path is None:
        return None
    
    if not os.path.isfile(path):
        return None
    
    
    tree = etree.parse(path)
    root = tree.getroot()
    return str(etree.tostring(root))
#     return re.sub('^', '\t\t', xml, 0, re.MULTILINE)
    
    
    
def prune_unchanged_elements(changes):
    """Remove items from the list that do not contain any significant differences.
    <state> elements are always considered significant
    """
    
    #TODO
    return changes

#     change_list = []
#     
#     if changes is None or len(changes) < 1:
#         return change_list
#     
#     for file in changes:
#         # If this is a new element make sure nothing else in the repository does the same thing
#         # Otherwise, compare it to the old version to see if there's any important changes
#         # A new state is always considered to be significant.
#         # Get the old version, if it exists
#         
#         # If it doesn't exist then this is a significant change
#         left = lib_xml.load_standalone_element(file)
# 
#         # Compare the elements
#         if lib_xml.get_element_change_status(left, right):
#             change_list.add(file)
#             
#     return change_list


def show_files(file_list):
    """Take a list of file paths and format them to the console"""
    
    if file_list is None or len(file_list) < 1:
        print("    No files")
        return
    
    for file in file_list:
        pos = file.index("repository")
        if pos > 0:
            pos = pos + 11
            if len(file) > pos:
                print("    {0}".format(file[pos:]))
            else:
                print("    {0}".format(file))
        else:
            print("    {0}".format(file))
        
        
if __name__ == '__main__':
    main()
        