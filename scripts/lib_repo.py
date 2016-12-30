#!/usr/bin/env/ python3
"""Library for accessing files in this repository.

Authors: David Ries <ries@jovalcm.com>
    Gunnar Engelbach <Gunnar.Engelbach@ThreatGuard.com>

This library should provide a stable interface to accessing OVAL objects
and other files stored in this repository. Other code should use this library
instead of making assumptions about how the repository content is organized.

Available functions:
- path_to_oval_id: gets OVAL id corresponding to provided path
- get_element_type_from_oval_id: gets element type from OVAL id string
- get_element_type_from_path: gets element type from path
- get_definition_paths_iterator: get an iterator of all definition paths
- get_element_paths_iterator: get an iterator of all OVAL element paths.
- get_root_path: get full/real path for all files in this git repo
- get_repository_root_path: get full/real path to repo content root
- get_scripts_path: get full/real path for scripts folder
- get_oval_def_schema: gets OVAL definitions schema file for specified schema version
- get_oval_def_schematron: gets OVAL definitions schema file for specified schematron version
- get_schema_versions: get sorted list of OVAL schema version contained in the repo.
- message: outputs a message to the CLI

TODO:
- TBD
"""


import inspect
import os.path
import sys
from datetime import datetime



supported_definition_classes = ('compliance', 'inventory', 'patch', 'vulnerability', 'miscellaneous')
supported_definition_statuses = ('ACCEPTED', 'DEPRECATED', 'DRAFT', 'INTERIM', 'INITIAL SUBMISSION')
supported_element_types = ('definition', 'test', 'object', 'state', 'variable')


def path_to_oval_id(path):
    """ Transform a path to an oval_id. """
    file_name = os.path.basename(path)
    oval_id = file_name.replace('_', ':')[:-4]
    return oval_id


def oval_id_to_path(ovalid):
    if not ovalid or ovalid is None:
        return None
    return ovalid.replace(":", "_") + ".xml"


def get_element_type_from_oval_id(oval_id):
    """ Gets element type from OVAL id. """
    
    if not oval_id or oval_id is None:
        raise ValueError("Empty OVAL ID")
        
    segments = oval_id.split(':')
    if len(segments) != 4:
        raise ValueError('Invalid OVAL id: {0}.'.format(oval_id))

    code = segments[2]
    if code == 'def':
        element_type = 'definition'
    elif code == 'tst':
        element_type = 'test'
    elif code == 'obj':
        element_type = 'object'
    elif code == 'ste':
        element_type = 'state'
    elif code == 'var':
        element_type = 'variable'
    else:
        raise ValueError("Unknown OVAL object type '{0}' in {1}.".format(code, oval_id))

    return element_type


def get_element_repository_path(element):
    """Uses what is know about this element to construct the path that
    this element would be written to as a standalone file in the repository
    @type element: Element
    @param element: The XML element to be written
    
    @rtype: string
    @return: The full path to the repository file for this element or None if the path could not be created 
    """
    if element is None:
        return None
         
    # The path is:  repo_base / element type / schema short name / local node name / index bucket / converted file name
    # For definitions:  repo_base / oval class /
    try:
        root_path = get_repository_root_path()
        if not root_path or root_path is None:
            return None
            
        oval_id = element.get("id")
        if not oval_id or oval_id is None:
            return None
                
        element_type = get_element_type_from_oval_id(oval_id)
            
        if element_type == 'definition':
            defclass = element.get("class")
            if not defclass or defclass is None:
                return None
            #return root_path + "/definitions/" + defclass + "/" + oval_id_to_path(oval_id)
            return os.path.join(root_path, "definitions", defclass, oval_id_to_path(oval_id))
        
        elif element_type == "variable":
            #return root_path + "/variables/" + oval_id_to_path(oval_id)
            return os.path.join(root_path, "variables", oval_id_to_path(oval_id))
        
        else:
            platform = get_schema_short_name(element)
            if not platform or platform is None:
                return None        
                            
            predicate = get_local_name(element)
            if not predicate or predicate is None:
                return None
                    
            bucket = get_index_bucket(oval_id)
            if not bucket or bucket is None:
                return None
            #return root_path + "/" + element_type + "s/" + platform + "/" + predicate + "/" + bucket + "/" + oval_id_to_path(oval_id)
            return os.path.join(root_path, (element_type + "s"), platform, predicate, bucket, oval_id_to_path(oval_id))
        
    except Exception:
        return None
    
    
    

def get_schema_short_name(element):
    """The schema short name reveals is a stand-in for the platform that this element is for and can be derived from the namespace URI
    @type element: Element
    @param element: the XML Element 
    
    @rtype: string
    @return: the "short name" of the platform schema or None if it could not be determined
    """
    if element is None:
        return None

    tag = element.tag
        
    if not tag or tag is None:
        return None
        
    # If the oval ID does not contain a namespace, then we can't determine the schema shortname
    if not '}' in tag:
        return 'unknown'
        
    try:
        schema = tag.rsplit('}', 1)[0]
        if not '#' in schema:
            return "independent"
        return schema.rsplit('#', 1)[1].strip()
    except Exception:
        return None
        
        
def get_local_name(element):
    """
    Just the element name with the schema URI (if any) removed
    @type element: Element
    @param element:  The XML element
    
    @rtype: string
    @return: the base name of the element or None if it could not be determined
    """
        
    if element is None:
        return None

    #Check if this node name is prefixed by a URI, in which case return every after the URI
    if '}' in element.tag:
        return str(element.tag).rsplit('}',1)[1]
        
    #If no namespace prefix, just return the node name
    return element.tag
        
          
def get_index_bucket(oval_id):
    """The current repository schema protects against having too many files in a single directory by
    creating subdirectories based on the index portion of the OVALID that limits the number of
    files to 1000.  This function determines the proper bucket based on the OVALID
    @type oval_id: string
    @param oval_id: The OVALID
    
    @rtype: int
    @return: an integer representing the proper subdirectory for this OVALID, or 0 if it could not
    be computed.  
    """
    if not oval_id or oval_id is None:
        return None
        
    # Get the numeric index from the end of the OVAL ID
    position = oval_id.rfind(':')
    if position < 0:
        return None
        
    try:
        position = position + 1
        index = int(oval_id[position:])

        if index < 1000:
            return "0000"

        # Apply the modulus function to determine which bucket it belongs to
        return str(int(index/1000) * 1000)
        # Or another way to do it:
#             sequence = int(index)
#             mod = sequence % 1000
#             return sequence - mod + 1000
    except Exception:
        return None

def get_element_type_from_path(path):
    """ Gets element type from path. """
    return get_element_type_from_oval_id(path_to_oval_id(path))


def get_definition_paths_iterator():
    """ Returns an iterator of all definition paths. """
    definitions_root = os.path.join(get_repository_root_path(), 'definitions')
    for dirpath, dirnames, filenames in os.walk(definitions_root):
        for filename in filenames:
            if filename.endswith('.xml'):
                yield os.path.join(dirpath, filename)


def get_element_paths_iterator():
    """ Returns an iterator of all OVAL element paths. """
    elements_root = os.path.join(get_repository_root_path())
    for dirpath, dirnames, filenames in os.walk(elements_root):
        for filename in filenames:
            if filename.endswith('.xml'):
                yield os.path.join(dirpath, filename)


def get_root_path():
    """ Gets root path. """
    global root_path
    if 'root_path' not in globals():
        scripts_path = os.path.dirname(os.path.abspath(inspect.getfile(inspect.currentframe())))
        root_path = os.path.realpath(scripts_path + '/../')
    return root_path


def get_schema_versions():
    """ Gets sorted OVAL schema versions contained in the repo. The order must be newest to oldest """
    return ["5.11.2","5.11.1","5.11","5.10.1","5.10","5.9","5.8","5.7","5.6","5.5","5.4","5.3","5.2","5.1","5.0"]


def get_repository_root_path():
    """ Gets repository root path. """
    return os.path.realpath(get_root_path() + '/repository' )


def get_scripts_path():
    """ Gets scripts folder root path. """
    return os.path.realpath(get_root_path() + '/scripts' )


def get_oval_def_schema(schema_version='5.11.2'):
    """ Gets OVAL definitions schema file for specified schema version. """
    schema_folder = os.path.realpath(get_root_path() + '/oval_schemas/' + schema_version)
    schema_path = os.path.realpath(schema_folder + '/all-oval-definitions.xsd')
    
    if not os.path.isfile(schema_path):
        # create all-oval-definitions.xsd
        with open(schema_path, 'w') as f:
            f.write('<xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" targetNamespace="http://oval.mitre.org/XMLSchema/oval-definitions-5" elementFormDefault="qualified" attributeFormDefault="unqualified" version="{0}">'.format(schema_version))
            
            for filename in os.listdir(schema_folder):
                if not filename.endswith('.xsd'): continue
                if 'system-characteristics' in filename or 'all-oval-definitions' in filename or 'oval-definitions-schema.xsd' in filename : continue
                tree = etree.parse(os.path.join(schema_folder, filename))
                targetNamespace = tree.getroot().get('targetNamespace')
                f.write('\t<xsd:import namespace="{0}" schemaLocation="{1}"/>\n'.format(targetNamespace, filename))
            
            f.write('<xsd:redefine schemaLocation="oval-definitions-schema.xsd"><xsd:complexType name="MetadataType"><xsd:complexContent><xsd:restriction base="oval-def:MetadataType"><xsd:sequence><xsd:element name="title" type="xsd:string" minOccurs="1" maxOccurs="1"/><xsd:element name="affected" type="oval-def:AffectedType" minOccurs="0" maxOccurs="unbounded"/><xsd:element name="reference" type="oval-def:ReferenceType" minOccurs="0" maxOccurs="unbounded"/><xsd:element name="description" type="xsd:string" minOccurs="1" maxOccurs="1"/><xsd:element name="oval_repository"><xsd:complexType><xsd:sequence><xsd:element name="dates" type="oval-def:MetadataDatesType" minOccurs="1" maxOccurs="1"/><xsd:element name="status" type="oval-def:MetadataStatusEnumeration" minOccurs="1" maxOccurs="1"/><xsd:element name="affected_cpe_list" type="oval-def:AffectedCPEListType" minOccurs="0" maxOccurs="1"/><xsd:element name="min_schema_version" type="oval-def:MetadataMinSchemaVersionType" minOccurs="0" maxOccurs="1"/></xsd:sequence></xsd:complexType></xsd:element></xsd:sequence></xsd:restriction></xsd:complexContent></xsd:complexType></xsd:redefine><xsd:complexType name="AffectedCPEListType"><xsd:sequence><xsd:element name="cpe" minOccurs="1" maxOccurs="unbounded" type="xsd:anyURI"/></xsd:sequence></xsd:complexType><xsd:simpleType name="MetadataMinSchemaVersionType"><xsd:annotation><xsd:documentation>The MetadataMinSchemaVersionType simple type is a restriction of the built-in string simpleType. Empty strings are not allowed.</xsd:documentation></xsd:annotation><xsd:restriction base="xsd:string"><xsd:minLength value="1"/></xsd:restriction></xsd:simpleType><xsd:complexType name="MetadataDatesType"><xsd:sequence><xsd:element name="created" minOccurs="0" maxOccurs="1"><xsd:annotation><xsd:documentation>The created element represents the date the definition was created and the set of contributors that created the definition.</xsd:documentation></xsd:annotation><xsd:complexType><xsd:sequence><xsd:element name="contributor" type="oval-def:MetadataContributorType" minOccurs="0" maxOccurs="unbounded"/></xsd:sequence><xsd:attribute name="date" type="xsd:dateTime" use="required"/></xsd:complexType></xsd:element><xsd:element name="submitted" minOccurs="1" maxOccurs="1"><xsd:annotation><xsd:documentation>The submitted element represents the date the definition was submitted to the OVAL Repository and the set of contributors that submitted the definition.</xsd:documentation></xsd:annotation><xsd:complexType><xsd:sequence><xsd:element name="contributor" type="oval-def:MetadataContributorType" minOccurs="0" maxOccurs="unbounded"/></xsd:sequence><xsd:attribute name="date" type="xsd:dateTime" use="required"/></xsd:complexType></xsd:element><xsd:choice minOccurs="0" maxOccurs="unbounded"><xsd:element name="modified"><xsd:annotation><xsd:documentation>The modified element represents the date the definition was modified, a brief comment about the change that was made, and the set of contributors that modified the definition.</xsd:documentation></xsd:annotation><xsd:complexType><xsd:sequence><xsd:element name="contributor" type="oval-def:MetadataContributorType" minOccurs="0" maxOccurs="unbounded"/></xsd:sequence><xsd:attribute name="date" type="xsd:dateTime" use="required"/><xsd:attribute name="comment" type="xsd:string" use="required"/></xsd:complexType></xsd:element><xsd:element name="status_change"><xsd:annotation><xsd:documentation>The status_change element records the data and time that a definition\'s satatus is chagned. This element is managed by the OVAL Repository.</xsd:documentation></xsd:annotation><xsd:complexType><xsd:simpleContent><xsd:extension base="oval-def:MetadataStatusEnumeration"><xsd:attribute name="date" type="xsd:dateTime" use="required"/></xsd:extension></xsd:simpleContent></xsd:complexType></xsd:element></xsd:choice></xsd:sequence></xsd:complexType><xsd:complexType name="MetadataContributorType"><xsd:simpleContent><xsd:extension base="xsd:string"><xsd:attribute name="organization" type="xsd:string" use="optional"/></xsd:extension></xsd:simpleContent></xsd:complexType><xsd:simpleType name="MetadataStatusEnumeration"><xsd:restriction base="xsd:string"><xsd:enumeration value="ACCEPTED"/><xsd:enumeration value="DEPRECATED"/><xsd:enumeration value="DRAFT"/><xsd:enumeration value="INCOMPLETE"/><xsd:enumeration value="INITIAL SUBMISSION"/><xsd:enumeration value="INTERIM"/></xsd:restriction></xsd:simpleType>')
            f.write('</xsd:schema>')

    return os.path.realpath(get_root_path() + '/oval_schemas/' + schema_version + '/all-oval-definitions.xsd' )


def get_oval_def_schematron(schema_version='5.11.2'):
    """ Gets OVAL definitions schema file for specified schema version. """
    return os.path.realpath(get_root_path() + '/oval_schemas/' + schema_version + '/all-oval-definitions-schematron.xsl' )


def get_formatted_datetime():
    dtnow = datetime.now()
    dtutcnow = datetime.utcnow()
    delta = dtnow - dtutcnow
    hh,mm = divmod((delta.days * 24*60*60 + delta.seconds + 30) // 60, 60)
    return "%s%+02d:%02d" % (dtnow.isoformat(), hh, mm)

def message(type, message):
    """ Print a message """
    sys.stdout.write('\r{0}: {1}\n'.format(type.upper(), message))
