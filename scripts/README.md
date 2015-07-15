# Scripts

This folder contains scripts that can be used:

- [By Content Users](#scripts-for-content-use) to build custom packages of content.
- [By Content Contributors](#scripts-for-content-contribution) to validate submissions, build packages for testing and more.
- [By Repository Maintainers](#scripts-for-content-maintenance) to validate submissions, find related elements and more.

## Related Resources

- The OVAL Repository Website (coming soon)
- [Repository Overview](../README.md)
- [Repository Organization](../repository/README.md)
- [Contributing OVAL](./README.contributing.oval.md)
- [Contributing Scripts](./README.contributing.scripts.md)

## Prerequisites

Before you can get started using these scripts, you will need to:

- [Get a Local Copy of the Repository](../README.getting.repo.md)
- [Get Python 3.4 & Required Packages](./README.scripting.setup.md)

## Getting Help, Making Suggestions

If you need help using these scripts, please post your questions to the 
[OVAL Repository Mailing List (link TBD)](./).

If you encounter a bug or have ideas for improving these scripts, please 
[create an issue](https://github.com/CISecurity/OVALRepo/issues/new) with a full
description of your bug or idea.

## Scripts for Content Use

Once you have a [local copy of the repository](../README.getting.repo.md) and the 
[scripting prerequisites](./README.scripting.setup.md)
in place, you're ready to build your own content!

### build\_oval\_definitions\_file
Use this script to search the repository for the content you want and compile it
into an OVAL definitions file you can run.

```Shell
# First, make sure you have the lastest content & scripts
$ git pull origin master

# Compile all Windows vulnerability definitions into all.windows.vulnerability.xml
$ python3 build_oval_definitions_file.py -o all.windows.vulnerability.xml --family windows --class vulnerability

# Compile all UNIX definitions related to CVE-2014-6509 into CVE.2014.6509.xml
$ python3 build_oval_definitions_file.py -o CVE.2014.6509.xml --family unix --reference_id "CVE-2014-6509"

# See all script options
$ python3 build_oval_definitions_file.py -h
```



## Scripts for Content Contribution

## Scripts for Content Maintainance


