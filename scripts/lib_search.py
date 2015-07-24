#!/usr/bin/env/ python3
"""Library for indexing and searching OVAL elements in the repository.

Authors: David Ries <ries@jovalcm.com>

This library provides methods to create, maintain and query an index of OVAL 
elements in the repository using Whoosh, a pure Python lucene implementation.

Available classes:
- DefinitionsIndex: methods to create, maintain and query an index of definitions metadata
    - query: search the index for definitions metadata 
    - grouped_query: search the index for totals based on grouping
    - paged_query: search and return a page of results
    - other methods are used internally to build, maintain and interact with the index
- ElementsIndex: methods to create, maintain and query an index of definitions metadata
    - query: search the index for definitions metadata
    - grouped_query: search the index for totals based on grouping
    - paged_query: search and return a page of results
    - find_downstream_ids: get a list of all ids downstream from one or more elements
    - find_upstream_ids: get a list of all ids downstream from one or more elements
    - get_paths_from_ids: returns a list of paths for given list of OVAL ids
    - other methods are used internally to build, maintain and interact with the index

Notes:
- The index is designed to keep itself in sync with the current working directory. In
    normal usage, there should be no reason to manually update it. Simply calling the query
    method (or another method that calls query) will update the index, if necessary.

Available exceptions:
- Error: base class for exceptions in this module.
- RepositoryStateError: raised for repository state errors that affect search.
- IndexQueryError: raised for index query errors.

TODO:
- the escaping and _stored value approach is working, but lame
    - currently removing all special characters
    - stored values don't seem to work for multi-value fields (KEYWORDS)
"""

import os, os.path, shutil, inspect, datetime, random, re, pprint, sys, pickle, time, decimal
import whoosh.index, whoosh.fields, whoosh.analysis, whoosh.query, whoosh.sorting
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
        self.no_output = False
        self.index_searcher = False
        self.thread_safe = False

    def query(self, query_dict={}, query_options={}):
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
        if self.thread_safe:
            # require that index is on current commit and no uncommitted files
            if not self.index_based_on_current_commit():
                raise RepositoryStateError('The index is out of sync with current commit.')
        else:
            # auto update
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

        if query_fields:
            # create query by ANDing query_fields together
            query = query_fields[0] if len(query_fields) == 1 else whoosh.query.And(query_fields)
            #this.message('debug','parsed whoosh query:\n\t{0}'.format(repr(query)))
        else:
            query = whoosh.query.Every()

        # assemble query args
        if 'sorted' in query_options and query_options['sorted']:
            query_kwargs = { 'terms': False }
        else:
            query_kwargs = { 'scored': False, 'sortedby': False, 'terms': False }

        if 'group_by' in query_options:
            query_kwargs['groupedby'] = query_options['group_by']
            query_kwargs['maptype'] = whoosh.sorting.Count

        # get searcher (may already be open)
        index_searcher = self.get_searcher()

        # run query
        if 'page' in query_options and 'page_length' in query_options:
            results = index_searcher.search_page(query, query_options['page'], query_options['page_length'], **query_kwargs)
        else:
            results = index_searcher.search(query, **query_kwargs)

        if 'group_by' in query_options:
            return results.groups().copy()
        elif hasattr(results, 'pagenum'):
            return {
                'documents': [result.fields() for result in results],
                'page': results.pagenum,
                'page_count': results.pagecount,
                'page_length': results.pagelen
            }
        else:
            return [result.fields() for result in results]

    def grouped_query(self, query_dict={}, group_by=[]):
        """ Perform a query and group results """
        return self.query(query_dict, { 'group_by': group_by })

    def paged_query(self, query_dict={}, page=1, page_length=50):
        """ Perform a query and return a page of results """
        return self.query(query_dict, { 'page': page, 'page_length': page_length, 'sorted': True })

    def update(self, force_rebuild=False):
        """ Adds/updates all items in repo to index. Note: querying will call this automatically."""

        # if we've already updated the index during this script run, we're done!
        if self.index_updated:
            return False

        # we only need to do this once per script lifetime
        self.index_updated = True
        
        # if the index is not based on the current commit, rebuild from scratch
        if not self.index_based_on_current_commit():
            force_rebuild = True

        if force_rebuild:
            # get a new clean/empty index
            index = self.get_index(force_rebuild)

            # get a high-performance writer as per: https://pythonhosted.org/Whoosh/batch.html
            index_writer = index.writer(procs=4, multisegment=True)

            # index all documents
            documents = self.document_iterator()
            activity_description = 'Rebuilding'

            # update indexed commit
            self.set_indexed_commit_hash()
        else:
            # use the current index
            index = self.get_index()
            index_writer = index.writer()

            # delete uncommitted files that are in index already
            for filepath in self.get_indexed_uncommitted_files():
                index_writer.delete_by_term('path', filepath)

            # get list of uncommitted files and persist it
            uncommitted_files = lib_git.get_uncommitted_oval()
            self.set_indexed_uncommitted_files(uncommitted_files)

            # nothing to update? done!
            if not uncommitted_files:
                index_writer.commit()
                return

            # index only uncommitted files
            documents = self.document_iterator(uncommitted_files)
            activity_description = 'Updating'
        
        # add all definition files to index
        counter = 0
        for document in documents:
            counter = counter + 1
            self.status_spinner(counter, '{0} {1} index'.format(activity_description, self.index_name), self.item_label)
            if 'deleted' in document and document['deleted']:
                index_writer.delete_by_term('path', document['path'])
                #self.message('debug', 'Deleting from index:\n\t{0} '.format(document['path']))
            else:
                index_writer.add_document(**document)
                #self.message('debug', 'Upserting to index:\n\t{0} '.format(document['path']))
        
        self.status_spinner(counter, '{0} {1} index'.format(activity_description, self.index_name), self.item_label, True)
        index_writer.commit()

    def index_based_on_current_commit(self):
        """ Is the index based on the current commit? """
        current_commit = lib_git.get_current_commit_hash()
        indexed_commit = self.get_indexed_commit_hash()
        if indexed_commit == current_commit:
            return True
        else:
            return False

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

    def get_indexed_uncommitted_files(self):
        """ Returns a list of uncommitted files in the index. """
        filepath = os.path.join(lib_repo.get_scripts_path(), '__index__', self.index_name, 'indexed.uncommitted.pickle' )
        if not os.path.isfile(filepath):
            return {}
        else:
            with open(filepath, 'rb') as f:
                return pickle.load(f)

    def set_indexed_uncommitted_files(self, files=[]):
        """ Persist a list of uncommitted files in the index. """
        filepath = os.path.join(lib_repo.get_scripts_path(), '__index__', self.index_name, 'indexed.uncommitted.pickle' )
        with open(filepath, 'wb') as f:
            pickle.dump(files, f)

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

    def get_searcher(self):
        """ Returns a reference to the index searcher, creating if necssary. """
        if self.index_searcher:
            return self.index_searcher

        index = self.get_index()
        self.index_searcher = index.searcher()
        return self.index_searcher

    def close_searcher(self):
        """ Closes the index searcher. """
        if self.index_searcher:
            self.index_searcher.close()

        self.index_searcher = False

    def whoosh_escape(self, s):
        """ Escape a string for whoosh. """
        s = s.replace(',','').strip()
        return re.sub('[\s:\[\]]+','_', s)

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
        """ show a simple spinner status update on the CLI """
        length = 5
        position = count % length
        spinner = '|' + ('-' * position) + (' ' * (length - position)) + '>'

        sys.stdout.write('\rINFO: {0} {1} {2} {3}s'.format(task, spinner, count, label))
        if done and self.no_output:
            sys.stdout.write('\r{0}{1}'.format(' '*80, '\b'*80))
        elif done:
            sys.stdout.write('{0}\rINFO: {1} completed ({2} {3}s)\n'.format('\b'*10, task, count, label))

        sys.stdout.flush()

    def message(self, type, message):
        """ print a message """
        if not self.no_output:
            sys.stdout.write('\r{0}: {1}\n'.format(type.upper(), message))


class DefinitionsIndex(SearchIndex):
    """ A SearchIndex for OVAL definitions. """

    def __init__(self, message_method = False):
        """ constructor, set defaults for instances """
        super(DefinitionsIndex, self).__init__(message_method)
        self.index_name = 'oval_definitions'
        self.item_label = 'definition'
        self.schema_dictionary = { 
            'oval_id': whoosh.fields.ID(stored=True, unique=True),
            'oval_version': whoosh.fields.STORED(),
            'min_schema_version': whoosh.fields.NUMERIC(numtype=decimal.Decimal, decimal_places=4, signed=False, stored=True),
            'title': whoosh.fields.TEXT(stored=True, analyzer=whoosh.analysis.StemmingAnalyzer()),
            'description': whoosh.fields.TEXT(stored=True, analyzer=whoosh.analysis.StemmingAnalyzer()),
            'class': whoosh.fields.ID(stored=True),
            'status': whoosh.fields.ID(stored=True),
            'family': whoosh.fields.ID(stored=True),
            'platforms': whoosh.fields.KEYWORD(commas=True, scorable=True, stored=True),
            'products': whoosh.fields.KEYWORD(commas=True, scorable=True, stored=True),
            'contributors': whoosh.fields.KEYWORD(commas=True, scorable=True, stored=True),
            'organizations': whoosh.fields.KEYWORD(commas=True, scorable=True, stored=True),
            'reference_ids': whoosh.fields.KEYWORD(commas=True, scorable=True, stored=True),
            'path': whoosh.fields.ID(stored=True)
        }
        self.fields_with_stemming = [ 'title', 'description' ]

    def version_to_decimal(self, version_number):
        """ Converts a version number string to a decimal that can be sorted """
        components = version_number.split('.')
        
        if len(components) > 3:
            raise InvalidVersionNumberError('Invalid version number: {0}'.fomat(version_number))

        while len(components) < 3:
            components.append(0)

        major = int(components[0]) * 1000 
        minor = int(components[1]) 
        build = int(components[2]) / 1000 

        return decimal.Decimal(major + minor + build)

    def document_iterator(self, paths=False):
        """ Iterator yielding definition files in repo as indexable documents. """

        if not paths:
            # get all in repo
            paths = lib_repo.get_definition_paths_iterator()

        for path in paths:
            try:
                document = lib_xml.get_definition_metadata(path)
            except lib_xml.InvalidPathError as e:
                yield { 'path': e.path, 'deleted': True }
            else:
                document = self.whoosh_escape_document(document)
                document['min_schema_version'] = self.version_to_decimal(document['min_schema_version'])
                yield document


class ThreadSafeDefinitionsIndex(DefinitionsIndex):
    """ A search index for OVAL definitions that's safe to use from multiple processes at once.

        Note: this index will not auto-update because index updating cannot be done in concurrent processes.
        So, you must call .update() method to update index when it is out of sync with working directory.
    """

    def __init__(self, message_method = False):
        """ constructor, set defaults for instances """
        super(ThreadSafeDefinitionsIndex, self).__init__(message_method)
        self.thread_safe = True


class ElementsIndex(SearchIndex):
    """ A search index for OVAL elements. """

    def __init__(self, message_method = False):
        """ constructor, set defaults for instances """
        super(ElementsIndex, self).__init__(message_method)
        self.index_name = 'oval_elements'
        self.item_label = 'element'
        self.schema_dictionary = { 
            'oval_id': whoosh.fields.ID(stored=True),
            'element_type': whoosh.fields.ID(stored=True),
            'description': whoosh.fields.STORED(),
            'predicate': whoosh.fields.ID(stored=True),
            'oval_refs': whoosh.fields.KEYWORD(commas=True,scorable=True,stored=True),
            'path': whoosh.fields.ID(stored=True)
        }
        self.fields_with_stemming = [ ]

    def document_iterator(self, paths=False):
        """ Iterator yielding elements files in repo as indexable documents. """

        if not paths:
            # get all in repo
            paths = lib_repo.get_element_paths_iterator()

        for path in paths:
            try:
                document = lib_xml.get_element_metadata(path)
            except lib_xml.InvalidPathError as e:
                yield { 'path': e.path, 'deleted': True }
            else:
                document = self.whoosh_escape_document(document)
                yield document

    def find_downstream_ids(self, parent_ids, all_ids=set(), depth_limit=0, depth=1):
        """ Recursively find a list of all OVAL ids downstream from the provided OVAL id(a). """
        return self.find_related_element_ids('downstream', parent_ids, all_ids, depth_limit)

    def find_upstream_ids(self, child_ids, all_ids=set(), depth_limit=0):
        """ Recursively find a list of all OVAL ids upstream from the provided OVAL id(a). """
        return self.find_related_element_ids('upstream', child_ids, all_ids, depth_limit)

    def find_related_element_ids(self, direction, source_ids, all_ids=set(), depth_limit=0, depth=1):
        """ Recursively find a list of all OVAL ids upstream or downstream from the source OVAL id(a). """
        # optionally limit recursion depth
        # self.message('debug','{0} depth, {1} depth limit'.format(depth, depth_limit))
        if depth_limit > 0 and depth > depth_limit:
            return all_ids

        if isinstance(source_ids, str):
            source_ids = set([source_ids])
        elif isinstance(source_ids, list):
            source_ids = set(source_ids)

        # self.message('debug','checking for oval refs:\n\t{0}'.format('\n\t'.join(source_ids)))

        # get all parent elements from index and extract their oval_refs
        if direction == 'upstream':
            documents = self.query({ 'oval_refs': source_ids })
            found_ids = { document['oval_id'] for document in documents }
        else: 
            documents = self.query({ 'oval_id': source_ids })
            found_ids = { oval_ref for document in documents for oval_ref in document['oval_refs'].split(',') if document['oval_refs'] }

        # remove ids already in result set
        found_ids.difference_update(all_ids)
        # self.message('debug','--unique found--\n{0}'.format(repr(found_ids)))

        # add found ids to results, add all ids downstream from found_ids
        if found_ids:
            all_ids.update(found_ids)
            all_ids = self.find_related_element_ids(direction, found_ids, all_ids, depth_limit, depth + 1)

        return all_ids

    def get_paths_from_ids(self, ids):
        """ Returns a list of paths for all given ids. """

        # get unique ids as a set
        if isinstance(ids, str):
            ids = set([ids])
        elif isinstance(ids, list):
            ids = set(ids)

        # get all elements from index and extract their paths
        documents = self.query({ 'oval_id': ids})
        paths = [ document['path'] for document in documents ]
        
        return paths


class ThreadSafeElementsIndex(ElementsIndex):
    """ A SearchIndex for OVAL elements that's safe to use from multiple processes at once. 

        Note: this index will not auto-update because index updating cannot be done in concurrent processes.
        So, you must call .update() method to update index when it is out of sync with working directory.
    """

    def __init__(self, message_method = False):
        """ constructor, set defaults for instances """
        super(ThreadSafeElementsIndex, self).__init__(message_method)
        self.thread_safe = True


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


class InvalidVersionNumberError(Error):
    """Exception raised for invalid schema version numbers. """
    def __init__(self, message):
        self.message = message
