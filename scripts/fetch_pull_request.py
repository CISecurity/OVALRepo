__author__ = 'wmunyan'

import lib_git
import argparse

def main():
    """
    Do something...
    """
    # parse command line options
    parser = argparse.ArgumentParser(description='Fetches a pull request from a repository.')
    parser.add_argument('-p', '--pullreq', nargs='?', default="0", type=int, help='the pull request number')
    parser.add_argument('-r', '--repo', nargs='?', default="CISecurity/OVALRepo", type=str, help='repository from which to grab the pull request, in the form user/repo')
    parser.add_argument('-b', '--branch', nargs='?', default="master", type=str, help='branch from which to fetch the PR')
    args = vars(parser.parse_args())

    lib_git.fetch_pull_request(args['pullreq'], args['repo'], args['branch'])

if __name__ == '__main__':
    main()
