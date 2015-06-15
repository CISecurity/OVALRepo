# OVALRepo

### Serialization Directory Structure
* (file) full_repository.txt
	This file contains the file name for every definition in the repository.  The relative file path to each definition's XML file is /oval_repository/repository/definitions.  This allows for the construction of the full OVAL repository bulk download, as per http://oval.mitre.org/rep-data/5.10/org.mitre.oval/oval.xml.

The various "class" sub-folders (compliance, inventory, patch, vulnerability, miscellaneous) contain sets of text files containing lists of definitions filenames.
* \<classname\>.txt
	The full set of definitions for that class, such as:
	- http://oval.mitre.org/rep-data/5.10/org.mitre.oval/c/oval.xml
	- http://oval.mitre.org/rep-data/5.10/org.mitre.oval/i/oval.xml
	- http://oval.mitre.org/rep-data/5.10/org.mitre.oval/p/oval.xml
	- http://oval.mitre.org/rep-data/5.10/org.mitre.oval/v/oval.xml
	- http://oval.mitre.org/rep-data/5.10/org.mitre.oval/m/oval.xml
* \<family\>.txt
	The list of definitions for a given class and family combination, such as unix, windows, ios, etc.  These files can be used to generate the "Downloads By Family" sections for each definition class.
* \<platform\>.txt
	The list of definitions for a given class and platform combination, such as Windows 7, Red Hat Enterprise Linux 6, etc.  These files can be used to generate the "Downloads By Platform" sections for each definition class.

The "repository" folder contains sub-folders containing XML files for each definition, test, object, state, and variable.
* repository
	- definitions
	- tests
	- objects
	- states
	- variables
	
