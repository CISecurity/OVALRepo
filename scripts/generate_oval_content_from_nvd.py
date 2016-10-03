#!/usr/bin/env python3


import argparse
import sys
import lib_search

from lib_nvd import \
    NVDValidateArgument, \
    NVDWriter, \
    NVDDownload, \
    OVALNewPath, \
    DefinitionVulnerabilityCreate, \
    DefinitionVulnerabilityAppend, \
    NVDOVALTests, \
    NVDOVALObjects, \
    NVDOVALStates


__author__ = "Tudor Ciochina"
__version__ = "1.0.0"
__email__ = "tudor.m.ciochina@gmail.com"


"""
Generates OVAL content from a NVD CVE XML feed.

Examples:

imports CVE from NVD and generates OVAL content with
- OVAL family as 'unix'
- OVAL platform as 'GenericLinux'
- OVAL type of probe as 'rpminfo'
python3 generate_oval_content_from_nvd.py -c cve-2016-1080 -l vulnerability -t definitions -f unix -p GenericLinux -r rpminfo


cleans the CPE
- removes the CPE version junk characters if needed
python3 generate_oval_content_from_nvd.py -c cve-2016-1080 -l vulnerability -t definitions -f unix -p GenericLinux -r rpminfo -e True


using correct NVD product
- replaces the CPE product with the one provided
python3 generate_oval_content_from_nvd.py -c cve-2016-1080 -l vulnerability -t definitions -f unix -p GenericLinux -r rpminfo -o kernel


using the blacklist option
- skip CPE containing foobar, OVAL content will not be generated
python3 generate_oval_content_from_nvd.py -c cve-2016-1080 -l vulnerability -t definitions -f unix -p GenericLinux -r rpminfo -b foobar


"""


class NVDOVALGenerateContent:
    def __init__(self):
        self.blacklist = ''
        return

    def clean_cache(self):
        try:
            import shutil
            import os
            shutil.rmtree('__index__')
            shutil.rmtree('__pycache__')
            for it in os.fwalk('/tmp'):
                if 'OVAL_NVD_' in it[0]:
                    shutil.rmtree(it[0])
        except OSError:
            # __index__ and __pycache__ not found, that's ok, passing
            pass

    def get_definition_path(self, cve_id, class_type):
        oval_query = {'reference_ids': cve_id}
        query_results = lib_search.DefinitionsIndex().query(oval_query)

        if not query_results:
            return False

        for item in query_results:
            if item['class'] == class_type:
                return item['path']
            else:
                continue
        return False

    def generate(self, cli_args):

        cve = cli_args['nvd_cve_list'][0]
        oval_class = cli_args['oval_class_list'][0]
        oval_type = cli_args['oval_type_list'][0]
        oval_family = cli_args['oval_family_list'][0]
        oval_platform = cli_args['oval_platform_list'][0]
        oval_probe = cli_args['oval_probe_list'][0]

        # cve_id, xml_path, cpe_list, summary
        cve_details = NVDDownload().get(cve)

        if not cve_details:
            print('CVE not found in the NVD database')
            return

        print('Processing \"{0}\" with ...'.format(cve))
        for cpe in cve_details[2]:
            print('CPE {0}'.format(cpe))

            self.clean_cache()

            cpe0 = cpe.partition(':')
            cpe1 = cpe0[2].partition(':')
            cpe2 = cpe1[2].partition(':')
            vendor = cpe2[0]
            cpe3 = cpe2[2].partition(':')
            product = cpe3[0]
            version = cpe3[2]

            if cli_args['blacklisted_cpe']:
                if cli_args['blacklisted_cpe'][0] in cpe:
                    print('is blacklisted, going to next')
                    continue

            if cli_args['nvd_clean_cpe']:
                print('stripping extra ending chars from CPE')
                version = version.split(':')[0]

            if cli_args['correct_NVD_product']:
                if cli_args['correct_NVD_product'][0] in cpe:
                    print('correcting product')
                    product = cli_args['correct_NVD_product'][1]

            new_def = OVALNewPath().get(oval_type, oval_class)

            new_test = OVALNewPath().get('tests')
            NVDWriter().write(new_test)

            new_object = OVALNewPath().get('objects')
            NVDWriter().write(new_object)

            new_state = OVALNewPath().get('states')
            NVDWriter().write(new_state)

            def_file_path = self.get_definition_path(cve_details[0], oval_class)
            if def_file_path:
                DefinitionVulnerabilityAppend().append(cve_details[0], oval_platform, product, new_test, def_file_path)
            else:
                DefinitionVulnerabilityCreate().create(cve_details[0], oval_class, new_def, oval_family, oval_platform,
                                                       product, cve_details[3], new_test)

            NVDOVALTests().put(cve_details[0], new_test, new_object, new_state, oval_probe)
            NVDOVALObjects().put(cve_details[0], new_object, product, oval_probe)
            NVDOVALStates().put(cve_details[0], new_state, version, oval_probe)
        return


def main():
    parser = argparse.ArgumentParser(description='Generate OVAL content from the NVD CVE data feeds.')

    group_options = parser.add_argument_group('Available options')

    group_options.add_argument('-c', '--cve-id', nargs=1, dest='nvd_cve_list', required=True,
                               metavar='CVE id')

    group_options.add_argument('-t', '--oval-type', nargs=1, dest='oval_type_list', required=True,
                               metavar='OVAL type, i.e. definitions, tests, objects, states')

    group_options.add_argument('-l', '--oval-class', nargs=1, dest='oval_class_list', required=True,
                               metavar='OVAL class, i.e. vulnerability, inventory, patch')

    group_options.add_argument('-f', '--oval-family', nargs=1, dest='oval_family_list', required=True,
                               metavar='OVAL family, i.e. linux, unix, windows, osx')

    group_options.add_argument('-p', '--oval-platform', nargs=1, dest='oval_platform_list', required=True,
                               metavar='OVAL platform, i.e. GenericLinux')

    group_options.add_argument('-r', '--oval-probe', nargs=1, dest='oval_probe_list', required=True,
                               metavar='OVAL probe, i.e. rpminfo, dpkginfo')

    group_options.add_argument('-e', '--clean-cpe', nargs=1, dest='nvd_clean_cpe',
                               metavar='Remove unwanted characters the NVD CPE.')

    group_options.add_argument('-o', '--correct-NVD-product', nargs=2, dest='correct_NVD_product',
                               metavar='Replace the product from the NVD CPE, ORIGINAL, NEW')

    group_options.add_argument('-b', '--blacklist-cpe', nargs=1, dest='blacklisted_cpe',
                               metavar='Blacklist CPE.')

    cli_args = vars(parser.parse_args())

    cve_list = []
    validator = NVDValidateArgument()
    for it in cli_args['nvd_cve_list']:
        if validator.validate(it):
            cve_list.append(it)

    if not cve_list:
        print('empty list of CVEs, exiting.')
        sys.exit()

    NVDOVALGenerateContent().generate(cli_args)
    return

if __name__ == '__main__':
    main()
