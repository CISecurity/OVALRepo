# OVAL Repository Organization
This document provides an overview of the OVAL Repository organization.

## Status: Work in Progress
*Please note: this documentation is a work in progress. If you have questions or suggestions, 
please [create an issue](https://github.com/CISecurity/OVALRepo/issues/new) with a full
description of your question or idea.*

## Related Resources

- The OVAL Repository Website (coming soon)
- [Repository Overview](../README.md)
- Repository Organization (this document)
- [Contributing OVAL](../CONTRIBUTING.md)
- [Scripts for OVAL Contributors & Consumers](../scripts/README.md)
 - [Getting a Local Copy of the Repository](../README.getting.repo.md)
 - [Get Python 3.4 & Required Packages](../scripts/README.scripting.setup.md)
 - [Contributing Scripts](../scripts/CONTRIBUTING.md)

## Specific Organization

The "repository" folder is where you can find all of the XML files that can be built into valid OVAL definitions.  The first children under `repository` are as follows:

* `definitions`
* `objects`
* `states`
* `tests`
* `variables`

The `definitions` folder is further decomposed by class (i.e. `compliance`, `inventory` and so on).  

The other OVAL types (`objects`, `states`, and so on; except for variables) are broken down a bit differently.  They are first categorized by "schema short name" (i.e. `independent`), and further categorized by predicate (i.e. `variable_test`, `rpminfo_test`, and the like).  Finally, specific entities may be further categorized by index modulus - essentially by ID.

Put into an abstract example: 
`repository/[oval_type]s/[schema_short_name]/[predicate]/[index_modulus]`

Put into a specific example:
`repository/objects/linux/rpminfo_object/24000/oval_org.mitre.oval_obj_23691.xml`

It is from this organizational structure that the [scripts](../scripts/README.md) build complete, valid OVAL definitions.
