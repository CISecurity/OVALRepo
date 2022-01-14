#!/usr/bin/env/ python3
"""
Download the latest oval.xml.zip, unzip it
"""
__author__ = 'wmunyan'

import urllib.request
import datetime
import oval_decomposition
import lib_repo
import get_min_oval_version as lib_schema
import lib_search
import sys

def main():
    today = datetime.date.today()

    url  = r"http://oval.mitre.org/rep-data/5.10/org.mitre.oval/oval.xml"
    dest = r"C:\_Development\oval_repository\Serializer\processed\oval-%s-%s-%s.xml" % (today.year, today.month, today.day)

    (fn, msg) = urllib.request.urlretrieve(url, dest)

    message("INFO", "Downloaded file %s" % fn)

    oval_decomposition.decompose(fn, True)

    # get indexes
    definitions_index = lib_search.DefinitionsIndex(message)
    elements_index = lib_search.ElementsIndex(message)

    for defpath in lib_repo.get_definition_paths_iterator():
        message("INFO", "Determining minimum schema version for file %s" % defpath)
        result = lib_schema.determine_def_min_version(defpath, definitions_index, elements_index, True)
        message("INFO", "The minimum OVAL version supported by '{0}' is {1}.".format(defpath, result['minimum_version']))

def message(label, message):
    """ print a message """
    sys.stdout.write('\r{0}: {1}\n'.format(label.upper(), message))

if __name__ == '__main__':
    main()


