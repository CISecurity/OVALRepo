#!/usr/bin/env/ python3
"""Library for parsing, creating and validating XML files.

Authors: David Ries <ries@jovalcm.com>

This library provides methods to parse OVAL XML, create OVAL definitions,
validate OVAL definitions and other XML-related functions TBD.

Available functions:
- get_id_refs_in_file: gets all OVAL id_refs in a file

Available classes:
- OvalGenerator: methods to assist in building an OVAL definitions file

Available exceptions:
- Error: base class for exceptions in this module
- SchemaValidationError: raised for schema valdiation errors

TODO:
- TBD
"""

import os, os.path, datetime, random, re, pprint
from xml.sax.saxutils import escape
from lxml import etree


def get_id_refs_in_file(filepath):
    """ Takes a filepath for an XML fragment and returns ids referenced therein. """
    tree = etree.parse(filepath)
    root = tree.getroot()
    id_refs = root.xpath("//@*[name()='definition_ref' or name()='test_ref' or name()='object_ref' or name()='state_ref' or name()='var_ref']")
    return id_refs

def schema_validate(filepath, schemas_path):
    """ Schema validate an OVAL definitions file using schemas in the provided location. """
    # extract schemaLocation attribute
    oval_tree = etree.parse(filepath)
    schema_location = ' '.join(oval_tree.xpath('//@xsi:schemaLocation', namespaces={'xsi': 'http://www.w3.org/2001/XMLSchema-instance'})).strip()

    # construct an schema that includes all schemas
    schema_tree = etree.XML("""<xsd:schema xmlns="http://com.cisecurity.ovalrepo" targetNamespace="http://com.cisecurity.ovalrepo"
      xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      elementFormDefault="qualified" attributeFormDefault="unqualified" version="5.11">
      <xsd:import namespace="http://oval.mitre.org/XMLSchema/oval-common-5" schemaLocation="{0}oval-common-schema.xsd"/>
      <xsd:import namespace="http://oval.mitre.org/XMLSchema/oval-definitions-5" schemaLocation="{0}oval-definitions-schema.xsd"/>
      <xsd:import namespace="http://oval.mitre.org/XMLSchema/oval-definitions-5#aix" schemaLocation="{0}aix-definitions-schema.xsd"/>
      <xsd:import namespace="http://oval.mitre.org/XMLSchema/oval-definitions-5#android" schemaLocation="{0}android-definitions-schema.xsd"/>
      <xsd:import namespace="http://oval.mitre.org/XMLSchema/oval-definitions-5#apache" schemaLocation="{0}apache-definitions-schema.xsd"/>
      <xsd:import namespace="http://oval.mitre.org/XMLSchema/oval-definitions-5#apple_ios" schemaLocation="{0}apple-ios-definitions-schema.xsd"/>
      <xsd:import namespace="http://oval.mitre.org/XMLSchema/oval-definitions-5#asa" schemaLocation="{0}asa-definitions-schema.xsd"/>
      <xsd:import namespace="http://oval.mitre.org/XMLSchema/oval-definitions-5#catos" schemaLocation="{0}catos-definitions-schema.xsd"/>
      <xsd:import namespace="http://oval.mitre.org/XMLSchema/oval-definitions-5#esx" schemaLocation="{0}esx-definitions-schema.xsd"/>
      <xsd:import namespace="http://oval.mitre.org/XMLSchema/oval-definitions-5#freebsd" schemaLocation="{0}freebsd-definitions-schema.xsd"/>
      <xsd:import namespace="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" schemaLocation="{0}hpux-definitions-schema.xsd"/>
      <xsd:import namespace="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" schemaLocation="{0}independent-definitions-schema.xsd"/>
      <xsd:import namespace="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios" schemaLocation="{0}ios-definitions-schema.xsd"/>
      <xsd:import namespace="http://oval.mitre.org/XMLSchema/oval-definitions-5#iosxe" schemaLocation="{0}iosxe-definitions-schema.xsd"/>
      <xsd:import namespace="http://oval.mitre.org/XMLSchema/oval-definitions-5#junos" schemaLocation="{0}junos-definitions-schema.xsd"/>
      <xsd:import namespace="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" schemaLocation="{0}linux-definitions-schema.xsd"/>
      <xsd:import namespace="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" schemaLocation="{0}macos-definitions-schema.xsd"/>
      <xsd:import namespace="http://oval.mitre.org/XMLSchema/oval-definitions-5#netconf" schemaLocation="{0}netconf-definitions-schema.xsd"/>
      <xsd:import namespace="http://oval.mitre.org/XMLSchema/oval-definitions-5#pixos" schemaLocation="{0}pixos-definitions-schema.xsd"/>
      <xsd:import namespace="http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint" schemaLocation="{0}sharepoint-definitions-schema.xsd"/>
      <xsd:import namespace="http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris" schemaLocation="{0}solaris-definitions-schema.xsd"/>
      <xsd:import namespace="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" schemaLocation="{0}unix-definitions-schema.xsd"/>
      <xsd:import namespace="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" schemaLocation="{0}windows-definitions-schema.xsd"/>
      <xsd:import namespace="http://oval.mitre.org/XMLSchema/oval-directives-5" schemaLocation="{0}oval-directives-schema.xsd"/>
      <xsd:import namespace="http://oval.mitre.org/XMLSchema/oval-variables-5" schemaLocation="{0}oval-variables-schema.xsd"/>
      <xsd:import namespace="http://www.w3.org/2000/09/xmldsig#" schemaLocation="{0}xmldsig-core-schema.xsd"/>
    </xsd:schema>""".format(schemas_path + '/'))

    # create XMLSchema validator and validate
    # print(etree.tostring(schema_tree))
    schema_validator = etree.XMLSchema(schema_tree)
    if not schema_validator.validate(oval_tree):
        error_msg = schema_validator.error_log.last_error.message
        raise SchemaValidationError(error_msg)


class Error(Exception):
    """Base class for exceptions in this module."""
    pass


class SchemaValidationError(Error):
    """Exception raised for schema validation errors. """
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




