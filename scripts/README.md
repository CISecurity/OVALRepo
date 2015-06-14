# Scripts #

This folder will contain scripts that can be used to support the contribution, consumption and maintenance of the repository.

## Script Formats ##

TBD. We're currently considering python and/or shell scrips.

## To Do List ##

We should collaborate to complete and prioritize this list of tasks.

- **Validate Definitions**: validates one or more Definitions and creates a report
  - Parameters: definition id(s) OR "all", report filepath
  - Notes: schema validate, schematron validate, validate metadata, validate file format, validate file name, validate file location, create report
  - Output: report including definitions list and success/failure for each task
- **Determine Effected Definitions**: determines definitions effected by changes to one or more files in repo
  - Parameters: ids or filepaths of changed files
  - Notes: tbd
  - Output: definition ids of effected definitions
- **Increment Version of Effected Upstream Elements**: determines upstream elements effected by changes to one or more files in repo and increments their version
  - Parameters: ids or filepaths of changed files
  - Notes: "upstream" means elements that depend on the changed element (i.e. reference it directly or indirectly)
  - Output: oval ids of effected elements
- **Itemize Changed OVAL IDs**: determines OVAL ids of files added or changed in a pull request
  - Parameters: tbd
  - Notes: uses git command line to generate OVAL ids list in PR, this can then be used to Determine Effected Definition and that can be used to drive the Validate Definitions Script
  - Output: tbd
- **Generate OVAL Definition**
  - Parameters: definition id
  - Notes: tbd
  - Output: valid OVAL file for 1 definition
- **Generate OVAL Definitions by Schema** 
  - Parameters: schema and version
  - Notes:  tbd
  - Output: valid OVAL file containing all definitions for specified schema/version
- **Generate HTML for Contributor Stats** 
  - Parameters: 
  - Notes: 
  - Output: generate html page for contributor statistics TBD
- **Generate HTML for Repository Browsing**: 
  - Parameters: 
  - Notes: This could generate HTML files for each oval entity that displays metadata nicely, xml content nicely and links id’s to html pages for those id’s, etc. TBD
  - Output: a directory of HTML files that allow site visitors to browse the repo content 
- **Generate HTML by Reference Pages?**: 
  - Parameters: 
  - Notes: generate HTML pages listing definitions by CPE?, Class?, Status?, Reference?, Type?
  - Output:
- **Decompose Definition**: 
  - Parameters: an oval definition file
  - Notes: decomposes a definition file. The intent is to reduce effort for content submitters that currently submit entire definitons vice corrections to existing items. This script would need to look for collisions between items in the definition file and existing items in the repo. For examples, the input definition file may contain a modified test, an unmodified variable and state, but a new object. 
  - Output: individual and properly placed files that correspond with the oval tst/obj/var/etc in the definition file.
- **Related Tasks that aren't scripts**: 
  - Add sections to this readme with step-by-step instructions for:
    - Using scripts to build content
    - Using scripts to prepare content for contribution
