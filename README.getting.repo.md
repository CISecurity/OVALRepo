# Getting the Repository

In order to contribute content or build your own packages, you will need your own copy of this 
repository. There are two ways to accomplish this:

- [Clone for Read-only Access](#clone-for-read-only-access) if you just want to review and use the repository content.
- [Fork for Read/Write Access](#fork-for-readwrite-access) if you want to contribute content or scripts to the repository.

## Status: Work in Progress
*Please note: this documentation is a work in progress. If you have questions or suggestions, 
please [create an issue](https://github.com/CISecurity/OVALRepo/issues/new) with a full
description of your question or idea.*

## Related Resources

- The OVAL Repository Website (coming soon)
- [Repository Overview](./README.md)
- [Repository Organization](./repository/README.md)
- [Contributing OVAL](./CONTRIBUTING.md)
- [Scripts for OVAL Contributors & Consumers](./scripts/README.md)
 - Getting a Local Copy of the Repository (this document)
 - [Get Python 3.4 & Required Packages](./scripts/README.scripting.setup.md)
 - [Contributing Scripts](./scripts/CONTRIBUTING.md)

## Getting Help, Making Suggestions

If you need help following this documentation, please post your questions to the 
OVAL Repository Mailing List (link TBD).

If you encounter a bug or have ideas for improving this documentation, please 
[create an issue](https://github.com/CISecurity/OVALRepo/issues/new) with a full
description of your bug or idea.

## Clone for Read-only Access

Cloning this repository is the fastest and easiest way to get started. However, if you plan on 
contributing changes to the repository, you should [fork the repo](#fork-for-read-write-access) instead of simply cloning it.

1. **Install Git**: If you don't have git on your machine, you will need to [install git](https://help.github.com/articles/set-up-git/)
2. **Create a Parent Directory**: open your Git command line client (Terminal on Mac, Git Bash on Windows), and cd to the directory 
that you want to contain the Repository clone.
3. **Clone!**: this command will download a copy of the repository into ./OVALRepo

```Shell
$ git clone https://github.com/CISecurity/OVALRepo.git
```

To update your clone at any time and ensure you have the latest content:

```Shell
# cd to your OVALRepo folder
$ cd ./path/to/OVALRepo

# update from the origin repository (this one!)
$ git pull origin master
```

And... that's it! Next, you might want to explore the [repository organization](./repository/README.md) or 
the [scripts for building content](./scripts/README.md).

## Fork for Read/Write Access

If you're interested in contributing content or scripts to the repository via git, you will need to create your own
fork of the repository. This is a bit more involved than simply cloning the repo, so if all you need to do is review
and use the content, you might want to follow those instructions (above).

1. **GitHub Account**: Create a [GitHub account](https://github.com) if you don't have one
2. **Install Git**: If you don't have git on your machine, you will need to [install git](https://help.github.com/articles/set-up-git/)
3. **Fork this Repo**: [Create a fork](https://help.github.com/articles/fork-a-repo/) of this [OVAL repository](https://github.com/CISecurity/OVALRepo) 
4. **Clone Your Fork**: [Create a local clone](https://help.github.com/articles/fork-a-repo/) of your fork
5. **Add Upstream**: [Add this repository as the upstream remote](https://help.github.com/articles/configuring-a-remote-for-a-fork/)
