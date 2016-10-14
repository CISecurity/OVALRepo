#!/usr/bin/env python3


import os
import sys
import tempfile
import gzip
import urllib.request
import lib_repo
from datetime import date
from copy import deepcopy
from lxml import etree


__author__ = "Tudor Ciochina"
__version__ = "1.0.0"
__email__ = "tudor.m.ciochina@gmail.com"


"""
Description of classes:

DefinitionVulnerabilityCreate
- creates a OVAL definition

DefinitionVulnerabilityAppend
- open an already existing definition and appends a new criteria 'OR'
- adds to the new criteria a new criterion containing a new test id
- move the existing criteria in the new criteria

NVDOVALTests
- creates a new OVAL test containing the ids of a new object and a new state

NVDOVALObjects
- creates a new OVAL object containing the product from the NVD CVE CPE string

NVDOVALStates
- creates a new OVAL object containing the version from the  NVD CVE CPE string

OVALNewPath
- returns a new path for a new OVAL object

NVDValidateArgument
- validates the input from argparse

NVDCVEDetails
- extract details from the a NVD CVE
- vendor, product, version, summary

NVDDownload
- downloads the NVD XML file to a temporary directory
- checks if the CVE is found in the downloaded XML file
"""


# TODO check for double content
# TODO don't add objects, states and states if they already exist


class DefinitionVulnerabilityCreate:
    def __init__(self):
        self.mitre_cve_url = 'http://cve.mitre.org/cgi-bin/cvename.cgi?name='
        self.oval_definition = """<definition xmlns="http://oval.mitre.org/XMLSchema/oval-definitions-5" class="" id="" version="1">
                                      <metadata>
                                        <title></title>
                                        <affected family="">
                                           <platform></platform>
                                           <product></product>
                                        </affected>
                                        <reference ref_id="" ref_url="" source="CVE" />
                                        <description></description>
                                        <oval_repository>
                                          <dates>
                                            <submitted date="">
                                              <contributor organization=""></contributor>
                                            </submitted>
                                            <status_change date=""></status_change>
                                          </dates>
                                          <status>ACCEPTED</status>
                                          <min_schema_version>5.10</min_schema_version>
                                        </oval_repository>
                                      </metadata>
                                      <criteria operator="OR">
                                            <criterion comment="" test_ref=""/>
                                      </criteria>
                                    </definition>"""

        self.cve_id = ''

        self.def_class = ''
        self.def_id = ''

        self.def_summary = ''
        self.def_family = ''
        self.def_platform = ''
        self.def_product = ''

        self.def_ref_id = ''
        self.def_ref_url = ''

        self.def_date = ''
        self.def_organization = ''
        self.def_contributor = ''

        self.def_status_change = ''

        self.criterion_comment = ''
        self.criterion_test_ref = ''

        self.new_def_path = ''
        self.namespace = '{http://oval.mitre.org/XMLSchema/oval-definitions-5}'
        return

    def create(self, cve_id, def_class, new_def_path, def_family, def_platform, def_product,
               summary, criterion_test_ref_path):

        self.cve_id = cve_id
        self.def_class = def_class
        self.new_def_path = new_def_path
        self.def_id = lib_repo.path_to_oval_id(new_def_path)
        self.def_summary = summary
        self.def_platform = def_platform
        self.def_family = def_family
        self.def_product = def_product
        self.criterion_test_ref = lib_repo.path_to_oval_id(criterion_test_ref_path)
        self.def_ref_url = self.mitre_cve_url + self.cve_id
        self.criterion_comment = 'Automatically generated for NVD CVE {0}'.format(self.cve_id)
        self.def_date = date.today().strftime('%Y-%m-%dT%H:%M:%S%z')

        doc_root = etree.fromstring(self.oval_definition)
        for node in doc_root.getiterator():
            if self.namespace + 'definition' in node.tag:
                node.set('class', self.def_class)
                node.set('id', self.def_id)

            if self.namespace + 'title' in node.tag:
                node.text = self.def_summary

            if self.namespace + 'affected' in node.tag:
                node.set('family', self.def_family)

            if self.namespace + 'platform' in node.tag:
                node.text = self.def_platform

            if self.namespace + 'product' in node.tag:
                node.text = self.def_product

            if self.namespace + 'reference' in node.tag:
                node.set('ref_id', self.cve_id)
                node.set('ref_url', self.def_ref_url)

            if self.namespace + 'description' in node.tag:
                node.text = self.def_summary

            if self.namespace + 'submitted' in node.tag:
                node.set('date', str(self.def_date))

            if self.namespace + 'contributor' in node.tag:
                node.set('organization', 'Automatically generated from NVD')
                node.text = 'Automatically generated from NVD'

            if self.namespace + 'status_change' in node.tag:
                node.set('date', str(self.def_date))
                node.text = 'ACCEPTED'

            if self.namespace + 'status' in node.tag:
                node.text = 'ACCEPTED'

            if self.namespace + 'criterion' in node.tag:
                node.set('comment', self.criterion_comment)
                node.set('test_ref', self.criterion_test_ref)

        NVDWriter().write(self.new_def_path, doc_root)
        return


class DefinitionVulnerabilityAppend:
    def __init__(self):
        self.cve_id = ''
        self.platform = ''
        self.product = ''
        self.criterion_test_ref = ''
        self.criterion_comment = ''
        self.xml_def_path = ''
        self.namespace = {'oval-def': 'http://oval.mitre.org/XMLSchema/oval-definitions-5'}
        return

    def add_platform(self, doc_root):
        tag = doc_root.find('oval-def:metadata/oval-def:affected', namespaces=self.namespace)

        for item in tag:
            if self.platform in item.text:
                return

        platform = etree.SubElement(tag, 'platform')
        platform.text = self.platform
        tag.insert(0, platform)

        return

    def add_criteria_stub(self, criteria_tag):
        criterion = etree.SubElement(criteria_tag, 'criterion',
                                     comment=self.criterion_comment, test_ref=self.criterion_test_ref)

        criteria_tag.insert(0, criterion)
        return

    def add_criteria_or(self, metadata_tag, criteria_tag):
        criteria = etree.Element('criteria', operator='OR')
        etree.SubElement(criteria, 'criterion', comment=self.criterion_comment, test_ref=self.criterion_test_ref)

        criteria.append(deepcopy(criteria_tag))
        metadata_tag.addnext(criteria)

        definition_tag = metadata_tag.getnext().getnext().getparent()
        criteria_old = metadata_tag.getnext().getnext()
        definition_tag.remove(criteria_old)
        return

    def update_definition(self):
        with open(self.xml_def_path, 'rb') as oval_def_file:
            doc_root = etree.parse(oval_def_file).getroot()

            self.add_platform(doc_root)

            metadata_tag = doc_root.find('oval-def:metadata', namespaces=self.namespace)
            criteria_tag = doc_root.find('oval-def:criteria', namespaces=self.namespace)

            if criteria_tag.attrib['operator'] == 'OR':
                self.add_criteria_stub(criteria_tag)
            else:
                self.add_criteria_or(metadata_tag, criteria_tag)

            NVDWriter().write(self.xml_def_path, doc_root)
        return

    def append(self, cve_id, def_platform, def_product, criterion_test_ref_path, xml_def_path):

        self.cve_id = cve_id
        self.platform = def_platform
        self.product = def_product

        self.criterion_test_ref = lib_repo.path_to_oval_id(criterion_test_ref_path)
        self.criterion_comment = 'Automatically added for NVD CVE {0}'.format(self.cve_id)

        self.xml_def_path = xml_def_path

        self.update_definition()

        return


class NVDOVALObjects:
    def __init__(self):
        self.generic_object = """<GENERIC_object xmlns="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" comment="" id="" version="1">
                                    <name></name>
                                </GENERIC_object>"""
        self.cve_id = ''
        self.xml_path = ''
        self.product = ''

        self.comment = ''
        self.this_id = ''
        self.this_type = ''
        self.object = ''
        return

    def make(self):
        doc_root = etree.fromstring(self.object)
        for node in doc_root.getiterator():
            if self.this_type in node.tag:
                node.set('comment', self.comment)
                node.set('id', self.this_id)

            if 'name' in node.tag:
                node.text = self.product

        NVDWriter().write(self.xml_path, doc_root)
        return

    def put(self, cve_id, xml_path, product, this_type):
        self.cve_id, self.xml_path, self.product, self.this_type = \
            cve_id, xml_path, product, this_type

        self.object = self.generic_object.replace('GENERIC', self.this_type)
        self.comment = 'Automatically added for NVD CVE {0}'.format(cve_id)
        self.this_id = lib_repo.path_to_oval_id(self.xml_path)

        self.make()
        return


class NVDOVALStates:
    def __init__(self):
        self.generic_state = """<GENERIC_state xmlns="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" comment="" id="" version="1">
                                    <evr datatype="" operation=""></evr>
                                </GENERIC_state>"""
        self.cve_id = ''
        self.xml_path = ''
        self.version = ''
        self.version_prefix = ''

        self.comment = ''
        self.this_id = ''

        self.datatype = ''
        self.operation = ''
        self.this_type = ''
        self.object = ''
        return

    def make(self):
        doc_root = etree.fromstring(self.object)
        for node in doc_root.getiterator():
            if self.this_type in node.tag:
                node.set('comment', self.comment)
                node.set('id', self.this_id)

            if 'evr' in node.tag:
                node.set('datatype', self.datatype)
                node.set('operation', self.operation)
                node.text = self.version

        NVDWriter().write(self.xml_path, doc_root)
        return

    def put(self, cve_id, xml_path, version, this_type, prefix):
        self.cve_id, self.xml_path, self.version, self.this_type, self.version_prefix = \
            cve_id, xml_path, version, this_type, prefix

        self.version = self.version_prefix + self.version
        self.datatype = 'evr_string'
        self.operation = 'less than or equal'

        self.object = self.generic_state.replace('GENERIC', self.this_type)
        self.comment = 'Automatically added for NVD CVE {0}'.format(cve_id)
        self.this_id = lib_repo.path_to_oval_id(self.xml_path)

        self.make()
        return


class NVDOVALTests:
    def __init__(self):
        self.generic_test = """<GENERIC_test xmlns="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" check="" check_existence="" comment="" id="" version="1">
                                    <object object_ref="" />
                                    <state state_ref="" />
                                </GENERIC_test>"""

        self.test_path = ''
        self.test_id = ''

        self.object_path = ''
        self.object_id = ''

        self.state_path = ''
        self.state_id = ''

        self.comment = ''
        self.check = ''
        self.check_existence = ''
        self.this_type = ''
        self.object = ''
        return

    def make(self):
        doc_root = etree.fromstring(self.object)
        for node in doc_root.getiterator():
            if self.this_type in node.tag:
                node.set('check', self.check)
                node.set('check_existence', self.check_existence)
                node.set('comment', self.comment)
                node.set('id', self.test_id)

            if 'object' in node.tag:
                node.set('object_ref', self.object_id)

            if 'state' in node.tag:
                node.set('state_ref', self.state_id)

        NVDWriter().write(self.test_path, doc_root)
        return

    def put(self, cve_id, test_path, object_path, state_path, this_type):
        self.test_path, self.object_path, self.state_path, self.this_type = \
            test_path, object_path, state_path, this_type

        self.check = 'all'
        self.check_existence = 'at_least_one_exists'

        self.object_id = lib_repo.path_to_oval_id(self.object_path)
        self.state_id = lib_repo.path_to_oval_id(self.state_path)

        self.object = self.generic_test.replace('GENERIC', self.this_type)
        self.comment = 'Automatically added for NVD CVE {0}'.format(cve_id)
        self.test_id = lib_repo.path_to_oval_id(self.test_path)

        self.make()
        return


class OVALNewPath:
    def __init__(self):
        self.family = ''
        self.new_id = 0
        self.new_filename = ''
        self.path = ''

    def make_new(self):
        self.new_id += 1
        temp = self.new_filename.split('_')
        temp[3] = self.new_id
        self.new_filename = temp[0] + '_' + temp[1] + '_' + temp[2] + '_' + str(temp[3]) + '.xml'
        self.path = os.path.join(self.path, self.new_filename)
        return

    def is_contained(self, args, xml_file):
        i = 0
        for item in args:
            if item in xml_file:
                i += 1

        if i == len(args):
            return True
        else:
            return False

    def get_last(self, args):
        for xml_file_name in lib_repo.get_element_paths_iterator():
            if self.is_contained(args, xml_file_name):
                current_id = int(lib_repo.path_to_oval_id(xml_file_name).split(':')[3])
                if current_id > self.new_id:
                    self.new_id = current_id
                    self.path = os.path.split(xml_file_name)[0]
                    self.new_filename = os.path.split(xml_file_name)[1]
        return

    def get(self, *args):
        self.get_last(args)
        self.make_new()
        return self.path


class NVDValidateArgument:
    def __init__(self):
        self.nvd_years = [str(year) for year in range(2002, 2017)] + ['Modified'] + ['Recent']
        self.acronym = ''
        self.year = 0
        self.number = 0
        self.valid_acronym = False
        self.valid_year = False
        self.valid_number = False
        return

    def set(self, cve):
        try:
            splity = cve.split('-')
            self.acronym = splity[0].upper()
            self.year = splity[1]
            self.number = splity[2]
            return
        except IndexError:
            print('Invalid CVE entry \"{0}\".'.format(cve))
            sys.exit()

    def validate_format(self):
        if ('CVE' in self.acronym) and (len(self.acronym) == 3):
            self.valid_acronym = True
        else:
            self.valid_acronym = False

    def validate_year(self):
        if self.year in self.nvd_years:
            self.valid_year = True
        else:
            self.valid_year = False

    def validate_number(self):
        if (len(str(self.number)) == 4) and ('9999' not in str(self.number)):
            self.valid_number = True
        else:
            self.valid_number = False

    def validate(self, cve):
        self.set(cve)
        self.validate_format()
        self.validate_year()
        self.validate_number()
        return self.valid_acronym and self.valid_year and self.valid_number


class NVDWriter:
    def __init__(self, ):
        self.file_to_write = ''
        self.xml_document_root = ''
        return

    def create_empty_file(self):
        with open(self.file_to_write, 'w+') as file:
            pass
        return

    def serialize(self):
        # might not be used, no need to import globally
        from lxml import etree
        with open(self.file_to_write, 'w') as file:
            file.write(etree.tostring(self.xml_document_root, pretty_print=True).decode())
        return

    def write(self, *args):
        if len(args) == 1:
            self.file_to_write = args[0]
            self.create_empty_file()
        elif len(args) == 2:
            self.file_to_write = args[0]
            self.xml_document_root = args[1]
            self.serialize()
        else:
            print('Empty arguments, nothing to write.')
            return


class NVDCVEDetails:
    def __init__(self):
        self.cve_id = ''
        self.cpe = []
        self.summary = ''
        self.xml_path = ''
        return

    def get_summary(self, node):
        for it in node.getiterator():
            if 'summary' in it.tag:
                self.summary = it.text

    def get_cpe(self, node):
        for it in node.getiterator():
            if 'product' in it.tag:
                self.cpe.append(it.text)

    def get_cve_details(self):
        root = etree.parse(self.xml_path).getroot()
        for node in root.getchildren():
            if self.cve_id in node.attrib['id']:
                self.get_cpe(node)
                self.get_summary(node)

        return

    def get(self, cve_id, xml_path):
        self.cve_id = cve_id
        self.xml_path = xml_path
        self.get_cve_details()
        return [self.cpe, self.summary]


class NVDDownload:
    def __init__(self):
        self.url_feed = 'http://static.nvd.nist.gov/feeds/xml/cve/'
        self.file = 'nvdcve-2.0-'
        self.cve = ''
        self.year = 0
        self.number = 0
        self.archive = ''
        self.file_type = '.xml'
        self.archive_type = '.gz'
        self.dir = ''
        self.file_path = ''
        self.archive_path = ''
        return

    def download(self):
        with open(self.archive_path, 'wb') as archive:
            with urllib.request.urlopen(self.url_feed) as downloader:
                archive.write(downloader.read())
        return

    def decompress(self):
        with gzip.GzipFile(filename=self.archive_path, mode='rb') as archive:
            with open(self.file_path, 'wb') as file:
                    file.write(archive.read())
        return

    def check_cve_presence(self):
        found = False
        with open(self.file_path) as file:
            for line in file:
                if self.cve in line:
                    found = True

        return found

    def get(self, cve):
        self.cve = cve.upper()
        self.year = cve.split('-')[1]
        self.number = cve.split('-')[2]

        self.dir = tempfile.mkdtemp(prefix='OVAL_NVD_')

        # create filename
        self.file = self.file + str(self.year) + self.file_type

        # create archive filename
        self.archive = self.file + self.archive_type

        # file and archive path
        self.file_path = os.path.join(self.dir, self.file)
        self.archive_path = os.path.join(self.dir, self.archive)

        # create URL for download
        self.url_feed += self.archive

        self.download()
        self.decompress()

        if self.check_cve_presence():
            cpe, summary = NVDCVEDetails().get(self.cve, self.file_path)
            return [self.cve, self.file_path, cpe, summary]

        return []
