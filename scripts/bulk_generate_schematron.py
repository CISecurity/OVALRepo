"""
Generates all schematron files in parallel.
"""

import os
import lib_xml
import lib_repo

def child(schema_version):

   schema_path="{0}/oval_schemas/{1}/all-oval-definitions.xsd".format(lib_repo.get_root_path(), schema_version)
   lib_xml.get_schematron_xsl_from_schema(schema_path)
   os._exit(0)

def main():

   for schema_version in lib_repo.get_schema_versions():
      newpid = os.fork()
      if newpid == 0:
         child(schema_version)
      else:
         print("child: {0}".format(newpid))

if __name__ == '__main__':
    main()
