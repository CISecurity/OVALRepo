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
import argparse
from lxml import etree
from whoosh.query import Wildcard

from lib_oval import OvalDocument
from lib_oval import OvalElement


verbose = False
debug = False
autoaccept = False
NS_DEFAULT  = {None: "http://oval.mitre.org/XMLSchema/oval-definitions-5"}
NS_MAP = { None: "http://oval.mitre.org/XMLSchema/oval-definitions-5", "oval": "http://oval.mitre.org/XMLSchema/oval-common-5",
            "xsi": "http://www.w3.org/2001/XMLSchema-instance" }


def main():
    
    SCHEMA_VERSION = '5.11.1'

    global verbose
    global debug
    global autoaccept
    
    parser = argparse.ArgumentParser(description='Performs all of the identified QA tasks against an OVAL submission in the repository')
    output_options = parser.add_argument_group('verbosity options')
    output_options.add_argument('-v', '--verbose', default=False, action="store_true", help='Verbose progress messages')
    output_options.add_argument('-d', '--debug', default=False, action="store_true", help='Include debug information on errors')
#     output_options.add_argument('-a', '--autoaccept', default=False, action="store_true", help='Automatically continue without prompting when it is safe to do so')

    args = vars(parser.parse_args())

    if args['verbose']:
        verbose = True
        
    if args['debug']:
        debug = True
        
#     if args['autoaccept']:
#         autoaccept = True
    
    
    # 1. Locate all uncommitted changes to the local repository
    if verbose:
        print("\n + 1:  looking for uncommitted changes")
    change_list = lib_git.get_uncommitted_oval()
    if change_list is None or len(change_list) < 1:
        print("\n-------- This update does not include any changes of significance --------\n")
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
        print("\n + 5: Updating elements...")    

    # 5. On passing all of the above, make these changes for all elements:
    # First, build the schema path cache
    element_index = lib_search.ElementsIndex(message)
    schema_path_cache = {}
    for schema_version in lib_repo.get_schema_versions():
        schema_path_cache[schema_version] = lib_repo.get_oval_def_schema(schema_version)


    affected_elements = set()
    update_elements = {}
    for path in change_list:
        oval_element = lib_xml.load_standalone_element(path)
        update_elements[path] = oval_element
        #  5.1 If it's a definition, determine and set the minimum schema version
        if lib_repo.get_element_type_from_path(path) == 'definition':
            min_schema = determine_definition_minimum_schema_version(path, element_index, schema_path_cache)
            if min_schema and min_schema is not None:
                if verbose:
                    print("  ---- Setting min schema version for '{0}' to '{1}'".format(os.path.basename(path), min_schema))
                set_minimum_schema_version(oval_element, min_schema)
        
        #  5.2 For each element that is not using an OVALID in the CIS namespace:
        ovalid = oval_element.get("id")
        is_update = True
        if not is_repository_id(ovalid):
            is_update = False
            element_type = lib_repo.get_element_type_from_path(path)
            new_id = generate_next_ovalid(element_type, element_index)
            oval_element.set("id", new_id)
        #      5.2.1 Set to a unique OVALID in the CIS namespace
        #      5.2.2 Update all references from the old OVALID
        
        #  5.3 Set/update version numbers as necessary.  The previous step can be used to determine new vice update
        if is_update:
        #    5.3.1 If this is an update, find the current version and increment by one
            increment_version(oval_element)
            # Find all upstream elements and add them, as unique, to the list of items to change
            affected_elements = set().union(affected_elements, find_affected(ovalid))
        else:
        #        Otherwise, set it to 1
            oval_element.set("version", "1")
        #  5.4 Canonicalize all altered elements (if possible)
        
    # Now that we know all the elements affected by an update we can increment their IDs once
    for file in affected_elements:
        oval_element = lib_xml.load_standalone_element(file)
        if oval_element and oval_element is not None:
            increment_version(oval_element)
            update_elements[file] = oval_element
    
    
    #  6 Write the element, and remove the old if the path changed
    print("\n=============== Complete ===================")
    print("  All automated checks have completed successfully, but the following")
    print("     manual checks need to be made prior to accepting this submission:")
    print("  * Metadata for definitions is complete and accurate")
    print("  * Existing metadata has not been changed")
    print("  * Contains a meaningful change")
    print("  * Does not contain any harmful actions or unacceptable language")
    response = input("\n :::: Save all changes now? (N[o] / y[es]): ")
    if response != 'y' and response != 'Y':
        return

    
    for path in update_elements:
        oval_element = update_elements[path]
        if not oval_element or oval_element is None:
            continue
        new_path = lib_repo.get_element_repository_path(oval_element)
        if verbose:
            print("## Writing {0}".format(new_path))
        save_element(oval_element, new_path)
        
        if new_path != path:
            if verbose:
                print("### Deleting {0}".format(path))
            os.remove(path)
            
    
    # 7. Prompt for a message to use for the commit
    # 7.1 Commit and push the changes
    
    return

# ========================= END OF MAIN() =========================#



def find_affected(ovalid, element_index):

    if not ovalid or ovalid is None:
        return set()
    
    oval_id_list = element_index.find_upstream_ids(ovalid, ovalid)
    
    if oval_id_list is None or len(oval_id_list) < 1:
        return set()
    
    affected_items = set()
    for affected_id in oval_id_list:
        path = lib_repo.oval_id_to_path(affected_id)
        oval_element = lib_xml.load_standalone_element(path)
        if not oval_element or oval_element is None:
            continue
        affected_items[path] = oval_element
        
    return affected_items
    
    

def increment_version(oval_element):
    
    if not oval_element or oval_element is None:
        return

    version = oval_element.get("version")
    if not version or version is None:
        version = "1"
    else:
        version = str(int(version) + 1)
        
    oval_element.set("version", version)



def generate_next_ovalid(element_type, element_index):
    # Find the largest index for this element type
    # Increment it by one
    
    type_key = "def"
    if element_type == "state":
        type_key = "ste"
    elif element_type == "test":
        type_key = "tst"
    elif element_type == "object":
        type_key = "obj"
    elif element_type == "variable":
        type_key = "var"

    search_term = "oval_*_{0}_*".format(type_key)        
    index_searcher = element_index.get_searcher();
    query = Wildcard("oval_id", search_term)
    matching = index_searcher.search(query, limit=None)

    index = find_largest_index(matching) + 1
    
    # Past the parts together to create the ID
    return "oval:org.cisecurity:{0}:{1}".format(type_key, index)


def find_largest_index(oval_id_list):
    
    if oval_id_list is None or len(oval_id_list) < 1:
        return 0
    
    max_index = 0
    for oval_id in oval_id_list:
        position = oval_id.rfind(':')
        if position < 0:
            continue
        
        try:
            position = position + 1
            index = int(oval_id[position:])
            if index > max_index:
                max_index = index
        except:
            continue
    
        
    return max_index
    
    
def is_repository_id(ovalid):
    
    if not ovalid or ovalid is None:
        return False
    
    try:
        if ovalid.index(":org.cisecurity:") > 0:
            return True
        if ovalid.index(":org.mitre.oval:") > 0:
            return True
    except:
        return False
    
    return False



def set_minimum_schema_version(oval_element, min_schema):
    
    global NS_MAP
    global NS_DEFAULT
    
    if not oval_element or oval_element is None:
        return None
    
    if not min_schema or min_schema is None:
        return None
    
    
    min_element = oval_element.find("def:metadata/def:oval_repository/def:min_schema_version", NS_MAP)
    if not min_element or min_element is None:
        # Find/create oval_repository element
        repo_element = oval_element.find("def:metadata/def:oval_repository")
        if not repo_element or repo_element is None:
            # Find/create metadata element
            meta_element = oval_element.find("def:metadata", NS_MAP)
            if not meta_element or meta_element is None:
                meta_element = etree.SubElement(oval_element, "metadata", NS_DEFAULT)
                
            repo_element = etree.SubElement(meta_element, "oval_repository", NS_DEFAULT)
            
        min_element = etree.SubElement(repo_element, "min_schema_version", NS_DEFAULT)
        
    min_element.text = min_schema



def determine_definition_minimum_schema_version(defpath, index, schema_path_cache):

    if not defpath or defpath is None:
        return None
    
    if not os.path.isfile(defpath):
        return None
    

    minimum_version=None

    # get id of oval definition
    def_id = lib_repo.path_to_oval_id(defpath)

    # add all downstream element ids
    def_ids = set([def_id])
    oval_ids = index.find_downstream_ids(def_ids, def_ids)
    file_paths = index.get_paths_from_ids(oval_ids)

    # create generator that builds files in memory (these are small)
    OvalGenerator = lib_xml.OvalGenerator(message)
    OvalGenerator.use_file_queues = False

    # add each OVAL definition to generator
    for file_path in file_paths:
        element_type = lib_repo.get_element_type_from_path(file_path)
        OvalGenerator.queue_element_file(element_type, file_path)

    # parse defintion, get ref to schema_version element
    tree = etree.fromstring(OvalGenerator.to_string())
    schema_version_element = tree.find('.//oval:schema_version', { 'oval': 'http://oval.mitre.org/XMLSchema/oval-common-5' })

    for schema_version in lib_repo.get_schema_versions():
        # update schema version in tree
        schema_version_element.text = schema_version

        # test of definitions file validates against current schema
        try:
            lib_xml.schema_validate(tree, schema_path_cache[schema_version])
            minimum_version = schema_version
        except lib_xml.SchemaValidationError as e:
            break;

    return minimum_version


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
    print("\n####--- prune_unchanged_elements not currently doing anything")
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
        