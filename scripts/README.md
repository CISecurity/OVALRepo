# Scripts

This folder contains scripts that can be used:

- [By Content Users](#scripts-for-content-use) to build custom packages of content.
- [By Content Contributors](#scripts-for-content-contribution) to validate submissions, build packages for testing and more.
- [By Repository Maintainers](#scripts-for-content-maintenance) to validate submissions, find related elements and more.

## Status: Work in Progress
*Please note: this documentation is a work in progress. If you have questions or suggestions, 
please [create an issue](https://github.com/CISecurity/OVALRepo/issues/new) with a full
description of your question or idea.*

## Related Resources

- The OVAL Repository Website (coming soon)
- [Repository Overview](../README.md)
- [Repository Organization](../repository/README.md)
- [Contributing OVAL](../CONTRIBUTING.md)
- Scripts for OVAL Contributors & Consumers (this document)
 - [Getting a Local Copy of the Repository](../README.getting.repo.md)
 - [Get Python 3.4 & Required Packages](../README.scripting.setup.md)
 - [Contributing Scripts](./CONTRIBUTING.md)

## Prerequisites

Before you can get started using these scripts, you will need to:

- [Get a Local Copy of the Repository](../README.getting.repo.md)
- [Get Python 3.4 & Required Packages](./README.scripting.setup.md)

## Notes
- *You must run these scripts from within a repo*: These scripts are intended to be run from within a copy of this repository
that was retrieved using git (i.e. a git clone). If you've followed the instructions
for [getting a local copy of the repository](../README.getting.repo.md), then you're all
set. But, if you have downloaded a zip of the content or moved the scripts outside of 
your local copy of the repo, these scripts will not work properly.

## Getting Help, Making Suggestions

If you need help using these scripts, please post your questions to the 
OVAL Repository Mailing List (link TBD).

If you encounter a bug or have ideas for improving these scripts, please 
[create an issue](https://github.com/CISecurity/OVALRepo/issues/new) with a full
description of your bug or idea.

## Scripts for Content Use

Once you have a [local copy of the repository](../README.getting.repo.md) and the 
[scripting prerequisites](./README.scripting.setup.md)
in place, you're ready to build your own content!

### build\_oval\_definitions\_file.py

Use this script to search the repository for the content you want and compile it
into an OVAL definitions file you can run.

```Shell
# First, make sure you have the lastest content & scripts
$ git pull origin master

# Compile all Windows vulnerability definitions into all.windows.vulnerability.xml
$ python3 build_oval_definitions_file.py -o all.windows.vulnerability.xml --family windows --class vulnerability

# Compile all UNIX definitions related to CVE-2014-6509 into CVE.2014.6509.xml
$ python3 build_oval_definitions_file.py -o CVE.2014.6509.xml --family unix --reference_id "CVE-2014-6509"

# See script usage and options
$ python3 build_oval_definitions_file.py -h
```

## Scripts for Content Contribution

Before using these scripts to contribute content, you must have a [local copy of the repository](../README.getting.repo.md),  
install the [scripting prerequisites](./README.scripting.setup.md) and 
review the [content contribution process & guidelines](../CONTRIBUTING.md).

### oval\_decomposition.py

If your submission is a complete OVAL definitions file, you should use this script to 
extract its component elements and store those elements 
in the appropriate places in the [repository file structure](../repository/README.md).

```Shell
# extract elements in my.oval.defintions.file.xml and insert them into the repository
$ python3 oval_decomposition.py -f my.oval.defintions.file.xml

# See script usage and options
$ python3 oval_decomposition.py -h
```

### build\_oval\_definitions\_file.py

If your submission includes updates to elements in the repository, you can use this 
script to compile those elements into an OVAL definitions file that you can test and validate.

```Shell
# Compile oval:com.mysite.oval:def:1 into 1.xml and schema validate it
$ python3 build_oval_definitions_file.py -o 1.xml --definition_id="oval:com.mysite.oval:def:1" -v

# See script usage and options
$ python3 build_oval_definitions_file.py -h
```

### validate\_oval\_definitions\_files.py

Schema and schematron validate one or more OVAL definitions files.

```Shell

# See script usage and options
$ python3 validatate_oval_definitions_files.py -h
```

### get\_related\_elements.py

Get OVAL elements that are related to one or more elements.

```Shell
# See script usage and options
$ python3 get_related_elements.py -h
```

## Scripts for Content Maintainance

### get\_repository\_stats.py

Get OVAL elements that are related to one or more elements.

```Shell
# See script usage and options
$ python3 get_repository_stats.py -h
```


