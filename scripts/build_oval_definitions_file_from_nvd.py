#!/usr/bin/env python3

import argparse
import sys
sys.path.insert(1, 'nvd')
#
# from lib_nvd_validate_argument import NVDValidateArgument
# from lib_nvd_download import NVDDownload
# from lib_nvd_details import NVDDetails
# from lib_nvd_oval_writer import NVDOVALWriter
# from lib_nvd_oval_new_objects import NVDOVALNewObjects
# from lib_nvd_oval_definition_vulnerability import NVDOVALDefinitionVulnerability
# from lib_nvd_oval_tests import NVDOVALTest
# from lib_nvd_oval_objects import NVDOVALObject
# from lib_nvd_oval_states import NVDOVALState
# from lib_nvd_cleanup import NVDCleanup

from lib_nvd import *


def do_clean_cpe(version):
    version = version.split(':')[0]
    return version


def split_cpe(cpe):
    cpe0 = cpe.partition(':')
    cpe1 = cpe0[2].partition(':')
    cpe2 = cpe1[2].partition(':')
    vendor = cpe2[0]
    cpe3 = cpe2[2].partition(':')
    product = cpe3[0]
    version = cpe3[2]
    return [vendor, product, version]


def add_cve(cve_in, object_type='rpminfo_object', clean_cpe=True):
    print('Updating the OVAL repository with \"{0}\".'.format(cve_in))

    cve_nvd = {'cve_id': '', 'xml_path': '', 'summary': '', 'cpe': []}
    cve_nvd['cve_id'], cve_nvd['xml_path'] = NVDDownload().get(cve_in)
    cve_nvd['cpe'], cve_nvd['summary'] = \
        NVDDetails().get(cve_nvd['cve_id'], cve_nvd['xml_path'])

    """
    Almost every CVE has multiple CPEs.
    For each CPE add accordingly to the OVAL repository.
    """
    for cpe in cve_nvd['cpe']:
        NVDCleanup().clean()
        vendor, product, version = split_cpe(cpe)

        if clean_cpe:
            version = do_clean_cpe(version)

        new_def = NVDOVALNewObjects().get('vulnerability', 'linux', object_type)

        new_test = NVDOVALNewObjects().get('tests', 'linux', object_type)
        NVDOVALWriter().write(new_test)

        new_object = NVDOVALNewObjects().get('objects', 'linux', object_type)
        NVDOVALWriter().write(new_object)

        new_state = NVDOVALNewObjects().get('states', 'linux', object_type)
        NVDOVALWriter().write(new_state)

        NVDOVALDefinitionVulnerability().put(cve_nvd['cve_id'], cve_nvd['summary'], new_test, new_def)
        NVDOVALTest().put(cve_nvd['cve_id'], new_test, new_object, new_state)
        NVDOVALObject().put(cve_nvd['cve_id'], new_object, product)
        NVDOVALState().put(cve_nvd['cve_id'], new_state, version)
    return


def main():
    parser = argparse.ArgumentParser(description='Import CVE from NVD.')
    group_options = parser.add_argument_group('available options')
    group_options.add_argument('-c', '--cve-id', nargs='*', dest='cve_list', metavar='CVE id')
    cli_args = vars(parser.parse_args())

    # TODO add this in argument parser
    if not cli_args.get('cve_list'):
        print('Empty arguments.')
        sys.exit(0)

    cve_list = []
    validator = NVDValidateArgument()
    for it in cli_args['cve_list']:
        if validator.validate(it):
            cve_list.append(it)

    if not cve_list:
        print('Empty list of CVEs, exiting.')
        sys.exit()

    for cve in cve_list:
        add_cve(cve)

    return

if __name__ == '__main__':
    main()
