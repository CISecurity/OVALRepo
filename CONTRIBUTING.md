# Contributing OVAL

This document includes processes and guidelines for contributing OVAL to the repository.

There are three options for contributing content to the repository:

- [Ad Hoc Contribution](#ad-hoc-contribution)
- [Ongoing Contribution by Email](#ongoing-contribution-by-email) (temporary)
- [Ongoing Contribution via Git](#ongoing-contribution-by-git) (recommended)

## Status: Work in Progress
*Please note: this documentation is a work in progress. If you have questions or suggestions, 
please [create an issue](https://github.com/CISecurity/OVALRepo/issues/new) with a full
description of your question or idea.*

## Related Resources

- The OVAL Repository Website (coming soon)
- [Repository Overview](./README.md)
- [Repository Organization](./repository/README.md)
- Contributing OVAL(this document)
- [Scripts for OVAL Contributors & Consumers](./scripts/README.md)
 - [Getting a Local Copy of the Repository](./README.getting.repo.md)
 - [Get Python 3.4 & Required Packages](./scripts/README.scripting.setup.md)
 - [Contributing Scripts](./scripts/CONTRIBUTING.md)

## Getting Help, Making Suggestions

If you need help understanding and following this process, please post your
questions to the OVAL Repository Mailing List (link TBD).

If you encounter issues or have ideas for improving this process, please 
[create an issue](https://github.com/CISecurity/OVALRepo/issues/new) with a full
description of your issue or idea.

## Ad Hoc Contribution

If you have a suggestion for adding or updating content, but are not interested in being a regular
contributor or [making your contribution via git](#ongoing-contribution-by-git), please post your
content suggetions to the OVAL Repository mailing list (link TBD) and ask for a regular contributor
to incorporate them into a formal contribution.

## Ongoing Contribution by Email

In order to ease the transition for content contributors, the repository will accept contributions
of valid OVAL sent by email to the OVAL Repository mailing list (link TBD).

This option will be available for a limited time and we recommend that you plan to adopt the 
[contribution via git](#ongoing-contribution-by-git) option.

## Ongoing Contribution via Git

The process for contributing via Git has been designed to follow a mature practice for collaborative 
development using git called the "fork & pull" model [learn more](https://help.github.com/articles/using-pull-requests/).

### High-Level Overview

#### Before you begin (one-time setup)

- You have a [GitHub account](https://github.com)
- You have [set up git](https://help.github.com/articles/set-up-git/) on your machine
- You have [created a fork](https://help.github.com/articles/fork-a-repo/) of this [OVAL repository](https://github.com/CISecurity/OVALRepo) 
- You have [created a local clone](https://help.github.com/articles/fork-a-repo/#step-2-create-a-local-clone-of-your-fork) of your fork

#### Making a Contribution

1. **Create a Topic Branch**: create a branch in which you will create your submission. You should create a topic branch for each set of changes that you think should be reviewed and accepted as unit.

2. **Make Updates**: add, update and delete elements in your topic branch.

3. **Commit Updates**: commit your updates.

4. **Quality Assurance**: make sure that definitions affected by your contribution schema and schematron validate
using our provided scripts or your own validation scripts. (additional QA guidelines TBD). If you have any validation
issues, resolve them before proceeding.

5. **Push Commits to Your Fork**: publish you submission to your own fork.

6. **Initiate a Pull Request ("PR")**: 
  1. Go to your fork on GitHub.com
  2. Switch to your feature branch\
  3. Click the green "Compare and Review" button 
  4. Review the changes to insure they're correct and click "Create Pull Request"
  5. Add a descriptive title and a description of the submission and click "Create Pull Request"

7. **Community Review**: GitHub will notify CIS and the community that you have made a PR.
Community members may add questions and comments to the PR discussion page, to which you are 
encouraged to respond. CIS will perform QA on your PR, and will add any issues or concerns they've uncovered to the PR discussion page.

8. **Issue Resolution**: If there are issues you wish to resolve, you may update update your PR by following
steps 2-5 above.

9. **Submission Acceptable**: Once CIS has completed QA, they will accept the PR, merging your changes into 
the master branch of this repository.

10. **Clean Up**: once your PR has been accepted, you should delete your topic branch and update your master
branch from the upstream/master so you have all the latest content (including your submission)!

##### Sample Git Commands

```Shell
# switch to your master branch, if you're not on it already
$ git checkout master

# add the master repository as the upstream remote, if you haven't
$ git remote add upstream https://github.com/CISecurity/OVALRepo.git

# merge changes from upstream into your master
$ git fetch upstream
$ git merge upstream/master

# create a topic branch and switch to it
$ git checkout -b [topic branch name]

# make changes to OVAL content files

# check to see the changes you've made
$ git status

# if you've created any new files, add them
$ git add [new files]

# if you've deleted files, delete them in git
$ git add -u

# commit updates
$ git commit -am '[a descriptive note about this commit]'

# QA your submission

# push branch and commits to your fork
$ git push origin [topic branch name]

# initiate your PR

# after acceptance, delete topic branch (don't merge!)
git checkout master
git branch -D [topic branch name]
git push origin :[topic branch name]

# and finally, get updates from master
$ git fetch upstream
$ git merge upstream/master
```
