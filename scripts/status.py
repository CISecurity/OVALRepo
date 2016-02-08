__author__ = 'wmunyan'

import sys
import lib_repo
import lib_search
import os, os.path

def main():
    query = {}

    definitions_index = lib_search.DefinitionsIndex(message)
    #revisions_index   = lib_search.RevisionsIndex(message)

    #filtered_oval_ids = revisions_index.get_definition_ids({ 'date': revisions_index.format_daterange("20151201", "20151231") })
    #filtered_oval_ids = revisions_index.get_definition_ids({ 'status': 'INITIAL SUBMISSION' })
    #for ovalid in filtered_oval_ids:
    #    message("INFO", "Filtered oval id is %s" % ovalid)

    query["status"] = "INITIAL SUBMISSION"
    #query['oval_id'] = filtered_oval_ids

    query_results = definitions_index.query(query)
    #definition_ids = { document['oval_id'] for document in query_results }

    for document in query_results:
        message("INFO", "OVAL ID %s has status %s" % (document["oval_id"], document["status"]))
        

    #response = input("\n :::: Remove all orphans? (N[o] / y[es]): ")
    #if response != 'y' and response != 'Y':
    #    return

    #message("INFO", "\n\n")
    
    #for ok in orphans.keys():
    #    message("INFO", "Deleting Orphan '%s'" % ok)
    #    os.remove(orphans[ok])

def message(label, message, silent=False):
    """ print a message """
    if not silent:
        sys.stdout.write('\r{0}: {1}\n'.format(label.upper(), message))

if __name__ == '__main__':
    main()