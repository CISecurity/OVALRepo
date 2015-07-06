#!/usr/bin/env/ python3
"""Library for parsing, creating and validating XML files.

Authors: David Ries <ries@jovalcm.com>

This library provides methods to parse OVAL XML, create OVAL definitions,
validate OVAL definitions and other XML-related functions TBD.

Available functions:
- get_id_refs_in_file: gets all OVAL id_refs in a file
- schema_validate: schema validate an XML file
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
- TBD
"""

import os, os.path, inspect, datetime, random, re, pprint
from xml.sax.saxutils import escape
from lxml import etree


def get_id_refs_in_file(filepath):
    """ Takes a filepath for an XML fragment and returns ids referenced therein. """
    tree = etree.parse(filepath)
    root = tree.getroot()
    id_refs = root.xpath("//@*[name()='definition_ref' or name()='test_ref' or name()='object_ref' or name()='state_ref' or name()='var_ref']")
    return id_refs


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


def schematron_validate(filepath, schematron_path):
    """ NOTE: this does not work!! """
    """ Schematron validate an XML file. """
    # parse target xml
    xml_tree = etree.parse(filepath)

    # apply schematron xsl to create svrl result
    svrl = apply_xslt(xml_tree, schematron_path)
    svrl_root = svrl.getroot()

    # extract results from svrl
    successes = svrl_root.xpath('//svrl:successful-report', namespaces={'svrl': 'http://purl.oclc.org/dsdl/svrl'})
    failures = svrl_root.xpath('//svrl:failed-assert', namespaces={'svrl': 'http://purl.oclc.org/dsdl/svrl'})

    print('INFO: {0} schematron successes'.format(len(successes)))
    print('INFO: {0} schematron failures'.format(len(failures)))

    return


def get_schematron_xsl_from_schema(schema_path, force_generate=False):
    """ NOTE: this does not work!! """
    """ Gets path to schematron from schema_path, creating if necessary """
    schematron_path = schema_path.replace('.xsd','-schematron.xslt')

    # generate if it doesn't exist or force_generate
    if (not os.path.isfile(schematron_path) or force_generate):
        # get path to schematron tools
        scripts_path = os.path.dirname(os.path.abspath(inspect.getfile(inspect.currentframe())))
        schematron_tools_path = os.path.realpath(scripts_path + '/lib/iso-schematron-xslt1')

        # parse schema, preprocess, convert to xsl
        schema_tree = etree.parse(schema_path)
        # 1. preprocess schema with iso_dsdl_include.xsl to assemble the schema from parts
        schema_tree = apply_xslt(schema_tree, schematron_tools_path + '/iso_dsdl_include.xsl')
        # 2. preprocess with iso_abstract_expand.xsl to convert abstract patterns to real patterns
        schema_tree = apply_xslt(schema_tree, schematron_tools_path + '/iso_abstract_expand.xsl')
        # 3. compile to XSLT script using iso_svrl_for_xslt1.xsl
        xslt_tree = apply_xslt(schema_tree, schematron_tools_path + '/iso_svrl_for_xslt1.xsl')
        
        # write to file
        with open(schematron_path, mode='wt', encoding='utf-8') as f:
          f.write(str(xslt_tree))

    return schematron_path


def apply_xslt(xml_tree, xslt_path):
    """ Apply xslt to an XML tree """
    xslt_root = etree.parse(xslt_path)
    transformer = etree.XSLT(xslt_root)
    result_tree = transformer(xml_tree)
    return result_tree


class Error(Exception):
    """Base class for exceptions in this module."""
    pass


class SchemaValidationError(Error):
    """Exception raised for schema validation errors. """
    def __init__(self, message):
        self.message = message


class SchematronValidationError(Error):
    """Exception raised for schematron validation errors. """
    def __init__(self, message):
        self.message = message

class OvalGenerator:
    """ Methods to assist in the building of an OVAL definitions file. """

    supported_oval_elements = ('definition','test','object','state','variable')
    product_name = 'CIS OVAL Repository'
    generator_version = '0.1'
    oval_schema_version = '5.11.1'

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

    def write(self, output_filepath):
        """ dequeue all elements into one OVAL definitions file and clean up """
        
        # close queue files for writing and then open for reading
        for key in self.tmp:
            self.tmp[key].close();
            self.tmp[key] = open(self.tmp[key].name, mode='rt', encoding='utf-8')

        with open(output_filepath, mode='wt', encoding='utf-8') as f:
            # add header
            oval_timestamp = datetime.datetime.utcnow().strftime('%Y-%m-%dT%H:%M:%S')
            f.write("""<oval_definitions 
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
            """.format(OvalGenerator.product_name, OvalGenerator.generator_version, OvalGenerator.oval_schema_version, oval_timestamp).replace('                ','\t').replace('    ','\t'))

            # add queued file content
            for element in OvalGenerator.supported_oval_elements:
                if element in self.tmp:
                    f.write("\n\t<{0}s>".format(element))
                    f.write(self.tmp[element].read().rstrip())
                    f.write("\n\t</{0}s>\n".format(element))

            # add footer
            f.write("\n</oval_definitions>")

        # close and delete queue files 
        for key in self.tmp:
            self.tmp[key].close();
            os.remove(self.tmp[key].name)

    def message(self, type, message):
        """ print a warning message """
        print('{0}: {1}'.format(type.upper(), message))




