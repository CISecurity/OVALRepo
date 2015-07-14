# OVAL Repository

## Getting Started ##

### Windows

1. Install python 3.4.3 from https://www.python.org/downloads/
2. Add ```C:\Python34``` to ```PATH``` (or wherever you installed it)
3. Upgrade ```pip``` via CLI: ```python -m pip install -U pip```
4. Download unofficial Python 3.4 ```lxml``` wheel from http://www.lfd.uci.edu/~gohlke/pythonlibs/#lxml
5. Install via ```pip``` on CLI: ```python -m pip install```

### OSX

1. Install Python 3.4
2. Install lxml

```
$ brew install python3
$ pip3 install lxml
```

Prerequisites for OSX:
 * Homebrew (http://brew.sh/) -- or install via command line:
 
 ```ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"```
 
 * Xcode
 
The installation of lxml may fail with an error indicating that libxml/xmlversion.h cannot be found.  In that case, try the following:
 
 ```
 $ xcode-select --install
 $ pip3 install lxml
 ```
 

### Linux (Debian/Ubuntu)

1. Install python3.  Most likely this is already installed on recent OS releases.  Otherwise
``` sudo apt-get install python3```
2. Install pip3:  ```sudo apt-get install python3-pip```
3. Install lxml:  ```sudo apt-get install python3-lxml```
4. Install git:  ```sudo apt-get install git-core```



### Serialization Directory Structure
The "repository" folder contains sub-folders containing XML files for each definition, test, object, state, and variable.
* repository
	- definitions:  The definitions folder structure is organized by class in the format: `definitions/[class]`
		- compliance
		- inventory
		- miscellaneous
		- patch
		- vulnerability
	- tests
	- objects
	- states
	- variables
	
The remaining OVAL types are organized as follows:
`repository/[oval_type]s/[schema_short_name]/[predicate]/[index_modulus]`

For example:
`repository/objects/linux/rpminfo_object/24000/oval_org.mitre.oval_obj_23691.xml`

where:
`[oval_type]` represents either `test`, `object`, `state`, or `variable`  
`[schema_short_name]` represents the family of the particular `[oval_type]`, such as `independent`, `unix`, or `ios`  
`[predicate]` represents the specific OVAL construct, such as `file_test`, `router_object`, `registry_state`, etc, and  
`[index_modulus]` represents a numeric multiple of 1000, in order to never have more than 1000 files per folder.

