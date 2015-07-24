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
from lxml import etree
import get_min_oval_version



def main():
    
    SCHEMA_VERSION = '5.11.1'
    
    
    # 1. Locate all uncommitted changes to the local repository
    change_list = lib_git.get_uncommitted_oval()

    # 1.1 Determine which of these changes are due to removed files    
    remove_list = find_removed_items(change_list)

    
    # 1.2 Issue warning (prompt to continue) if any of the changes are a deleted item
    if remove_list is not None and len(remove_list) > 0:
        print("---- The following files were removed as a part of this update:")
        show_files(change_list)
        # TODO:  Offer the option to inspect the OVALIDs in the removed files and 
        #    build a list of what items, if any, refer to them
        response = input("\n :: Accept these changes (y/N): ")
        if response != 'y' and response != 'Y':
            return
        
    # 1.3 Don't include removed files as part of the update
    change_list = [file for file in change_list if file not in remove_list]
    

    # 2. Remove all changes that are semantically the same as existing elements (except for states)
    change_list = prune_unchanged_elements(change_list)
    
    # 2.1 If that means we have no changes left, there is nothing else to do
    if len(change_list) < 1:
        print("\n----- This update does not include any changes of significance")
        return
    
    
    # 3. For each element in the list that is a definition, check:
    def_list = [ path for path in change_list if lib_repo.get_element_type_from_path(path) == 'definition']
    for def_path in def_list:
        def_element = lib_xml.load_standalone_element(def_path)
    # 3.1 If this is an update, does it change any existing metadata?
    # 3.2 Check existence and accuracy of definition metadata (<status> and date)
    #  - DRAFT on new submission
    #  - INTERIM if updating a previous definition
    #  - ?
    
    
    # 4. Schema validate the changes
    # First, generate an OVAL document
    oval_tree = build_comprehensive_oval_document(change_list)
    if oval_tree is None:
        print("\n#### Error:  Unable to construct an OVAL document for this change set")
        return

    # Then do the validation    
    if not schema_validate(oval_tree, SCHEMA_VERSION):
        print("### Error:  does not pass validation")
        return
        
    
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
        save_element(oval_element, new_path)
        if new_path != path:
            os.remove(path)
    
    # 6. Prompt for a message to use for the commit
    # 6.1 Commit and push the changes


    
def message(label, message):
    """ print a message """
    sys.stdout.write('\r{0}: {1}\n'.format(label.upper(), message))
    
    
def find_removed_items(changes):
    # TODO
    return None


def save_element(element, path):
    
    if not element or element is None:
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
        
    schema_path = lib_repo.get_oval_def_schema(schema_version)
    print('  Performing schema validation...')
    try:
        lib_xml.schema_validate(oval_tree, schema_path)
        print('Schema validation successful')
    except lib_xml.SchemaValidationError as e:
        print('error','Schema validation failed:\n\t{0}'.format(e.message))
        return False

    # schematron validate
    print('info','Performing schematron validation')
    try:
        lib_xml.schematron_validate_tree(oval_tree, schema_path)
        print('info','Schematron validation successful')
    except lib_xml.SchematronValidationError as e:
        print('error','Schematron validation failed:\n\t{0}'.format('\n\t'.join(e.messages)))



def build_comprehensive_oval_document(changes):
    """
    Builds an XML tree which contains all elements affected by the changes
    """
    
    if changes is None or len(changes) < 1:
        return None
    
    oval_ids_changed = { lib_repo.path_to_oval_id(filepath) for filepath in changes }

    # find all upstream ids
    elements_index = lib_search.ElementsIndex(False)
    upstream_ids = elements_index.find_upstream_ids(oval_ids_changed, set())

    # filter affected to definition ids
    affected_def_ids = { oval_id for oval_id in upstream_ids if lib_repo.get_element_type_from_oval_id(oval_id) == 'definition' }

    # get all downstream elements
    oval_ids = elements_index.find_downstream_ids(affected_def_ids, affected_def_ids)
    file_paths = elements_index.get_paths_from_ids(oval_ids)

    # add each OVAL definition to generator
    OvalGenerator = lib_xml.OvalGenerator(False)
    for file_path in file_paths:
        element_type = lib_repo.get_element_type_from_path(file_path)
        OvalGenerator.queue_element_file(element_type, file_path)
        
        
    return etree.fromstring(OvalGenerator.to_string())
    
    
    
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
        print("    {0}".format(file))
        
        
if __name__ == '__main__':
    main()
        