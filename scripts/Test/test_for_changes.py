"""
"""


import sys
from lxml import etree


sys.path.insert(0, "../")
import lib_xml
import lib_repo


def main():

    print("\n--- Starting tests...\n")
    tree = etree.parse('change_tests.xml')
    if tree is None:
        print("ERROR", "Unable to parse test definition file into XML")
        return
    
    root = tree.getroot()    
    if root is None:
        print("ERROR", "Could not locate document root")
        return
    
    test_cases = list(root)
    
    for element in test_cases:
        # Get the corresponding element from the repository
        ovalid = element.get('id')
        path = lib_repo.get_element_repository_path(element)
        existing = lib_xml.load_standalone_element(path)
        status = lib_xml.get_element_change_status(element, existing)
        print(" ++ Status for element {0} = {1}".format(ovalid, status))
    
        
        
        
if __name__ == '__main__':
    main()