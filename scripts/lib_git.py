#!/usr/bin/env/ python3
"""Library for retreiving lists of updated files using Git.

Authors: David Ries <ries@jovalcm.com>

This library provides methods to retrieve lists of files that 
have been updated in the local working copy of the repository
using git.

Available functions:
- on_master: returns true if working directory is on master branch
- get_uncommitted_oval: returns list of OVAL files in the repository that are not committed
- get_current_commit_hash: returns hash for current commit.

TODO:
- TBD
"""

import os, os.path, inspect, datetime, random, re, pprint
import git
import lib_repo


def on_master():
    """ Returns true if working directory is on master branch. """
    repo = get_repo()
    current_branch = str(repo.head.reference)
    return current_branch == 'master'


def get_uncommitted_oval():
    """ Returns list of OVAL files in the repository that are not committed. """
    repo = get_repo()

    uncommitted_oval = []
    content_rel_path = lib_repo.get_repository_root_path().replace(lib_repo.get_root_path(),'')[1:]

    # check for changes in content staged for commit
    for diff in repo.index.diff(repo.head.commit, paths=content_rel_path):
      uncommitted_oval.append(diff.a_path)
      # print('staged: {0}'.format(diff.a_path))

    # check for changes in content not staged for commit
    for diff in repo.index.diff(None, paths=content_rel_path):
      uncommitted_oval.append(diff.a_path)
      # print('not staged: {0}'.format(diff.a_path))

    # check for untracked files 
    for path in repo.untracked_files:
      if path.startswith(content_rel_path):
        uncommitted_oval.append(path)
      
    return uncommitted_oval


def get_current_commit_hash():
    """ Returns hash for current commit. """
    repo = get_repo()
    return str(repo.head.commit)


def get_repo():
    return git.Repo(lib_repo.get_root_path())
