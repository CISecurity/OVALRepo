#!/usr/bin/env/ python3
""" Adds the xsi namespace to a given file. This script is a work around for this issue:

https://github.com/CISecurity/OVALRepo/issues/80

Once the above issue is resolved, this script can be deleted. 

For usage information, please see the command line help:
    python3 set_xsi_namespace.py -h 

"""

import argparse, sys, time, pprint, re, os
import lib_repo, lib_xml, lib_search
from lxml import etree
 
schema_path_cache = {}

def message(label, message):
    """ print a message """
    sys.stdout.write('\r{0}: {1}\n'.format(label.upper(), message))

def set_xsi_namespace(path):
    """ adds xsi namespace to root element of given path """

    text = None

    with open(path, mode='rt', encoding='utf-8') as f:
        text = f.read()

    if re.search(r'.*xmlns:xsi', text):
        message('info', 'xmlns:xsi detected in ' + path)
    else:
        text = re.sub(r'<([a-z].+?)>', r'<\1 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">', text, 1, re.MULTILINE)
        with open(path , mode='wt', encoding='utf-8') as f:
            f.write(text)
def main():

    # parse command line options
    parser = argparse.ArgumentParser(description='Set xsi namespace in a given xml file\'s root element')
    parser.add_argument('-p', '--path', help='path to file')

    args = vars(parser.parse_args())

    if (not args['path'] or not os.path.isfile(args['path'])):
        parser.print_help()
        message('error',"Please specify a valid --path")
        sys.exit(0)
    else:
        result = set_xsi_namespace(args['path'])

if __name__ == '__main__':
    main()
