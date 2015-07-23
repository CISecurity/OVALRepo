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
from lxml import etree



def main():
    
    SCHEMA_VERSION = '5.11.1'
    
    

    # Issue warning (prompt to continue) if any of the changes are a deleted item
    remove_list = lib_git.get_removed_files()

    # Locate all uncommitted changes to the local repository
    change_list = lib_git.get_uncommitted_oval()
    
    if change_list is not None and len(change_list) > 0:
        print("---- The following files were removed as a part of this update:")
        show_files(change_list)
        response = input("\n :: Accept these changes (y/N): ")
        if response != 'y' and response != 'Y':
            return
        
    # Don't include removed files as part of the update
    change_list = [file for file in change_list if file not in remove_list]
    

    # Remove all changes that are semantically the same as existing elements (except for states)
    change_list = prune_unchanged_elements(change_list)
    
    if len(change_list) < 1:
        print("\n----- This update does not include any changes of significance")
        return
    
    
    # For each item that actually changed, validate it
    # First, generate an OVAL document
    oval_tree = build_comprehensive_oval_document(change_list)
    if oval_tree is None:
        print("\n#### Error:  Unable to construct an OVAL document for this change set")
        return

    # Then do the validation    
    #  - Schema
    #  - Schematron
    #  - Repository Schema
    if not schema_validate(oval_tree, SCHEMA_VERSION):
        print("### Error:  does not pass validation")
        return
    
    
    # Check existence and accuracy of definition metadata (<status> and date)
    #  - DRAFT on new submission
    #  - INTERIM if updating a previous definition
    #  - ?
    
    # If this is an update, does it change any existing metadata?
    
    # On passing all of the above, make these changes:
    #  - Set/update version numbers as necessary
    #  - If it's a definition, determine and set the minimum schema version
    #  - For each element that is not using an OVALID in the CIS namespace:
    #      - Set to a unique OVALID in the CIS namespace
    #      - Update all references to the old OVALID
    #  - Canonicalize all altered elements (if possible)
    #  - Verify the file location in the repository and move if necessary
    
    
    
def schema_validate(oval_tree, schema_version):
        
    schema_path = lib_repo.get_oval_def_schema(schema_version)
    print('  Performing schema validation...')
    try:
        lib_xml.schema_validate_tree(oval_tree, schema_path)
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
        