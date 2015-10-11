#!/usr/bin/env/ python3
""" Searches the index for a given OVAL element and outputs relevant information

For usage information, please see the command line help:
    python3 get_element_from_index.py -h

"""

import argparse, sys, time, pprint, re, os
import lib_repo, lib_xml, lib_search
from lxml import etree

def message(label, message):
    """ print a message """
    sys.stdout.write('\r{0}: {1}\n'.format(label.upper(), message))

def main():
    """ parse command line options and generate file """

    # parse command line options
    parser = argparse.ArgumentParser(description='Searches the index for a given OVAL element and outputs relevant information')
    parser.add_argument('-i', '--id',  help='id of definition fragment')

    args = vars(parser.parse_args())

    if (not args['id']):
        parser.print_help()
        message('error',"Please specify --id.")
        sys.exit(0)

    # get index
    elements_index = lib_search.ElementsIndex(message)

    documents = elements_index.query({ 'oval_id': args['id'] })

    if len(documents) == 0:
        message('info',"No elements having id '{0}' found.".format(args['id']))
        sys.exit(0)

    print(repr(documents))

if __name__ == '__main__':
    main()
