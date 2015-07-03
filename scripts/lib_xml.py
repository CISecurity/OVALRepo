#!/usr/bin/env/ python3
"""Library for parsing, creating and validating XML files.

Authors: David Ries <ries@jovalcm.com>

This library provides methods to parse OVAL XML, create OVAL definitions,
validate OVAL definitions and other XML-related functions TBD.

Available functions:
- get_id_refs_in_file: gets all OVAL id_refs in a file

Available classes:
- OvalGenerator: methods to assist in building an OVAL definitions file

TODO:
- line 102-108: fix namespaces and schemaLocation to represent doc or include all or ??
"""

import os, os.path, datetime, random, re
from xml.sax.saxutils import escape
from lxml import etree


def get_id_refs_in_file(filepath):
    """ Takes a filepath for an XML fragment and returns ids referenced therein. """
    tree = etree.parse(filepath)
    root = tree.getroot()
    id_refs = root.xpath("//@*[name()='definition_ref' or name()='test_ref' or name()='object_ref' or name()='state_ref' or name()='var_ref']")
    return id_refs

def schema_validate(filepath, schemas_path):
    """ Schema validate an xml document based on its schemaLocation attribute. """
    # extract schemaLocation attribute
    oval_tree = etree.parse(filepath)
    schema_location = ' '.join(oval_tree.xpath('//@xsi:schemaLocation', namespaces={'xsi': 'http://www.w3.org/2001/XMLSchema-instance'})).strip()

    # construct an empty schema
    schema_tree = etree.XML("""<xsd:schema xmlns="http://com.cisecurity.ovalrepo" targetNamespace="http://com.cisecurity.ovalrepo"
            xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            elementFormDefault="qualified" attributeFormDefault="unqualified" version="5.11"></xsd:schema>""")
    
    # iterate through schemaLocation pairs, importing each into schema
    schema_locations = re.sub('\s+', ' ', schema_location).split(' ')
    for i in range(0, len(schema_locations), 2):
        uri = schema_locations[i]
        filename = schema_locations[i + 1]
        filepath = '{0}/{1}'.format(schemas_path, filename)

        import_element = etree.Element('{http://www.w3.org/2001/XMLSchema}import')
        import_element.attrib['namespace'] = uri
        import_element.attrib['schemaLocation'] = filepath
        schema_tree.append(import_element)

    # create XMLSchema validator and validate
    # print(etree.tostring(schema_tree))
    schema_validator = etree.XMLSchema(schema_tree)
    schema_validator.assertValid(oval_tree)


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
                xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" 
                xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" 
                xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" 
                xmlns:linux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" 
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://oval.mitre.org/XMLSchema/oval-common-5 oval-common-schema.xsd   http://oval.mitre.org/XMLSchema/oval-definitions-5 oval-definitions-schema.xsd   http://oval.mitre.org/XMLSchema/oval-definitions-5#independent independent-definitions-schema.xsd   http://oval.mitre.org/XMLSchema/oval-definitions-5#unix unix-definitions-schema.xsd   http://oval.mitre.org/XMLSchema/oval-definitions-5#macos linux-definitions-schema.xsd">

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




