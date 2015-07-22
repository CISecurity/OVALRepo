#!/usr/bin/env/ python3
"""Library for parsing, creating and validating XML files.

Authors: David Ries <ries@jovalcm.com>
        Gunnar Engelbach <Gunnar.Engelbach@ThreatGuard.com>
        

This library provides methods to parse OVAL XML, create OVAL definitions,
validate OVAL definitions and other XML-related functions TBD.

Available functions:
- get_definition_metadata: takes a filepath for an OVAL definition file and returns dictionary of metadata
- get_element_metadata: takes a filepath for an OVAL element file and returns dictionary of metadata
- schema_validate: schema validate an XML file
- schema_validate_tree: schema validate an XML tree
- schematron_validate: schematron validate an XML file
- get_schematron_xsl_from_schema: gets path to schematron from schema_path, creating if necessary 
- apply_xslt: applies an xslt to an XML tree

Available classes:
- OvalGenerator: methods to assist in building an OVAL definitions file

Available exceptions:
- Error: base class for exceptions in this module
- SchemaValidationError: raised for schema valdiation errors
- SchematronValidationError: raised for schematron valdiation errors

TODO:
- Schematron validation (xsl transform) is extremely slow; improve or replace (?saxon?)
"""

import os.path
import inspect
import datetime
import random
import re
import lib_repo
#from xml.sax.saxutils import escape
from lxml import etree

schema_cache = {}

def get_element_change_status(left, right):
    """Compare two OVAL elements recursively and determine if any substantive changes have been made.
    
    @type left: Element
    @param left: the new element
    @type right: Element
    @param right: the existing element in the repository
    
    @rtype: int
    @return: And integer value indicating the level of change:
      -2 = an error has occurred
      -1 = these are not the same elements
       0 = no changes or the elements are not the same item
       1 = has changes, but they are inconsequential (have no affect on functionality)
       2 = changes of consequence
    """
    
    import traceback
    
    ignore_attributes = ['version']
    unimportant_attributes = ['comment']
    
    
    if left is None:
        if right is None:
            return -1
        else:
            return False
    elif right is None:
        return -1
    
    try:        
        # Compare tags
        if left.tag != right.tag:
            return -1
        
        # If this is the top-level element, make certain we really are dealing with the same elements
        left_id = left.get('id')
        if left_id is not None:     # Only primary elements have OVAL IDs
            left_type = lib_repo.get_element_type_from_oval_id(left_id)
            if left_type is not None and left_type in lib_repo.supported_element_types:
                right_id = right.get('id')
                right_type = lib_repo.get_element_type_from_oval_id(right_id)
                if not right_id or right_id is None:
                    return -1
                if left_type != right_type:
                    return -1

        # Compare text
        if left.text is not None:
            if right.text is not None:
                if left.text.strip() != right.text.strip():
                    return 2
            else:
                return 2
        elif right.text is not None:
            return 2
                
        
        # Compare tails?  Do OVAL Elements even have tails?
#         if left.tail != right.tail:
#             return 2
        
        # Compare attributes
        #   But don't compare the version attribute -- so we can't just use cmp()
        try:
            for key in left.keys():
                if not key in ignore_attributes:
                    lvalue = left.get(key)
                    rvalue = right.get(key)
                    if lvalue != rvalue:
                        if key in unimportant_attributes:
                            return 1
                        else:
                            return 2
        except:
            # An exception at this point probably indicates that the attributes don't match
            return 2
        
        # Compare children (recurse on this method)
        #   Be sure we are enumerating the same children in the same order
        result = 0
        
        left_children = list(left)
        right_children = list(right)
        if len(left_children) != len(right_children):
            return 2
        
        for index, lchild in enumerate(left_children):
            # Get the matching right_child, if any
            # and compare children
            rchild = right_children[index]
            sub_result = get_element_change_status(lchild, rchild)
            if sub_result != 0 and sub_result != 1:  # Anything else is reason to stop processing
                return sub_result
            elif sub_result == 1:
                result = 1
                    
        return result
    
    except:
        print (traceback.format_exc())
        return -2
    
    
def load_standalone_element(path):
    """Assuming that the path references a file that exists and the contents of that file is valid XXML
    that contains a single OVAL Element, loads and returns that element or None if this could not be done.
    
    @type path: string
    @param path: the path to the file
    
    @rtype: lxml.etree.element
    @return: the XML element or None
    """
    
    if not path or path is None:
        return None
    
    try:
        tree = etree.parse(path)
        return tree.getroot()
    except Exception:
        return None

def get_definition_metadata(filepath):
    """ Takes a filepath for an OVAL definition file and returns dictionary of metadata. """
    try:
        tree = etree.parse(filepath)
    except OSError as e:
        raise InvalidPathError(filepath)
    
    root = tree.getroot()
    ns_map = { 'oval-def': 'http://oval.mitre.org/XMLSchema/oval-definitions-5' }
    
    contributors = root.findall('./oval-def:metadata/oval-def:oval_repository//oval-def:contributor', namespaces=ns_map)
    return {
        'oval_id': root.get('id'),
        'oval_version' : root.get('version'),
        'title': root.findtext('./oval-def:metadata/oval-def:title', namespaces=ns_map),
        'description': root.findtext('./oval-def:metadata/oval-def:description', namespaces=ns_map),
        'class': root.get('class'),
        'status': root.findtext('./oval-def:metadata/oval-def:oval_repository/oval-def:status', namespaces=ns_map),
        'family': ''.join([ affected.get('family') for affected in root.iterfind('./oval-def:metadata/oval-def:affected', namespaces=ns_map) ]),
        'platforms': { platform.text for platform in root.iterfind('./oval-def:metadata/oval-def:affected/oval-def:platform', namespaces=ns_map) },
        'products': { product.text for product in root.iterfind('./oval-def:metadata/oval-def:affected/oval-def:product', namespaces=ns_map) },
        'contributors': { contributor.text for contributor in contributors },
        'organizations': { contributor.get('organization') for contributor in contributors },
        'reference_ids': { reference.get('ref_id') for reference in root.iterfind('./oval-def:metadata/oval-def:reference', namespaces=ns_map) },
        'path' : filepath
    }


def get_element_metadata(filepath):
    """ Takes a filepath for an OVAL element file and returns dictionary of metadata. """
    try:
        tree = etree.parse(filepath)
    except Exception:
        raise InvalidPathError(filepath)

    tree = etree.parse(filepath)
    root = tree.getroot()
    ns_map = { 'oval-def': 'http://oval.mitre.org/XMLSchema/oval-definitions-5' }

    tag_name = str(root.tag).rsplit('}',1)[1]
    tag_components = tag_name.rsplit('_',1)
    element_type = tag_components[0]
    
    # get all *_refs attributes
    attribute_id_refs = root.xpath("//@*[name()='definition_ref' or name()='test_ref' or name()='object_ref' or name()='state_ref' or name()='var_ref']")
    # get filter, object_reference
    text_id_refs = root.xpath("//*[name()='filter' or name()='object_reference']/text()", smart_strings=False)
    # combine, unique
    id_refs = set(attribute_id_refs + text_id_refs)
    
    if element_type == 'definition':
        predicate = ''
        description = root.findtext('./oval-def:metadata/oval-def:title', namespaces=ns_map)
    else:
        predicate = tag_components[0]
        element_type = tag_components[1]
        description = root.get('comment') or ''

    return {
        'oval_id': root.get('id'),
        'element_type': element_type,
        'description': description,
        'predicate': predicate,
        'oval_refs': id_refs,
        'path' : filepath
    }

def schema_validate_tree(tree, schema_path, use_cache=0):

    schema_validator = None

    global schema_cache

    if use_cache == 1:
        if not schema_path in schema_cache:
            schema_cache[schema_path] = etree.XMLSchema(etree.parse(schema_path))

        schema_validator = schema_cache[schema_path]
    else:
        schema_validator = etree.XMLSchema(etree.parse(schema_path))

    if not schema_validator.validate(tree):
        error_msg = schema_validator.error_log.last_error.message
        raise SchemaValidationError(error_msg)

def schema_validate(filepath, schema_path):
    """ Schema validate an XML file. """
    # parse xml and schema
    oval_tree = etree.parse(filepath)
    schema_tree = etree.parse(schema_path)

    # create XMLSchema validator and validate
    # print(etree.tostring(schema_tree))
    schema_validator = etree.XMLSchema(schema_tree)
    if not schema_validator.validate(oval_tree):
        error_msg = schema_validator.error_log.last_error.message
        raise SchemaValidationError(error_msg)


def schematron_validate(filepath, schema_path):
    """ Schematron validate an XML file. """
    # parse target xml
    xml_tree = etree.parse(filepath)
    
    # get schematron path
    schematron_path = get_schematron_xsl_from_schema(schema_path)

    # apply schematron xsl to create svrl result
    svrl = apply_xslt(xml_tree, schematron_path)
    svrl_root = svrl.getroot()

    # extract results from svrl
    failures = svrl_root.xpath('//svrl:failed-assert', namespaces={'svrl': 'http://purl.oclc.org/dsdl/svrl'})
    messages = []
    if failures:
        for failure in failures:
            #test = failure.get('test')
            message = failure[0].text if len(failure) else 'no message output by schematron'
            messages.append(message)
        raise SchematronValidationError(messages)


def get_schematron_xsl_from_schema(schema_path, force_generate=False):
    """ Gets path to schematron from schema_path, creating if necessary """
    sch_path = schema_path.replace('.xsd','-schematron.sch')
    xsl_path = schema_path.replace('.xsd','-schematron.xslt')

    # generate sch if it doesn't exist or force_generate
    if (not os.path.isfile(sch_path) or force_generate):
        print('INFO: extracting schematron from schema\n\t...this may take 10+ minutes...')
        
        # get path to schematron tools
        scripts_path = os.path.dirname(os.path.abspath(inspect.getfile(inspect.currentframe())))
        schematron_tools_path = os.path.realpath(scripts_path + '/lib/iso-schematron-xslt1')

        # parse schema
        schema_tree = etree.parse(schema_path)

        # extract schematron from schema
        sch_tree = apply_xslt(schema_tree, schematron_tools_path + '/ExtractSchFromXSD.xsl')
        
        # write to file
        with open(sch_path, mode='wt', encoding='utf-8') as f:
          f.write(str(sch_tree))

        # force regenerate of xsl
        force_generate = True

    # generate xsl from sch if it doesn't exist or force_generate
    if (not os.path.isfile(xsl_path) or force_generate):
        print('INFO: generating schematron xsl from sch')

        # get path to schematron tools
        scripts_path = os.path.dirname(os.path.abspath(inspect.getfile(inspect.currentframe())))
        schematron_tools_path = os.path.realpath(scripts_path + '/lib/iso-schematron-xslt1')

        # parse sch
        sch_tree = etree.parse(sch_path)

        # these preprocessing steps don't seem to be necessary:
        # preprocess schema with iso_dsdl_include.xsl to assemble the schema from parts
        # schematron_tree = apply_xslt(schematron_tree, schematron_tools_path + '/iso_dsdl_include.xsl')
        # preprocess with iso_abstract_expand.xsl to convert abstract patterns to real patterns
        # schematron_tree = apply_xslt(schematron_tree, schematron_tools_path + '/iso_abstract_expand.xsl')

        # convert sch to XSLT script using iso_svrl_for_xslt1.xsl
        xslt_tree = apply_xslt(sch_tree, schematron_tools_path + '/iso_svrl_for_xslt1.xsl')
        
        # write to file
        with open(xsl_path, mode='wt', encoding='utf-8') as f:
          f.write(str(xslt_tree))

    return xsl_path


def apply_xslt(xml_tree, xslt_path):
    """ Apply xslt to an XML tree """
    xslt_root = etree.parse(xslt_path)
    transformer = etree.XSLT(xslt_root)
    result_tree = transformer(xml_tree)
    return result_tree


class Error(Exception):
    """Base class for exceptions in this module."""
    pass


class InvalidPathError(Error):
    """Exception raised for when a path does not exist. """
    def __init__(self, path):
        self.path = path


class SchemaValidationError(Error):
    """Exception raised for schema validation errors. """
    def __init__(self, message):
        self.message = message


class SchematronValidationError(Error):
    """Exception raised for schematron validation errors. """
    def __init__(self, messages):
        self.messages = messages

class OvalGenerator:
    """ Methods to assist in the building of an OVAL definitions file. """

    supported_oval_elements = ('definition','test','object','state','variable')
    product_name = 'CIS OVAL Repository'
    generator_version = '0.1'
    oval_schema_version = '5.11.1'
    queue_mode = None

    def __init__(self, message_method = False):
        """ constructor, set defaults for instances """
        self.message = message_method or self.message

    def queue_element_file(self, element, filepath):
        """ add an OVAL element to an output queue file """
        if element not in OvalGenerator.supported_oval_elements:
            self.message('warning', '"{0}" is not a supported OVAL element.'.format(element))
            return

        if not hasattr(self, 'tmp'):
            self.tmp = { }
            self.tmp_n = random.randrange(1000000,9999999)

        if element not in self.tmp:
            self.tmp[element] = open('./queue.{0}.{1}.xml'.format(self.tmp_n,element), mode='wt', encoding='utf-8')

        with open(filepath, mode='rt', encoding='utf-8') as xml_file:
            xml = xml_file.read().replace('<?xml version="1.0" encoding="UTF-8"?>','')
            xml = re.sub('^','\t\t',xml,0,re.MULTILINE)
            self.tmp[element].write(xml)
            self.tmp[element].write('\n')

    def clear(self):
        """ clears all elements in the queue """

        if not hasattr(self, 'tmp'):
            return

        for key in self.tmp:
            self.tmp[key].close();
            os.remove(self.tmp[key].name)

    def set_queue_mode(self, mode):
        """ sets queue to read or write mod """

        if self.queue_mode == mode:
            return

        if not hasattr(self, 'tmp'):
            return

        file_mode = None

        if mode == 'read':
            file_mode = 'rt'
        elif mode == 'write':
            file_mode = 'wt'
        else:
            message('error', "Invalid file mode {0} in set_queue_mode")
            return

        # close queue files and reopen in given mode
        for key in self.tmp:
            self.tmp[key].close();
            self.tmp[key] = open(self.tmp[key].name, mode=file_mode, encoding='utf-8')

        self.queue_mode = mode

    def to_string(self):
        """ serializes queued elements to a string """

        self.set_queue_mode('read')

        oval_timestamp = datetime.datetime.utcnow().strftime('%Y-%m-%dT%H:%M:%S')
        string = """<oval_definitions
            xmlns="http://oval.mitre.org/XMLSchema/oval-definitions-5"
            xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://oval.mitre.org/XMLSchema/oval-common-5 oval-common-schema.xsd http://oval.mitre.org/XMLSchema/oval-definitions-5 oval-definitions-schema.xsd">

            <generator>
                <oval:product_name>{0}</oval:product_name>
                <oval:product_version>{1}</oval:product_version>
                <oval:schema_version>{2}</oval:schema_version>
                <oval:timestamp>{3}</oval:timestamp>
            </generator>
        """.format(self.product_name, self.generator_version, self.oval_schema_version, oval_timestamp).replace('                ','\t').replace('    ','\t')

        # add queued file content
        for element in OvalGenerator.supported_oval_elements:
            if element in self.tmp:
                string += "\n\t<{0}s>".format(element)
                string += self.tmp[element].read().rstrip()
                string += "\n\t</{0}s>\n".format(element)

                # this is required to allow future to_string() or write() calls to work
                self.tmp[element].seek(0)

        # add footer
        string += "\n</oval_definitions>"

        return string

    def write(self, output_filepath):
        """ dequeue all elements into one OVAL definitions file and clean up """

        self.set_queue_mode('read')

        with open(output_filepath, mode='wt', encoding='utf-8') as f:
            f.write(self.to_string())

        self.clear()

    def message(self, type, message):
        """ print a warning message """
        print('{0}: {1}'.format(type.upper(), message))




