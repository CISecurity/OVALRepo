"""
"""


import sys
from xml.etree.ElementTree import ElementTree


sys.path.insert(0, "../")
import lib_oval


def main():
    """ Perform a few operations reading an OVAL definition and editing it"""

    print(" INFO", "Opening test definition file")
    tree = ElementTree()
    
    tree.parse('test-definition.xml')
    if tree is None:
        print("ERROR", "Unable to parse test definition file into XML")
        return
    
    root = tree.getroot()    
    if root is None:
        print("ERROR", "Could not locate root element for definition")
        return
    
    
    definition = lib_oval.OvalDefinition(root)
    attrib = definition.getId()
    if not attrib:
        print("ERROR", " Could not find definition ID")
    else:
        print (type(attrib).__name__)
        print(" INFO", "Definition ID: " + attrib)
        
    
    meta = definition.getMetadata()
    if meta is None:
        print("ERROR", "Definition does not contain a metadata element")
        return
    
    print(" INFO", "Title = " + meta.getTitle())

    
        
        
        
if __name__ == '__main__':
    main()