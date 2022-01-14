#!/usr/bin/env/ python3
"""Library for retreiving lists of updated files using Git.

Authors: David Ries <ries@jovalcm.com>

This library provides methods to retrieve lists of files that 
have been updated in the local working copy of the repository
using git.

Available functions:
- on_master: returns true if working directory is on master branch
- get_uncommitted_oval: returns list of OVAL files in the repository that are not committed
- compare_current_oval_to_remote: returns a list of OVAL files in current working directory that differ from a remote/branch.
- get_current_commit_hash: returns hash for current commit.

TODO:
- TBD
"""

import os, os.path, inspect, datetime, random, re, pprint
import git
import lib_repo
import json
import urllib.request, urllib.error, urllib.parse
import shlex


def on_master():
    """ Returns true if working directory is on master branch. """
    repo = get_repo()
    current_branch = str(repo.head.reference)
    return current_branch == 'master'


def get_uncommitted_oval():
    """ Returns list of OVAL files in the repository that are not committed. """
    repo = get_repo()

    uncommitted_oval = set()
    content_rel_path = lib_repo.get_repository_root_path().replace(lib_repo.get_root_path(),'')[1:]

    # check for changes in content staged for commit
    for diff in repo.index.diff(repo.head.commit, paths=content_rel_path):
      uncommitted_oval.add(diff.a_path)
      # print('staged: {0}'.format(diff.a_path))

    # check for changes in content not staged for commit
    for diff in repo.index.diff(None, paths=content_rel_path):
      uncommitted_oval.add(diff.a_path)
      # print('not staged: {0}'.format(diff.a_path))

    # check for untracked files 
    for path in repo.untracked_files:
      if path.startswith(content_rel_path):
        uncommitted_oval.add(path)

    # get full paths AND remove non-xml files, i.e. readme.md 
    uncommitted_oval = { os.path.join(lib_repo.get_root_path(), path) for path in uncommitted_oval if path.endswith('.xml') }
    #print('Uncommitted files list:\n\t{0}'.format('\n\t'.join(uncommitted_oval)))
      
    return uncommitted_oval




def compare_current_oval_to_remote(remote='origin', branch='master'):
    """ Returns a list of OVAL files in current working directory that differ from a remote/branch. """
    repo = get_repo()

    # get a reference the the remote repo
    all_remotes = { available_remote.name for available_remote in repo.remotes }
    if remote not in all_remotes:
        raise RemoteDoesNotExistError(remote)
    remote_repo = repo.remotes[remote].repo

    # get the branch of the remote repo
    all_branches = { available_branch.name for available_branch in remote_repo.heads }
    if branch not in all_branches:
        raise RemoteBranchDoesNotExistError(remote, branch)
    remote_branch = remote_repo.heads[branch]

    # get the head commit of the remote branch
    remote_headcommit = remote_branch.commit
    
    content_rel_path = lib_repo.get_repository_root_path().replace(lib_repo.get_root_path(),'')[1:]
    files = set()

    for diff in remote_headcommit.diff(None, paths=content_rel_path):
      files.add(diff.a_path)

    # check for untracked files 
    for path in repo.untracked_files:
      if path.startswith(content_rel_path):
        files.add(path)

    # get full paths AND remove non-xml files, i.e. readme.md 
    files = { os.path.join(lib_repo.get_root_path(), path) for path in files if path.endswith('.xml') }
    # print('Files list:\n\t{0}'.format('\n\t'.join(files)))

    return files


def get_current_commit_hash():
    """ Returns hash for current commit. """
    repo = get_repo()
    return str(repo.head.commit)


def get_repo():
    return git.Repo(lib_repo.get_root_path())

def fetch_pull_request(pullreq, repo='origin', branch='master'):
    print("fetching from repository %s" % (repo))
    print("loading pull request info for request %s..." % (pullreq))
    print()
    url = "https://api.github.com/repos/%s/pulls/%s" % (repo, pullreq)
    print(url)
    req = urllib.request.Request(url)
    response = urllib.request.urlopen(req)
    data = response.read().decode("UTF-8")
    if (data == ''):
        print("failed to speak with github.")
        return 3

    data = json.loads(data)
    pr = data
    if pr['head']['repo'] == None:
      print("remote repository for this pull request does not exist anymore.")
      return 6
    #display(pr)

    local  = shlex.quote('pull-request-%s' % (pullreq))
    branch = "master" #os.popen("git branch|grep '^*'|awk '{print $2}'").read().strip();
    if(branch != pr['base']['ref'] and branch != local):
        print("The pull request is based on branch '%s' but you're on '%s' currently" % (pr['base']['ref'], branch))
        return 4

    ret = os.system('git branch %s' % (local));
    ret = os.system('git checkout %s' % (local));
    if(ret != 0):
        print("Failed to create/switch branch")
        return 5

    print("pulling from %s (%s)" % (pr['head']['repo']['git_url'], pr['head']['ref']));

    # WKM - Modification to this script was to change the git piece to https, otherwise
    #       an error was thrown...
    git_url = shlex.quote(pr['head']['repo']['git_url']).replace("git://", "https://")
    ref = shlex.quote(pr['head']['ref'])
    ret = os.system('git pull -v --no-ff --no-commit %s %s' % (git_url, ref));

    print()
    print("done. examine changes and merge into master if good")

    return 0

"""Nicely display info about a given pull request
"""
def display(pr):
    print("%s - %s" % ('REQUEST %s' % pr.get('number'),pr.get('title')))
    print("    %s" % (pr['head']['label']))
    print("    by %s %s" % (pr['user'].get('login'), pr.get('created_at')[:10]))
    print("    %s" % (pr.get('html_url')))
    print()

class Error(Exception):
    """Base class for exceptions in this module."""
    pass


class RemoteDoesNotExistError(Error):
    """Exception raised for when attempting to access a remote that does not exist. """
    def __init__(self, remote):
        self.remote = remote
        self.message = "The remote '{0}' does not exist in the current repository.".format(remote)

class RemoteBranchDoesNotExistError(Error):
    """Exception raised for when attempting to access a remote that does not exist. """
    def __init__(self, remote, branch):
        self.remote = remote
        self.branch = branch
        self.message = "The branch '{0}' does not exists in the remote '{0}' repository.".format(branch, remote)

        
