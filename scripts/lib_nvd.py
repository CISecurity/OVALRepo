#!/usr/bin/env python3

import sys
import os
import shutil
import tempfile
import gzip
import urllib.request
from datetime import date
from lxml import etree
from copy import deepcopy

import lib_repo
import lib_search

oval_definition = """<definition xmlns="http://oval.mitre.org/XMLSchema/oval-definitions-5" class="vulnerability" id="" version="5">
  <metadata>
    <title></title>
    <affected family="">
       <platform></platform>
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
      <min_schema_version>5.3</min_schema_version>
    </oval_repository>
  </metadata>
  <criteria operator="OR">
        <criterion comment="" test_ref=""/>
  </criteria>
</definition>"""

oval_definition_criteria_stub = """<criteria comment="Automatically generated from NVD import" operator="AND">
                                        <extend_definition comment="" definition_ref=""/>
                                        <criterion comment="" test_ref=""/>
                                </criteria>"""

rpminfo_test = """<rpminfo_test xmlns="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" check="all" check_existence="at_least_one_exists" comment="OpenSSL 1.0.1 before 1.0.1f" id="oval:org.mitre.oval:tst:100449" version="3">
                        <object object_ref="oval:org.mitre.oval:obj:13882" />
                        <state state_ref="oval:org.mitre.oval:ste:27720" />
                    </rpminfo_test>"""

rpminfo_object = """<rpminfo_object xmlns="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" comment="" id="" version="2">
                        <name></name>
                    </rpminfo_object>"""

rpminfo_state = """<rpminfo_state xmlns="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" comment="" id="" version="1">
                        <evr datatype="" operation=""></evr>
                    </rpminfo_state>"""

nvd_xml_cve_url = 'http://static.nvd.nist.gov/feeds/xml/cve/'

mitre_cve_url = 'http://cve.mitre.org/cgi-bin/cvename.cgi?name='

nvd_xml_cve_file = 'nvdcve-2.0-'

nvd_years = [str(year) for year in range(2002, 2017)] + ['Modified'] + ['Recent']


class NVDCleanup:
    def clean_cache(self):
        try:
            shutil.rmtree('__index__')
            shutil.rmtree('__pycache__')
        except OSError:
            # print('__index__ and __pycache__ not found, that\'s ok, passing')
            pass

    def clean_temp(self):
        for it in os.fwalk('/tmp'):
            if 'OVAL_NVD_' in it[0]:
                shutil.rmtree(it[0])
        return

    def clean(self):
        print('Removing cache.')
        self.clean_cache()
        self.clean_temp()


class NVDDetails:
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
        self.cve = ''
        self.year = 0
        self.number = 0

        self.file = ''
        self.archive = ''

        self.file_type = '.xml'
        self.archive_type = '.gz'

        self.url = ''
        self.dir = ''

        self.file_path = ''
        self.archive_path = ''
        return

    def set(self, cve):
        self.cve = cve.upper()
        self.year = cve.split('-')[1]
        self.number = cve.split('-')[2]

        self.url = nvd_xml_cve_url
        self.file = nvd_xml_cve_file
        self.dir = tempfile.mkdtemp(prefix='OVAL_NVD_')
        return

    def make_filename(self):
        self.file = self.file + str(self.year) + self.file_type
        return

    def make_archive_filename(self):
        self.archive = self.file + self.archive_type
        return

    def make_paths(self):
        self.file_path = os.path.join(self.dir, self.file)
        self.archive_path = os.path.join(self.dir, self.archive)
        return

    def make_url(self):
        self.url += self.archive
        return

    def download(self):
        with open(self.archive_path, 'wb') as archive:
            with urllib.request.urlopen(self.url) as downloader:
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
        self.set(cve)
        self.make_filename()
        self.make_archive_filename()
        self.make_paths()
        self.make_url()
        self.download()
        self.decompress()

        if self.check_cve_presence():
            return [self.cve, self.file_path]
        return []


class NVDOVALDefinitionVulnerability:
    def __init__(self):
        self.cve_id = ''
        self.summary = ''

        self.definition_id = ''
        self.test_ref_path = ''
        self.test_ref_id = ''
        self.platform = ''
        self.criteria_comment = ''
        self.xml_path = ''
        self.namespace = {'oval-def': 'http://oval.mitre.org/XMLSchema/oval-definitions-5'}
        return

    def get_definition_path(self):
        oval_query = {'reference_ids': self.cve_id}
        query_results = lib_search.DefinitionsIndex().query(oval_query)

        if not query_results:
            return False

        # TODO support other classes
        for item in query_results:
            if item['class'] == 'vulnerability':
                self.xml_path = item['path']
            else:
                continue
        return True

    def add_platform(self, doc_root):
        tag = doc_root.find('oval-def:metadata/oval-def:affected', namespaces=self.namespace)

        # return if GenericPlatform exists, don't add twice
        for item in tag:
            if self.platform in item.text:
                return

        platform = etree.SubElement(tag, 'platform')
        platform.text = self.platform
        tag.insert(0, platform)
        return

    def add_criteria_stub(self, criteria_tag):
        criterion = \
            etree.SubElement(criteria_tag, 'criterion', comment=self.criteria_comment, test_ref=self.test_ref_id)

        # doc_root = etree.fromstring(oval_definition_criteria_stub)
        # for item in doc_root.getiterator():
        #     if 'comment' in item.tag:
        #         item.set('comment', self.criteria_comment)
        #
        #     if 'extend_definition' in item.tag:
        #         item.set('comment', self.criteria_comment)
        #         item.set('definition_ref', self.definition_id)
        #
        #     if 'criterion' in item.tag:
        #         item.set('comment', self.criteria_comment)
        #         item.set('test_ref', self.test_ref_id)

        # criteria_tag.insert(0, doc_root)
        criteria_tag.insert(0, criterion)
        return

    def add_criteria_or(self, metadata_tag, criteria_tag):
        criteria = etree.Element('criteria', operator='OR')
        etree.SubElement(criteria, 'criterion', comment=self.criteria_comment, test_ref=self.test_ref_id)

        criteria.append(deepcopy(criteria_tag))
        metadata_tag.addnext(criteria)

        definition_tag = metadata_tag.getnext().getnext().getparent()
        criteria_old = metadata_tag.getnext().getnext()
        definition_tag.remove(criteria_old)
        return

    def add_criteria(self, doc_root):
        metadata_tag = doc_root.find('oval-def:metadata', namespaces=self.namespace)
        criteria_tag = doc_root.find('oval-def:criteria', namespaces=self.namespace)

        if criteria_tag.attrib['operator'] == 'OR':
            self.add_criteria_stub(criteria_tag)
        else:
            self.add_criteria_or(metadata_tag, criteria_tag)
        return

    def update_definition(self):
        with open(self.xml_path, 'rb') as oval_def_file:
            doc_root = etree.parse(oval_def_file).getroot()
            # self.add_platform(doc_root)
            self.add_criteria(doc_root)

            NVDOVALXMLWriter().write(self.xml_path, doc_root)
        return

    def put(self, cve_id, summary, test_ref_path, new_def_path):
        self.cve_id = cve_id
        self.summary = summary

        self.test_ref_id = lib_repo.path_to_oval_id(test_ref_path)
        self.definition_id = lib_repo.path_to_oval_id(new_def_path)

        self.platform = 'GenericPlatform'
        self.criteria_comment = 'Automatically added for NVD CVE {0}'.format(self.cve_id)

        # check it the OVAL repository contains the CVE
        # if yes, update the definition with stub containing the definition created above
        if self.get_definition_path():
            self.update_definition()
        else:
            NVDOVALDefinitionVulnerabilityCreate().create_definition(cve_id, summary, test_ref_path, new_def_path)

        # create new definition
        # NVDOVALDefinitionVulnerabilityCreate().create_definition(cve_id, summary, test_ref_path, new_def_path)
        return


class NVDOVALDefinitionVulnerabilityCreate:
    def __init__(self):
        self.cve_id = ''
        self.summary = ''

        self.test_ref_path = ''
        self.test_ref_id = ''
        self.criteria_comment = ''

        self.new_def_path = ''
        self.def_id = ''
        self.def_family = ''
        self.def_platform = ''
        self.def_cve_ref_url = ''
        self.def_criterion_comment = ''
        self.def_test_ref = ''
        self.date = ''

        self.namespace = '{http://oval.mitre.org/XMLSchema/oval-definitions-5}'
        return

    def create_definition(self, cve_id, summary, test_ref_path, new_def_path):
        self.cve_id = cve_id
        self.summary = summary

        self.test_ref_id = lib_repo.path_to_oval_id(test_ref_path)
        self.new_def_path = new_def_path
        self.def_id = lib_repo.path_to_oval_id(new_def_path)

        self.def_platform = 'GenericPlatform'
        self.criteria_comment = 'Automatically added for NVD CVE {0}'.format(self.cve_id)

        self.def_family = 'Linux'

        self.def_cve_ref_url = mitre_cve_url + self.cve_id

        self.def_criterion_comment = 'Automatically generated for NVD CVE {0}'.format(self.cve_id)

        self.date = date.today().strftime('%Y-%m-%dT%H:%M:%S%z')

        doc_root = etree.fromstring(oval_definition)
        for node in doc_root.getiterator():
            if self.namespace + 'definition' in node.tag:
                node.set('id', self.def_id)

            if self.namespace + 'title' in node.tag:
                node.text = self.summary

            if self.namespace + 'affected' in node.tag:
                node.set('family', self.def_family)

            if self.namespace + 'platform' in node.tag:
                node.text = self.def_platform

            if self.namespace + 'reference' in node.tag:
                node.set('ref_id', self.cve_id)
                node.set('ref_url', self.def_cve_ref_url)

            if self.namespace + 'description' in node.tag:
                node.text = self.summary

            if self.namespace + 'submitted' in node.tag:
                node.set('date', str(self.date))

            if self.namespace + 'contributor' in node.tag:
                node.set('organization', 'Automatically generated from NVD')
                node.text = 'Automatically generated from NVD'

            if self.namespace + 'status_change' in node.tag:
                node.set('date', str(self.date))
                node.text = 'ACCEPTED'

            if self.namespace + 'status' in node.tag:
                node.text = 'ACCEPTED'

            if self.namespace + 'criterion' in node.tag:
                node.set('comment', 'Automatically added for NVD CVE {0}'.format(self.cve_id))
                node.set('test_ref', self.test_ref_id)

        NVDOVALXMLWriter().write(self.new_def_path, doc_root)
        return


class NVDOVALNewObjects:
    def __init__(self):
        # tests or objects or states
        self.tst_or_obj_or_ste = ''

        # linux or unix or windows
        self.family = ''

        # rpminfo_test or dpkginfo_test
        self.rpm_or_dpkg_or_inet = ''

        self.new_id = 0
        self.new_filename = ''
        self.path = ''

        self.definition_type = ''

    def get_last_def(self):
        for xml_file in lib_repo.get_element_paths_iterator():
            if 'vulnerability' in xml_file:
                current_id = int(lib_repo.path_to_oval_id(xml_file).split(':')[3])
                if current_id > self.new_id:
                    self.new_id = current_id
                    self.path = os.path.split(xml_file)[0]
                    self.new_filename = os.path.split(xml_file)[1]
        return

    def get_last(self):
        for xml_file in lib_repo.get_element_paths_iterator():
            if (self.tst_or_obj_or_ste in xml_file) and (self.family in xml_file):
                current_id = int(lib_repo.path_to_oval_id(xml_file).split(':')[3])
                if current_id > self.new_id:
                    self.new_id = current_id
                    self.path = os.path.split(xml_file)[0]
                    self.new_filename = os.path.split(xml_file)[1]
        return

    def make_new(self):
        self.new_id += 1
        temp = self.new_filename.split('_')
        temp[3] = self.new_id
        self.new_filename = temp[0] + '_' + temp[1] + '_' + temp[2] + '_' + str(temp[3]) + '.xml'
        self.path = os.path.join(self.path, self.new_filename)
        return

    def get(self, tst_or_obj_or_ste, family, rpm_or_dpkg_or_inet, ):
        self.family = family
        self.rpm_or_dpkg_or_inet = rpm_or_dpkg_or_inet

        if tst_or_obj_or_ste == 'vulnerability':
            self.definition_type = tst_or_obj_or_ste
            self.get_last_def()
        else:
            self.tst_or_obj_or_ste = tst_or_obj_or_ste
            self.get_last()

        self.make_new()
        return self.path


class NVDOVALObject:
    def __init__(self):
        self.cve_id = ''
        self.xml_path = ''
        self.product = ''

        self.comment = ''
        self.this_id = ''
        return

    def make(self):
        doc_root = etree.fromstring(rpminfo_object)
        for node in doc_root.getiterator():
            if 'rpminfo_object' in node.tag:
                node.set('comment', self.comment)
                node.set('id', self.this_id)

            if 'name' in node.tag:
                node.text = self.product

        NVDOVALXMLWriter().write(self.xml_path, doc_root)
        return

    def put(self, cve_id, xml_path, product):
        self.cve_id, self.xml_path, self.product = cve_id, xml_path, product
        self.comment = 'Automatically added for NVD CVE {0}'.format(cve_id)

        self.this_id = lib_repo.path_to_oval_id(self.xml_path)

        self.make()
        return


class NVDOVALState:
    def __init__(self):
        self.cve_id = ''
        self.xml_path = ''
        self.version = ''

        self.comment = ''
        self.this_id = ''

        self.datatype = ''
        self.operation = ''
        return

    def make(self):
        doc_root = etree.fromstring(rpminfo_state)
        for node in doc_root.getiterator():
            if 'rpminfo_state' in node.tag:
                node.set('comment', self.comment)
                node.set('id', self.this_id)

            if 'evr' in node.tag:
                node.set('datatype', self.datatype)
                node.set('operation', self.operation)
                node.text = self.version

        NVDOVALXMLWriter().write(self.xml_path, doc_root)
        return

    def put(self, cve_id, xml_path, version):
        self.cve_id, self.xml_path, self.version = cve_id, xml_path, version
        self.comment = 'Automatically added for NVD CVE {0}'.format(cve_id)

        self.this_id = lib_repo.path_to_oval_id(self.xml_path)

        self.version = '0:' + self.version
        self.datatype = 'evr_string'
        self.operation = 'less than or equal'

        self.make()
        return


class NVDOVALTest:
    def __init__(self):
        self.test_path = ''
        self.test_id = ''

        self.object_path = ''
        self.object_id = ''

        self.state_path = ''
        self.state_id = ''

        self.comment = ''
        self.check = ''
        self.check_existence = ''
        return

    def make(self):
        doc_root = etree.fromstring(rpminfo_test)
        for node in doc_root.getiterator():
            if 'rpminfo_test' in node.tag:
                node.set('check', self.check)
                node.set('check_existence', self.check_existence)
                node.set('comment', self.comment)
                node.set('id', self.test_id)

            if 'object' in node.tag:
                node.set('object_ref', self.object_id)

            if 'state' in node.tag:
                node.set('state_ref', self.state_id)

        NVDOVALXMLWriter().write(self.test_path, doc_root)
        return

    def put(self, cve_id, test_path, object_path, state_path):
        self.test_path, self.object_path, self.state_path = test_path, object_path, state_path

        self.check = 'all'
        self.check_existence = 'at_least_one_exists'
        self.comment = 'Automatically added for NVD CVE {0}'.format(cve_id)
        self.test_id = lib_repo.path_to_oval_id(self.test_path)

        self.object_id = lib_repo.path_to_oval_id(self.object_path)
        self.state_id = lib_repo.path_to_oval_id(self.state_path)

        self.make()
        return


class NVDOVALWriter:
    def __init__(self):
        self.file_to_write = ''
        pass

    def write_empty_file(self):
        with open(self.file_to_write, 'w+') as file:
            pass
        return

    def write(self, file_to_write):
        self.file_to_write = file_to_write
        self.write_empty_file()
        return


class NVDOVALXMLWriter:
    def __init__(self):
        self.file_to_write = ''
        self.xml_document_root = ''
        return

    def write_file(self):
        from lxml import etree
        with open(self.file_to_write, 'w') as file:
            file.write(etree.tostring(self.xml_document_root, pretty_print=True).decode())
        return

    def write(self, file_to_write, xml_document_root):
        self.file_to_write, self.xml_document_root = \
            file_to_write, xml_document_root
        self.write_file()
        return


class NVDValidateArgument:
    def __init__(self):
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

    def validate_acronym(self):
        if ('CVE' in self.acronym) and (len(self.acronym) == 3):
            self.valid_acronym = True
        else:
            self.valid_acronym = False

    def validate_year(self):
        if self.year in nvd_years:
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
        self.validate_acronym()
        self.validate_year()
        self.validate_number()
        return self.valid_acronym and self.valid_year and self.valid_number
