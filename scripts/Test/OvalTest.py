"""
"""


import sys

from xml.etree.ElementTree import ElementTree


sys.path.insert(0, "../")
# import lib_oval

from lib_oval import OvalDocument


def main():
    """
    """
    
    print("------------- Opening OVAL file -------------")
    
    tree = ElementTree()
    tree.parse("OvalTest.xml")
    document = OvalDocument(tree)
#     document.parseFromFile("OvalTest.xml")

    generator = document.getGenerator()
    if not generator:
        print("## Oops:  Generator element not found")
    else:
        print("--   Product: ", generator.getProduct())
        print("--    Schema: ", generator.getSchemaVersion())
        print("-- Timestamp: ", generator.getTimestamp())
        print("--   Edition: ", generator.getExtra("def:edition_field", OvalDocument.NS_DEFAULT))
        
    print("\n")
    
    def_list = document.getDefinitions()
    if not def_list:
        print("## Oops:  No definitions found in OVAL document")
    else:
        print("  Number of definitions: ", len(def_list), ", Expected = 489")
    
    test_list = document.getTests()
    if not test_list:
        print("## Oops:  No tests found in OVAL document")
    else:
        print("  Number of tests: ", len(test_list), ", Expected = 1439")
        
    object_list = document.getObjects()
    if not object_list:
        print("## Oops:  No objects found in OVAL document")
    else:
        print("  Number of objects: ", len(object_list), ", Expected = 1276")

    state_list = document.getStates()
    if not state_list:
        print("## Oops:  No states found in OVAL document")
    else:
        print("  Number of states: ", len(state_list), ", Expected = 713")

    var_list = document.getVariables()
    if not var_list:
        print("  Number of variables: 0, Expected = 0")
    else:
        print("  Number of variables: ", len(var_list), ", Expected = ")
        
        
    print("\n  Find the definition with OVAL ID 'oval:org.mitre.oval:def:22382'")
    definition = document.getElementByID("oval:org.mitre.oval:def:22382")
    if definition is None:
        print("##  Oops:  definition not found")
    else:
        print("  Found.  Definition details:")
        print("      Class: ", definition.getClass())
        print("    Version: ", definition.getVersion())
        definition.incrementVersion()
        print("New Version: ", definition.getVersion())
        
        meta = definition.getMetadata()
        if meta is None:
            print("      ## Oops.  Definition metadata not found")
        else:
            print("      Title: ", meta.getTitle())
            
            repo = meta.getOvalRepositoryInformation()
            if repo is None:
                print("        ### Oops.  No repository information")
            else:
                print("     ----- From the repository ------")
                print("         Status: ", repo.getStatus())
                repo.setStatus("Munged")
                print("     New Status: ", repo.getStatus())
                print("    Min Version: ", repo.getMinimumSchemaVersion())
                repo.setMinimumSchemaVersion("5.9")
                print("New Min Version: ", repo.getMinimumSchemaVersion())
        
        
        
if __name__ == '__main__':
    main()