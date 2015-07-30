#!/usr/bin/env python3

"""git pull-request

Automatically check out github pull requests into their own branch.

Usage:

    git pull-request <OPTIONS> [<pull request number>]

Options:

    -h, --help
        Display this message and exit

    -r <repo>, --repo <repo>
        Use this github repo instead of the 'remote origin' or 'github.repo'
        git config settings. Needs to be in "user/repository" form

Copyright (C) 2011 by Andreas Gohr <andi@splitbrain.org>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
"""
import sys
import getopt
import json
import urllib.request, urllib.error, urllib.parse
import os
import re
import shlex

def main():
    repo, remote = '', None

    # parse command line options
    try:
        opts, args = getopt.getopt(sys.argv[1:], "hr:", ["help","repo:"])
    except getopt.error as msg:
        print(msg)
        print("for help use --help")
        sys.exit(2)
    # process options
    for o, a in opts:
        if o in ("-h", "--help"):
            print(__doc__)
            sys.exit(0)
        if o in ("-r", "--repo"):
            if re.search('/', a):
              repo = a
            else:
              remote = a

    if remote is None and repo == '':
        remote = 'origin'

    # get repo name from git config:
    if(repo == ''):
        repo = os.popen('git config github.repo').read().strip()

    # get repo name from origin
    if(repo == '' or remote != None):
        escaped = shlex.quote(remote)
        origin = os.popen("git config remote.%s.url" % escaped).read()
        origin = re.sub("(\.git)?\s*$", "", origin)
        m = re.search(r"\bgithub\.com[:/]([^/]+/[^/]+)$", origin)
        if(m != None):
            repo = m.group(1)

    if(repo == ''):
        print(color_text("Failed to determine github repository name",'red',True))
        print("The repository is usually automatically detected from your remote origin.")
        print("If your origin doesn't point to github, you can specify the repository on")
        print("the command line using the -r parameter, by specifying either a remote or")
        print("the full repository name (user/repo), or configure it using")
        print("git config github.repo <user>/<repository>")
        sys.exit(1)

    # process arguments
    if len(args):
        ret = fetch(repo, args[0])
    else:
        ret = show(repo)

    sys.exit(ret)

"""Nicely display info about a given pull request
"""
def display(pr):
    print("%s - %s" % (color_text('REQUEST %s' % pr.get('number'),'green'),pr.get('title')))
    print("    %s" % (color_text(pr['head']['label'],'yellow')))
    print("    by %s %s" % (pr['user'].get('login'), color_text(pr.get('created_at')[:10],'red')))
    print("    %s" % (color_text(pr.get('html_url'),'blue')))
    print()

"""List open pull requests

Queries the github API for open pull requests in the current repo
"""
def show(repo):

    print("loading open pull requests for %s..." % (repo))
    print()
    url = "https://api.github.com/repos/%s/pulls" % (repo)
    req = urllib.request.Request(url)
    try:
      response = urllib.request.urlopen(req)
    except urllib.error.HTTPError as msg:
      print("error loading pull requests for repo %s: %s" % (repo, msg))
      exit(1)

    data = response.read().decode("UTF-8")
    if (data == ''):
        print("failed to speak with github.")
        return 3

    data = json.loads(data)
    #print json.dumps(data,sort_keys=True, indent=4)

    for pr in data:
        display(pr)
    return 0


def fetch(repo, pullreq):

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
    display(pr)

    local  = shlex.quote('pull-request-%s' % (pullreq))
    branch = "master" #os.popen("git branch|grep '^*'|awk '{print $2}'").read().strip();
    if(branch != pr['base']['ref'] and branch != local):
        print(color_text("The pull request is based on branch '%s' but you're on '%s' currently" % \
            (pr['base']['ref'], branch),'red',True))
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
    ret = os.system('git pull %s %s' % (git_url, ref));

    print()
    print(color_text("done. examine changes and merge into master if good",'green'));

    return 0


"""Return the given text in ANSI colors

From http://travelingfrontiers.wordpress.com/2010/08/22/how-to-add-colors-to-linux-command-line-output/
"""
def color_text(text, color_name, bold=False):
    colors = (
        'black', 'red', 'green', 'yellow',
        'blue', 'magenta', 'cyan', 'white'
    )

    if not sys.stdout.isatty():
        return text

    if color_name in colors:
        return '\033[{0};{1}m{2}\033[0m'.format(
            int(bold),
            colors.index(color_name) + 30,
            text)
    else:
        return text

if __name__ == "__main__":
    main()
