#!/usr/bin/env/ python3
"""Splits the OVAL document into its component parts and stores them in the appropriate places in the repository.

Right now, only handles the very simple case of processing a valid oval_definitions file with at least one
definition and puts all of the component pieces in the proper location in the repository


Authors: Gunnar Engelbach <Gunnar.Engelbach@ThreatGuard.com>


TODO:
 - Tools for resolving/accepting changes when the OVAL ID for a component refers to an existing item
 - Use the min schema method to determine the minimum schema needed for this definition and add that information to the definition metadata
 - Update the local copy of the whoosh database index with metadata for all the new files
 - Group display of new vice changed files rather than show each file status as it is processed
 - Other types of validation
     - Are all referenced items either in the document or does it already exist in the repository?
     - Is the definition/metadata/oval_repository/status set to the proper value?
     - Is the definition/metadata/oval_repository/timestamp set to the proper value?
"""


import argparse
import os
import xml.etree
from lib_oval import OvalDocument
from xml.etree.ElementTree import ElementTree

import lib_repo



def main():
    """
    Breaks the OVAL file into its constituent elements and writes each of those into the repository
    """
    
    parser = argparse.ArgumentParser(description='Separates an OVAL file into its component parts and saves them to the repository.')
    options = parser.add_argument_group('options')
    options.add_argument('-f', '--file', required=True, help='The name of the source file')
    options.add_argument('-v', '--verbose', required=False, action="store_true", help='Enable more verbose messages')
    args = vars(parser.parse_args())

    filename = args['file']
    if args['verbose']:
        verbose = True
    else:
        verbose = False

    decompose(filename, verbose)


def decompose(filename, verbose):
    oval = OvalDocument(None)
    
    if not oval.parseFromFile(filename):
        print("\n >> Unable to parse source file '{0}':  no actions taken".format(filename))
        return

    deflist = oval.getDefinitions()
#    if not deflist or deflist is None or len(deflist) < 1:
#        print("\n ## Error:  this document does not contain any OVAL definitions.  No further action will be taken")
#        return
        
    if verbose:
        print(" Number of definitions to process: ", len(deflist))


    repository_root = lib_repo.get_repository_root_path()
    
    writeFiles(deflist, repository_root, verbose)
    writeFiles(oval.getTests(), repository_root, verbose)
    writeFiles(oval.getObjects(), repository_root, verbose)
    writeFiles(oval.getStates(), repository_root, verbose)
    writeFiles(oval.getVariables(), repository_root, verbose)


        
#     for test in deflist:
#         filepath = test.constructFilePath()
#         if not filepath or filepath is None:
#             # Some sort of error.  Add this element to our problem list
#             print("## Error with element ", test.getId())
#         elif os.path.exists(filepath):
#             # Add it to the list of possible conflicts
#             print("## File exists: ", filepath)
#         else:
#             print("  ## New file: ", filepath)
#     
        
    
    #For each file path, see if a file already exists in the repository
    #  Should it be a collision if the file contents match?
    #  How about if the file contents don't match, but the XML attributes do?
    #File name collisions?  Show the user
    #  For each file, show the current and new element
    #  Prompt for possible actions:  skip, update, retain, cancel
    #  If updating, make sure the version is set properly



def writeFiles(element_list, repo_root, verbose=False):
    if not element_list or element_list is None:
        return
    
    for element in element_list:
        e = element.getElement()
        filepath = lib_repo.get_element_repository_path(e)
        if filepath and filepath is not None:
            writeFile(filepath, element, verbose)
        
        
def writeFile(path, element, verbose=False):
    
    if verbose:
        if os.path.exists(path):
            # TODO  Determine if the element has not changed
            print("## Overwrite existing file: ", path)
        else:
            print("@@ Creating new file: ", path)
    
    # Get the namespace of this element
    namespace = element.getNamespace()
    # Register this namespace with the parser as the default namespace
    xml.etree.ElementTree.register_namespace("", namespace)
    xml.etree.ElementTree.register_namespace("oval", "http://oval.mitre.org/XMLSchema/oval-common-5")
    xml.etree.ElementTree.register_namespace("oval-def", "http://oval.mitre.org/XMLSchema/oval-definitions-5")
    xml.etree.ElementTree.register_namespace("xsi", "http://www.w3.org/2001/XMLSchema-instance")

    e = element.getElement()

    # Fix up the element so it will print nicely
    OvalDocument.indent(e)
    # Create a new ElementTree with this element as the root
    tree = ElementTree(e)
    # And finally, write the full tree to a file not including the xml declaration
    parent = os.path.dirname(path)
    if not os.path.isdir(parent):
        try :
            os.makedirs(parent, 0o0755, True)
            os.chmod(parent, 0o0755)
        except:
            return False

    # WKM CHANGE
    tree.write(path, "UTF-8", False, None, "xml")
    os.chmod(path, 0o0664)
    return True
    
        

if __name__ == '__main__':
    main()
