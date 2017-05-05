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
from xml.etree import ElementTree as ET
from whoosh.query import Wildcard
from whoosh.query import Regex
from whoosh.query import Prefix

import lib_oval
from lib_oval import OvalDocument
from lib_oval import OvalElement


verbose = False
debug = False
autoaccept = False
id_cache_list = {'def': None, 'tst': None, 'obj': None, 'ste': None, 'var': None}
NS_DEFAULT  = {None: "http://oval.mitre.org/XMLSchema/oval-definitions-5"}
NS_DEFINITION  = {'def': "http://oval.mitre.org/XMLSchema/oval-definitions-5"}
NS_MAP = {
    None: "http://oval.mitre.org/XMLSchema/oval-definitions-5",
    "oval": "http://oval.mitre.org/XMLSchema/oval-common-5",
    "xsi": "http://www.w3.org/2001/XMLSchema-instance"
}


def main():
    
    SCHEMA_VERSION = '5.11.2'

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
    
    # Grab some things we're going to need later
    # First, build the schema path cache
    element_index = lib_search.ElementsIndex(message)
    schema_path_cache = {}
    for schema_version in lib_repo.get_schema_versions():
        schema_path_cache[schema_version] = lib_repo.get_oval_def_schema(schema_version)

    
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
        valid_metadata = 1
        if verbose:
            print("   +++ Number of definitions in this update: {0}".format(len(def_list)))
        for def_path in def_list:
            def_element = lib_xml.load_standalone_element(def_path)

            ode = lib_oval.OvalElement(def_element)
            od  = lib_oval.OvalDefinition(ode.getElement())

            def_id = od.getId()

        # 3.1 If this is an update, does it change any existing metadata?
        # 3.2 Check existence and accuracy of definition metadata (<status> and date)
        #  - INITIAL SUBMISSION or DRAFT on new submission
        #  - INTERIM if updating a previous definition
        #  - ?

            # no <dates> - invalid
            # @version == 0:
            #   no <submitted> - invalid
            #   <status_change>s > 0 - invalid
            #   <status> != "INITIAL SUBMISSION" - invalid
            # @ version > 0:
            #   last <status_change> != <status> - invalid
            def_status_change = od.get_last_status_change()
            if def_status_change["Version"] == "0":
                if "Submitted" not in def_status_change or def_status_change["Submitted"] is None:
                    print("   ++++ Definition ID %s is NOT valid:" % def_id)
                    print("    - New definitions must contain a submitted element")
                    valid_metadata = 0

                if def_status_change["StatusChange"]:
                    print("   ++++ Definition ID %s is NOT valid:" % def_id)
                    print("    - New definitions should not contain a status change element")
                    valid_metadata = 0

                if def_status_change["Status"] != "INITIAL SUBMISSION":
                    print("   ++++ Definition ID %s is NOT valid:" % def_id)
                    print("    - New definitions must have a status of INITIAL SUBMISSION")
                    valid_metadata = 0
            else:
                defstatus = def_status_change["Status"]
                lscstatus = "INVALID"
                lsc = def_status_change["StatusChange"]
                if (lsc and lsc["Status"]):
                    lscstatus = def_status_change["StatusChange"]["Status"]

                if (defstatus != lscstatus):
                    print("   ++++ Definition ID %s is NOT valid:" % def_id)
                    print("    - Last status change (%s) does not match definition status (%s)" % (lscstatus, defstatus))
                    valid_metadata = 0

        if valid_metadata == 0:
            print("\n   ++++ Definition Metadata is Invalid.  Exiting...")
            return

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
            #print("\n ### Offending file {0}".format(element_file))
            #print('    Schema validation failed:')
            print("\n ### Offending file {0}".format(element_file))
            return

    if verbose:
        print(" ++++ Schema validations passed")
        print("\n + 5: Updating elements...")    

    # 5. On passing all of the above, make these changes for all elements:


    oval_id_map = {}
    affected_elements = set()
    update_elements = {}
    non_repo_id_references = []
    for path in change_list:
        oval_element = lib_xml.load_standalone_element(path)

        # get all *_refs attributes
        attribute_id_refs = oval_element.xpath("//@*[name()='definition_ref' or name()='test_ref' or name()='object_ref' or name()='state_ref' or name()='var_ref']")
        
        # get filter, object_reference
        text_id_refs = oval_element.xpath("//*[local-name()='filter' or local-name()='object_reference' or local-name()='var_ref']/text()", smart_strings=False)
        
        # combine, unique
        #id_refs = []
        id_refs = attribute_id_refs + text_id_refs
        for id_ref in id_refs:
            if not is_repository_id(id_ref):
                non_repo_id_references.append(id_ref)

        update_elements[path] = oval_element
        #  5.1 If it's a definition, determine and set the minimum schema version
        ovalid = oval_element.get("id")
        if verbose:
            print("\n  ---- Processing submitted element {0}".format(ovalid))
            
        if lib_repo.get_element_type_from_path(path) == 'definition':
            if verbose:
                print("    --- Is a definition:  determining minimum schema version")
#             min_schema = determine_definition_minimum_schema_version(path, element_index, schema_path_cache)
            min_schema = determine_definition_minimum_schema_version(oval_element, element_index, schema_path_cache)
            if min_schema and min_schema is not None:
                if verbose:
                    print("    ---- Determined minimum schema version to be {0}".format(min_schema))
                set_minimum_schema_version(oval_element, min_schema)
        
        #  5.2 For each element that is not using an OVALID in the CIS namespace:
        is_update = True
        if not is_repository_id(ovalid):
            is_update = False
            element_type = lib_repo.get_element_type_from_path(path)
            new_id = generate_next_ovalid(element_type, element_index)
            if verbose:
                print("    ---- Change submission ID from '{0}' to '{1}'".format(ovalid, new_id))
            oval_element.set("id", new_id)

            #      5.2.1 Set to a unique OVALID in the CIS namespace
            #      5.2.2 Update all references from the old OVALID
            oval_id_map[ovalid] = new_id
        
        #  5.3 Set/update version numbers as necessary.  The previous step can be used to determine new vice update
        if is_update:
        #    5.3.1 If this is an update, find the current version and increment by one
            if verbose:
                print("     ---- Is an update:  incrementing version")
            increment_version(oval_element)
            # Find all upstream elements and add them, as unique, to the list of items to change
            if lib_repo.get_element_type_from_path(path) != 'definition':
                if verbose:
                    print("     ---- Not a definition.  Finding affected upstream elements...")
                affected = find_affected(ovalid, element_index)
                if affected is not None and len(affected) > 0:
                    if verbose:
                        print("     ---- Number of elements affected: {0}".format(len(affected)))
                    affected_elements = set().union(affected_elements, affected)
                else:
                    if verbose:
                        print("     >>>>> Warning: found no affected elements for this update.  Possible orphan.")
        else:
        #        Otherwise, set it to 1
            oval_element.set("version", "1")
        #  5.4 Canonicalize all altered elements (if possible)
        
    orphan_references = False
    non_updated_non_repo_id_references = []
    if len(non_repo_id_references) > 0:
        print("\n --- Discovered {0} non-repo ID references:".format(len(non_repo_id_references)))
        for nrir in non_repo_id_references:
            if not nrir in oval_id_map:
                print(nrir)
                orphan_references = True

    if orphan_references:
        print("     >>>>> ERROR: Non-Repository OVAL IDs were found in referenced elements but not in the PRs change list.  Ensure any new OVAL ID references are also part of the pull request.  EXITING.")
        return

    # Now that we know all the elements affected by an update we can increment their IDs once
    if len(affected_elements) > 0:
        if verbose:
            print("\n ------- This update affects {0} upstream elements:  incrementing the version number for each...".format(len(affected_elements)))
        for file in affected_elements:
            print("\n ----------- Loading standalone element for path {0}".format(file))
            oval_element = lib_xml.load_standalone_element(file)
            if oval_element is not None:
                increment_version(oval_element)
                #oval_element = normalize_ids(oval_element, oval_id_map)
                update_elements[file] = oval_element
    
    
    #  6 Write the element, and remove the old if the path changed
    print("\n=============== Complete ===================")
    print("All automated checks have completed successfully, but the following")
    print(" manual checks need to be made prior to accepting this submission:")
    print("   * Metadata for definitions is complete and accurate")
    print("   * Existing metadata has not been changed")
    print("   * Contains a meaningful change")
    print("   * Does not contain any harmful actions or unacceptable language")

    for x in oval_id_map:
        print(" -- Convert %s to %s" % (x, oval_id_map[x]))

    response = input("\n :::: Save all changes now? (N[o] / y[es]): ")
    if response != 'y' and response != 'Y':
        return

    for path in update_elements:
        oval_element = normalize_ids(update_elements[path], oval_id_map)
        if not oval_element or oval_element is None:
            continue
        new_path = lib_repo.get_element_repository_path(oval_element)

        #print("Path (BEFORE) -- %s" % path)
        path = path.replace("/", "\\")
        #print("Path (AFTER) --- %s" % path)
        #print("New Path (BEFORE) -- %s" % new_path)
        new_path = new_path.replace("/", "\\")
        #print("New Path (AFTER) --- %s" % new_path)
        
        if verbose:
            print("## Writing {0}".format(new_path))
        save_element(oval_element, new_path)
        
        if new_path != path:
            if verbose:
                print("### Deleting {0}".format(path))
            try:
                os.remove(path)
            except Exception:
                print("#### Exception/Skipping Deleting {0}".format(path))
            
    
    # 7. Prompt for a message to use for the commit
    # 7.1 Commit and push the changes
    
    return

# ========================= END OF MAIN() =========================#



def find_affected(ovalid, element_index):

    if not ovalid or ovalid is None:
        return None
    
    oval_id_list = element_index.find_upstream_ids(ovalid)
    
    if oval_id_list is None or len(oval_id_list) < 1:
        return None
    
    file_path_list = element_index.get_paths_from_ids(oval_id_list)
    if file_path_list is None or len(file_path_list) < 1:
        return None
    
    affected_items = {}
    for path in file_path_list:
        oval_element = lib_xml.load_standalone_element(path)
        if oval_element is None:
            continue
        affected_items[path] = oval_element
        
    return set(affected_items)
    
    

def increment_version(oval_element):
    
    if oval_element is None:
        print("increment_version::oval_element is None...")
        return

    version = oval_element.get("version")
    if not version or version is None:
        version = "1"
    else:
        version = str(int(version) + 1)
        
    oval_element.set("version", version)


def normalize_ids(oval_element, oval_id_map):
    """
    If any OVAL IDs were generated, they need to be modified in
    all elements which would reference the old id
    """
    if oval_element is None:
        return

    # nothing to do if there are no new oval ids...
    if not oval_id_map:
        return oval_element

    ET.register_namespace("", "http://oval.mitre.org/XMLSchema/oval-definitions-5")
    ET.register_namespace("oval-def", "http://oval.mitre.org/XMLSchema/oval-definitions-5")
    ET.register_namespace("oval", "http://oval.mitre.org/XMLSchema/oval-common-5")
    ET.register_namespace("xsi", "http://www.w3.org/2001/XMLSchema-instance")

    xml_string = ET.tostring(oval_element, encoding="UTF-8").decode()

    # map is oval_id_map[oldid] = new_id
    for old_oval_id in oval_id_map:
        new_oval_id = oval_id_map[old_oval_id]

        # this case covers when the id is referenced in an attribute, 
        # such as <filepath datatype="string" var_ref="oval:com.submitter:var:12345"/>
        old_oval_id1 = '="%s"' % old_oval_id
        new_oval_id1 = '="%s"' % new_oval_id
        
        xml_string = xml_string.replace(old_oval_id1, new_oval_id1)
        #print("After -- ", xml_string)

        # this case covers when the id is the value of an element, 
        # such as <object_reference>oval:com.submitter:obj:67890</object_reference>
        old_oval_id2 = '>%s</' % old_oval_id
        new_oval_id2 = '>%s</' % new_oval_id
        
        xml_string = xml_string.replace(old_oval_id2, new_oval_id2)
        

    return ET.fromstring(xml_string)


def generate_next_ovalid(element_type, element_index):
    # Find the largest index for this element type
    # Increment it by one
    
    global id_cache_list
    global verbose
    
    type_key = "def"
    if element_type == "state":
        type_key = "ste"
    elif element_type == "test":
        type_key = "tst"
    elif element_type == "object":
        type_key = "obj"
    elif element_type == "variable":
        type_key = "var"


    cached_list = id_cache_list[type_key]
    if not cached_list or len(cached_list) < 1:
        # Apparently the : is not a good idea when whooshing.
        search_term = "oval?org.cisecurity?{0}?*".format(type_key)
        index_searcher = element_index.get_searcher();
        query = Wildcard("oval_id", search_term)
        results = index_searcher.search(query, limit=None)

        matching = [hit['oval_id'] for hit in results]
        index = find_largest_index(matching) + 1
        new_id = "oval:org.cisecurity:{0}:{1}".format(type_key, index)
        cached_list = [new_id]
    else:
        index = find_largest_index(cached_list) + 1
        new_id = "oval:org.cisecurity:{0}:{1}".format(type_key, index)
        cached_list.append(new_id)
    
    id_cache_list[type_key] = cached_list
    return new_id




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
        if ":org.cisecurity" in ovalid:
            return True
        if ":org.mitre.oval:" in ovalid:
            return True
    except:
        return False
    
    return False



def set_minimum_schema_version(oval_element, min_schema):
    
    global NS_MAP
    global NS_DEFAULT
    global NS_DEFINITION
    global debug
    
    if oval_element is None:
        return None
    
    if not min_schema or min_schema is None:
        return None
    
    
    min_element = oval_element.find("def:metadata/def:oval_repository/def:min_schema_version", NS_DEFINITION)
    if min_element is None:
        # Find/create oval_repository element
        repo_element = oval_element.find("def:metadata/def:oval_repository", NS_DEFINITION)
        if repo_element is None:
            # Find/create metadata element
            meta_element = oval_element.find("def:metadata", NS_DEFINITION)
            if meta_element is None:
                meta_element = etree.SubElement(oval_element, "metadata", NS_DEFINITION)
                
            repo_element = etree.SubElement(meta_element, "oval_repository", NS_DEFINITION)
            
        #min_element = etree.SubElement(repo_element, "min_schema_version", NS_DEFINITION)
        min_element = etree.SubElement(repo_element, "min_schema_version")
        
    min_element.text = min_schema
    
#     if debug:
#         print("------  updated definition -------")
#         print(etree.tostring(oval_element))
#         print("----------------------------------")


def determine_definition_minimum_schema_version(element, index, schema_path_cache):

    if element is None:
        return None
         
    minimum_version=None

    for schema_version in lib_repo.get_schema_versions():
        # test of definitions file validates against current schema
        try:
            lib_xml.schema_validate(element, schema_path_cache[schema_version])
            minimum_version = schema_version
        except lib_xml.SchemaValidationError:
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


def save_element(elem, path):
    if elem is None:
        return
    
    if not path or path is None:
        return
    
    parent = os.path.dirname(path)
    if not os.path.isdir(parent):
        os.makedirs(parent, mode=0o755, exist_ok=True)
        os.chmod(parent, 0o0755)
        
    try:
        # Get the elements default namespace
        namespace = getNamespace(elem)
        # Pretty up the element
        indent(elem)
        # Register the discovered namespace as the default
        ET.register_namespace("", namespace)
        # Create a new ElementTree with this element as the root
        elem_tree = ET.ElementTree(element=elem)
        # Write the full tree to a file
        elem_tree.write(path, xml_declaration=False, encoding="UTF-8", method="xml")
        os.chmod(path, 0o0664)
        return True
    except:
        print(" *** Error writing new element to path %s" % path)
        print("     Exception Type: ", sys.exc_info()[0])
        print("    Exception Value: ", sys.exc_info()[1])
        return False

def getNamespace(element):
        """
        Returns the URI of the namespace or None if this node does not have a namepsace
        """
        if not element or element is None:
            return None

        tag = element.tag
        
        if not tag or tag is None:
            return None
        
        # If the oval ID does not contain a namespace, then we can't determine the schema shortname
        if not '}' in tag:
            return None
        
        try:
            position = tag.find('}')
            if position < 0:
                return None
            
            namespace = tag[:position]
            return namespace[1:]
        except Exception:
            return None

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



def build_oval_document_for_definition(defid):
    """For a definition, build a complete oval_definitions document for it"""

    if defid is None:
        return None
    
    elements_index = lib_search.ElementsIndex(False)
    
    if verbose:
        print("    ---- Resolving all elements needed to build comprehensive document...")
    oval_ids = elements_index.find_downstream_ids(defid)
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
    print("\n#### Warning prune_unchanged_elements not currently doing anything.  This submission could update elements that didn't actually change.")
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
