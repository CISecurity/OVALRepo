#!/usr/bin/env/ python3
"""Library for indexing and searching OVAL elements in the repository.

Authors: David Ries <ries@jovalcm.com>

This library provides methods to create, maintain and query an index of OVAL 
elements in the repository using Whoosh, a pure Python lucene implementation.

Available classes:
- DefinitionsIndex: methods to create, maintain and query an index of definitions metadata
    - query: search the index for definitions metadata 
    - other methods are used internally to build, maintain and interact with the index
- ElementsIndex: methods to create, maintain and query an index of definitions metadata
    - query: search the index for definitions metadata
    - find_downstream_ids: get a list of all ids downstream from one or more elements
    - other methods are used internally to build, maintain and interact with the index

Available exceptions:
- Error: base class for exceptions in this module.
- RepositoryStateError: raised for repository state errors that affect search.
- IndexQueryError: raised for index query errors.

TODO:
- TBD
"""

import os, os.path, shutil, inspect, datetime, random, re, pprint, sys
import whoosh.index, whoosh.fields, whoosh.analysis, whoosh.query
import lib_repo, lib_xml, lib_git


class SearchIndex:
    """ Abstract base class including generic methods to create, maintain and query an index. 

        This class should not be instantiated! 
        Child class must implement the following or this class will break (see examples below):
            self.index_name: <str> property
            self.item_label: <str> property
            self.schema_dictionary: <dictionary> property
            self.document_iterator: method that returns source data files as indexable documents
    """

    def __init__(self, message_method = False):
        """ constructor, set defaults for instances """
        self.message = message_method or self.message
        self.index_updated = False

    def query(self, query_dict={}):
        """ Perform a query against an index. 

            query_dict: {
                '<field name>' : ['<value>', '<value>', ...],
                '<field name>' : '<value>',
                ....
            }
            For example:
            {
                'platforms': ['Microsoft Windows NT', 'Microsoft Windows 2000'], 
                'products': 'mozilla', 
                'contributors': 'Jonathan Baker'
            }
        """
        # update the index
        self.update()

        # construct query by looping through schema fields and adding terms
        query_fields = []
        for field in self.get_fieldnames():
            if field in query_dict and query_dict[field]:
                # get field values as list
                values = query_dict[field]
                if isinstance(values, str):
                    values = [values]
                
                # get a whoosh.query.Term for each value
                field_values = []
                for value in values:
                    field_values.append(whoosh.query.Term(field, self.whoosh_escape(value)))

                # OR field values together and add to query_fields list
                query_fields.append(whoosh.query.Or(field_values))

        if not query_fields:
            raise IndexQueryError('No fields with values found in query.')

        # create query by ANDing query_fields together
        query = query_fields[0] if len(query_fields) == 1 else whoosh.query.And(query_fields)
        #this.message('debug','parsed whoosh query:\n\t{0}'.format(repr(query)))

        # run query against index
        index = self.get_index()
        with index.searcher() as index_searcher:
            results = index_searcher.search(query, scored=False, sortedby=False, terms=False)
            return [result.fields() for result in results]
            
    def update(self, force_rebuild=False):
        """ Adds/updates all items in repo to index. Note: querying will call this automatically."""

        # skip rebuild if unncecessary
        if not force_rebuild and (self.index_updated or not self.in_sync()):
            return False

        # get reference to the index and a writer
        index = self.get_index(force_rebuild)
        index_writer = index.writer()

        # add all definition files to index
        counter = 0
        for document in self.document_iterator():
            counter = counter + 1
            self.status_spinner(counter, 'Building {0} index'.format(self.index_name), self.item_label)
            index_writer.add_document(**document)
        index_writer.commit()
        self.status_spinner(counter, 'Building {0} index'.format(self.index_name), self.item_label, True)

        # update indexed commit
        self.set_indexed_commit_hash()
        self.index_updated = True

    def in_sync(self):
        """  Determines whether or not index is in sync with working directory. """

        # check require that we're on master branch
        if not lib_git.on_master():
            this.message('warning','The repository is not on the master branch.')

        # require all OVAL to be committed
        if lib_git.get_uncommitted_oval():
            raise RepositoryStateError('Commit changes to OVAL before performing searchs:\n\t{0}.'.format('\n\t'.join(lib_git.get_uncommitted_oval())))

        # if the index is already in sync with current commit, we're done
        current_commit = lib_git.get_current_commit_hash()
        indexed_commit = self.get_indexed_commit_hash()
        if indexed_commit == current_commit:
            return False
        else:
            return True

    def get_fieldnames(self):
        return self.schema_dictionary.keys()

    def get_indexed_commit_hash(self):
        """ Returns the git commit hash that the index was built on. """
        filepath = os.path.join(lib_repo.get_scripts_path(), '__index__', self.index_name, 'git.commit.base.txt' )
        if not os.path.isfile(filepath):
            return 'does-not-exist'
        else:
            with open(filepath, 'rt') as f:
                commit_hash = f.read()
            return commit_hash

    def set_indexed_commit_hash(self):
        """ Persists the git commit hash that the index was built on. """
        current_commit_hash = lib_git.get_current_commit_hash()

        filepath = os.path.join(lib_repo.get_scripts_path(), '__index__', self.index_name, 'git.commit.base.txt' )
        with open(filepath, 'wt') as f:
            f.write(current_commit_hash)

    def get_index(self, force_rebuild=False):
        """ Returns a reference to the search index, creating if necessary. """
        indices_path = os.path.join(lib_repo.get_scripts_path(), '__index__')
        index_path = os.path.join(indices_path, self.index_name)

        if force_rebuild and os.path.exists(index_path):
            shutil.rmtree(index_path)

        if not os.path.exists(indices_path):
            os.mkdir(indices_path)

        if not os.path.exists(index_path):
            os.mkdir(index_path)

        if not whoosh.index.exists_in(index_path, self.index_name):
            schema_dictionary = self.schema_dictionary
            whoosh.index.create_in(index_path, whoosh.fields.Schema(**schema_dictionary), self.index_name)

        return whoosh.index.open_dir(index_path, self.index_name)

    def whoosh_escape(self, s):
        """ Escape a string for whoosh. """
        s = s.replace(',','')
        return re.sub('[ :\[\]]','_', s)

    def whoosh_escape_document(self, document):
        """ Escape all document fields, adding _stored values where necessary. """
        original_values = {}
        for field in document.keys():
            value = document[field]
            if isinstance(value, str):
                escaped_value = self.whoosh_escape(value)
                stored_value = value.replace(',','')
            elif value:
                escaped_value = ",".join([ self.whoosh_escape(item_value) for item_value in value ])
                stored_value = ",".join([ item_value.replace(',','') for item_value in value ])
                value = ",".join(value)
            else:
                escaped_value = ''
                value = ''
            document[field] = escaped_value
            if escaped_value != value:
                original_values['_stored_{0}'.format(field)] = stored_value
        document.update(original_values)
        return document

    def status_spinner(self, count, task, label, done=False):
        """ show a simple progress bar on the CLI """
        length = 5
        position = count % length
        spinner = '|' + ('-' * position) + (' ' * (length - position)) + '>'

        sys.stdout.write('\rINFO: {0} {1} {2} {3}s'.format(task, spinner, count, label))
        if (done):
            sys.stdout.write('{0}\rINFO:{1} completed: {2} {3}s\n'.format('\b'*10, task, count, label))

        sys.stdout.flush()

    def message(type, message):
        """ print a message """
        sys.stdout.write('\r{0}: {1}\n'.format(type.upper(), message))


class DefinitionsIndex(SearchIndex):
    """ A SearchIndex for OVAL definitions. """

    def __init__(self, message_method = False):
        """ constructor, set defaults for instances """
        super().__init__(message_method)
        self.index_name = 'oval_definitions'
        self.item_label = 'definition'
        self.schema_dictionary = { 
            'oval_id': whoosh.fields.ID(stored=True, unique=True),
            'oval_version': whoosh.fields.STORED(),
            'title': whoosh.fields.TEXT(stored=True, analyzer=whoosh.analysis.StemmingAnalyzer()),
            'description': whoosh.fields.TEXT(stored=True, analyzer=whoosh.analysis.StemmingAnalyzer()),
            'class': whoosh.fields.ID(stored=True),
            'status': whoosh.fields.ID(stored=True),
            'family': whoosh.fields.ID(stored=True),
            'platforms': whoosh.fields.KEYWORD(commas=True, scorable=True, stored=True),
            'products': whoosh.fields.KEYWORD(commas=True, scorable=True, stored=True),
            'contributors': whoosh.fields.KEYWORD(commas=True, scorable=True, stored=True),
            'organizations': whoosh.fields.KEYWORD(commas=True, scorable=True, stored=True),
            'reference_ids': whoosh.fields.KEYWORD(commas=True, scorable=True, stored=True)
        }

    def document_iterator(self):
        """ Iterator yielding all definitions in repo as indexable documents. """
        for path in lib_repo.get_definition_paths_iterator():
            document = lib_xml.get_definition_metadata(path)
            document = self.whoosh_escape_document(document)
            yield document


class ElementsIndex(SearchIndex):
    """ A SearchIndex for OVAL elements. """

    def __init__(self, message_method = False):
        """ constructor, set defaults for instances """
        super().__init__(message_method)
        self.index_name = 'oval_elements'
        self.item_label = 'element'
        self.schema_dictionary = { 
            'oval_id': whoosh.fields.ID(stored=True),
            'element_type': whoosh.fields.ID(stored=True),
            'description': whoosh.fields.STORED(),
            'predicate': whoosh.fields.ID(stored=True),
            'oval_refs': whoosh.fields.KEYWORD(commas=True,scorable=True,stored=True)
        }

    def document_iterator(self):
        """ Iterator yielding all definitions in repo as indexable documents. """
        for path in lib_repo.get_element_paths_iterator():
            document = lib_xml.get_element_metadata(path)
            document = self.whoosh_escape_document(document)
            yield document

    def find_downstream_ids(self, parent_ids, all_ids=False):
        """ Recursively find a list of all OVAL ids downstream from the provided OVAL id(a). """
        if isinstance(parent_ids, str):
            parent_ids = set(parent_ids)

        self.update()
        #self.message('debug','checking for oval refs:\n\t{0}'.format('\n\t'.join(parent_ids)))

        if not all_ids:
            all_ids = parent_ids.copy()

        # get all parent elements from index and extract their oval_refs
        documents = self.query({ 'oval_id': parent_ids})
        found_ids = set()
        found_ids = { oval_ref for document in documents for oval_ref in document['oval_refs'].split(',') if document['oval_refs'] }
        
        # remove ids already in result set
        found_ids.difference_update(all_ids)
        #self.message('debug','--unique found--\n{0}'.format(repr(found_ids)))

        # add found ids to results, add all ids downstream from found_ids
        if found_ids:
            all_ids.update(found_ids)
            all_ids = self.find_downstream_ids(found_ids, all_ids)

        return all_ids


class Error(Exception):
    """Base class for exceptions in this module."""
    pass

class RepositoryStateError(Error):
    """Exception raised for repository state errors that affect search. """
    def __init__(self, message):
        self.message = message

class IndexQueryError(Error):
    """Exception raised for index query errors. """
    def __init__(self, message):
        self.message = message
