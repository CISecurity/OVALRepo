#!/usr/bin/env/ python3
"""Locates all OVAL elements in the file, regardless of the organization of the file, and for each
element that has meaningful changes, adds/updates the repository


Authors: Gunnar Engelbach <Gunnar.Engelbach@ThreatGuard.com>


TODO:
- Check for OVAL IDs in elements that are not repository IDs and update them
"""


import argparse
import os
from lxml import etree

import lib_repo
import lib_xml


verbose = False
force = False
schema_path = ""
SCHEMA_VERSION = "5.11.2"
NS_MAP = { 'def': "http://oval.mitre.org/XMLSchema/oval-definitions-5", "oval": "http://oval.mitre.org/XMLSchema/oval-common-5",
            "xsi": "http://www.w3.org/2001/XMLSchema-instance" }

def main():
    """
    Breaks the OVAL file into its constituent elements and writes each of those into the repository
    """
    
    global verbose
    global force
    global schema_path
    
    
    parser = argparse.ArgumentParser(description='Separates a file into its component parts and saves them to the repository.')
    program_options = parser.add_argument_group('options')
    program_options.add_argument('files', metavar='<FILE>', nargs='+', help='The file or files to process')
    program_options.add_argument('-f', '--force', required=False, action="store_true", help='Ignore the check for unchanged items and write all elements to the repository')
    program_options.add_argument('-v', '--verbose', required=False, action="store_true", help='Enable more verbose messages')
    
    args = parser.parse_args()
    options = vars(args)

    if options['verbose']:
        verbose = True
    else:
        verbose = False
        
    if options['force']:
        force = True
    else:
        force = False
        
    schema_path = lib_repo.get_oval_def_schema(SCHEMA_VERSION)
        
    files = args.files
    if files is None or len(files) < 1:
        print("\n ## Error:  must include at least one file name")
        return
        
    for file in files:
        if not submit_contents(file):
            print("\n### Error in file '{0}' -- processing halted".format(file))
        
        
        
def submit_contents(path):
    
    if path is None or not os.path.isfile(path):
        return False
    
    global verbose
    
    if verbose:
        print("\n :: Processing file {0}".format(path))
    

    element_list = find_all_elements(path)
    if element_list is None or len(element_list) < 1:
        if verbose:
            print("\n >>> Not processing file '{0}':  no OVAL elements found")
        return True
    else:
        if verbose:
            print("  ++ Found {0} OVAL elements to process".format(len(element_list)))
    
    # First do a schema validation of all elements.  We won't write any changes
    # if any of the elements do not pass validation
    if verbose:
        print("  +++ Doing schema/schematron validation...")
    for element in element_list:
        # Do schema validation
        try:
            lib_xml.schema_validate(element, schema_path, use_cached_schema=True)
        except:
            if verbose:
                print("\n ## Error:  element {0} failed schema validation".format(element.get("id")))
            return False
         
        #Do schematron validation
#         try:
#             lib_xml.schematron_validate_tree(element, schema_path)
#         except:
#             if verbose:
#                 print("\n ## Error:  element {0} failed schematron validation".format(element.get("id")))
#             return False

    if verbose:
        print("    ++++ Validation passed for all elements.\n")
        
    return process_elements(element_list)
    
    
    
def find_all_elements(path):
    
    if path is None or not os.path.isfile(path):
        return False
    
    global verbose
    
    
    try:
        tree = etree.parse(path)
    except Exception:
        if verbose:
            print("\n ## Error parsing file contents -- not processing this file")
        return False
    
    element_list = []
    
    # Find all OVAL elements in the file.  They will have the tag names of 
    # 'definition', '*_test', '*_object', '*_state', and '*_variable'
    for element in tree.iter("*"):
        if element.tag.endswith("definition") and not element.tag.endswith("_definition"):
            element_list.append(element)
        if element.tag.endswith("_test"):
            element_list.append(element)
        if element.tag.endswith("_object"):
            element_list.append(element)
        if element.tag.endswith("_state"):
            element_list.append(element)
        if element.tag.endswith("_variable"):
            element_list.append(element)
            
    return element_list
            
            
            
def process_elements(element_list):
    
    if element_list is None:
        return True
    
    global verbose
    global force
    global schema_path
    
    file_list = []
    
    for element in element_list:
        ovalid = element.get("id")
        
        filepath = lib_repo.get_element_repository_path(element)
        if not filepath or filepath is None:
            if verbose:
                print(" ###  Unable to determine repository location for '{0}'".format(ovalid))
            return False
        
        if os.path.isfile(filepath):
            if verbose:
                print("    ++ Element '{0}' already exists.  Checking for changes...".format(ovalid))
            original = lib_xml.load_standalone_element(filepath)
            if original is not None:
                changes = lib_xml.get_element_change_status(element, original)
                if changes == 2:
                    print("      +++ Changes found:  updating")
                else:
                    if verbose:
                        print("      +++ No meaningful changes:  skipping".format(ovalid))
                    continue
        elif verbose:
            print("     ++++ New element '{0}':\n      ---> adding to repository as '{1}".format(ovalid, filepath))
    
        
        #Write the element to its own file
        file_list.append(filepath)
        save_element(element, filepath)
        
    print("\n +++ Files added or updated by this submission:")
    for file in file_list:
        print("   ---> {0}".format(file))
    
    return True
        

def save_element(element, path):
    
    if element is None:
        return
    
    if not path or path is None:
        return
    
    parent = os.path.dirname(path)
    if not os.path.isdir(parent):
        os.makedirs(parent, mode=0o755, exist_ok=True)
        os.chmod(parent, 0o0755)
        
    try:
        # Pretty up the element
        indent(element)
        # Create a new ElementTree with this element as the root
        tree = etree.ElementTree(element)
        # Write the full tree to a file
        tree.write(path, xml_declaration=True, encoding="UTF-8", method="xml")
        os.chmod(path, 0o0664)
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
        
        

if __name__ == '__main__':
    main()