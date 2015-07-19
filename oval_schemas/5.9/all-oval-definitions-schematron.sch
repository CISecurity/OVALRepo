<?xml version="1.0" standalone="yes"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" xmlns:xs="http://www.w3.org/2001/XMLSchema">
  <sch:ns xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" prefix="oval" uri="http://oval.mitre.org/XMLSchema/oval-common-5"/>
  <sch:ns xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" prefix="oval-def" uri="http://oval.mitre.org/XMLSchema/oval-definitions-5"/>
  <sch:ns xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ds="http://www.w3.org/2000/09/xmldsig#" prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>
  <sch:ns xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:aix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#aix" prefix="aix-def" uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#aix"/>
  <sch:ns xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:apache-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#apache" prefix="apache-def" uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#apache"/>
  <sch:ns xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:catos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#catos" prefix="catos-def" uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#catos"/>
  <sch:ns xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:esx-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#esx" prefix="esx-def" uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#esx"/>
  <sch:ns xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:freebsd-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#freebsd" prefix="freebsd-def" uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#freebsd"/>
  <sch:ns xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" prefix="hpux-def" uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux"/>
  <sch:ns xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" prefix="ind-def" uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent"/>
  <sch:ns xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ios-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios" prefix="ios-def" uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios"/>
  <sch:ns xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:linux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" prefix="linux-def" uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux"/>
  <sch:ns xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" prefix="macos-def" uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos"/>
  <sch:ns xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:pixos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#pixos" prefix="pixos-def" uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#pixos"/>
  <sch:ns xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:sp-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint" prefix="sp-def" uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint"/>
  <sch:ns xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:sol-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris" prefix="sol-def" uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris"/>
  <sch:ns xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" prefix="unix-def" uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix"/>
  <sch:ns xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" prefix="win-def" uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows"/>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" id="oval_none_exist_value_dep">
                                   <sch:rule context="oval-def:oval_definitions/oval-def:tests/child::*">
                                        <sch:report test="@check='none exist'">
                                             DEPRECATED ATTRIBUTE VALUE IN: <sch:value-of select="name()"/> ATTRIBUTE VALUE:
                                        </sch:report>
                                   </sch:rule>
                              </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ds="http://www.w3.org/2000/09/xmldsig#" id="oval-def_empty_def_doc">
                    <sch:rule context="oval-def:oval_definitions">
                        <sch:assert test="oval-def:definitions or oval-def:tests or oval-def:objects or oval-def:states or oval-def:variables">A valid OVAL Definition document must contain at least one definitions, tests, objects, states, or variables element. The optional definitions, tests, objects, states, and variables sections define the specific characteristics that should be evaluated on a system to determine the truth values of the OVAL Definition Document. To be valid though, at least one definitions, tests, objects, states, or variables element must be present.</sch:assert>
                    </sch:rule>
                </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ds="http://www.w3.org/2000/09/xmldsig#" id="oval-def_required_criteria">
                    <sch:rule context="oval-def:oval_definitions/oval-def:definitions/oval-def:definition[@deprecated=false() or not(@deprecated)]">
                        <sch:assert test="oval-def:criteria">A valid OVAL Definition document must contain a criteria unless the definition is a deprecated definition.</sch:assert>
                    </sch:rule>
                </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ds="http://www.w3.org/2000/09/xmldsig#" id="oval-def_test_type">
                    <sch:rule context="oval-def:oval_definitions/oval-def:tests/*[@check_existence='none_exist']">
                        <sch:assert test="not(*[local-name()='state'])"><sch:value-of select="@id"/> - No state should be referenced when check_existence has a value of 'none_exist'.</sch:assert>
                    </sch:rule>
                </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ds="http://www.w3.org/2000/09/xmldsig#" id="oval-def_setobjref">
                    <sch:rule context="oval-def:oval_definitions/oval-def:objects/*/oval-def:set/oval-def:object_reference">
                        <sch:assert test="name(./../..) = name(ancestor::oval-def:oval_definitions/oval-def:objects/*[@id=current()])"><sch:value-of select="../../@id"/> - Each object referenced by the set must be of the same type as parent object</sch:assert>
                    </sch:rule>
                    <sch:rule context="oval-def:oval_definitions/oval-def:objects/*/oval-def:set/oval-def:set/oval-def:object_reference">
                        <sch:assert test="name(./../../..) = name(ancestor::oval-def:oval_definitions/oval-def:objects/*[@id=current()])"><sch:value-of select="../../../@id"/> - Each object referenced by the set must be of the same type as parent object</sch:assert>
                    </sch:rule>
                    <sch:rule context="oval-def:oval_definitions/oval-def:objects/*/oval-def:set/oval-def:set/oval-def:set/oval-def:object_reference">
                        <sch:assert test="name(./../../../..) = name(ancestor::oval-def:oval_definitions/oval-def:objects/*[@id=current()])"><sch:value-of select="../../../../@id"/> - Each object referenced by the set must be of the same type as parent object</sch:assert>
                    </sch:rule>
                </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ds="http://www.w3.org/2000/09/xmldsig#" id="oval-def_literal_component">
                    <sch:rule context="oval-def:literal_component">
                        <sch:assert test="not(@datatype='record')"><sch:value-of select="ancestor::*/@id"/> - The 'record' datatype is prohibited on variables.</sch:assert>
                    </sch:rule>
                    <!--
                        <sch:rule context="oval-def:literal_component/*/*[not(@datatype)]">
                        </sch:rule>
                        <sch:rule context="oval-def:literal_component[@datatype='binary']">
                        <sch:assert test="matches(., '^[0-9a-fA-F]*$')"><sch:value-of select="../@id"/> - A value of '<sch:value-of select="."/>' for the <sch:value-of select="name()"/> entity is not valid given a datatype of binary.</sch:assert>
                        </sch:rule>
                        <sch:rule context="oval-def:literal_component[@datatype='boolean']">
                        <sch:assert test="matches(., '^true$|^false$|^1$|^0$')"><sch:value-of select="../@id"/> - A value of '<sch:value-of select="."/>' for the <sch:value-of select="name()"/> entity is not valid given a datatype of boolean.</sch:assert>
                        </sch:rule>
                        <sch:rule context="oval-def:literal_component[@datatype='evr_string']">
                        <sch:assert test="matches(., '^[^:\-]*:[^:\-]*-[^:\-]*$')"><sch:value-of select="../@id"/> - A value of '<sch:value-of select="."/>' for the <sch:value-of select="name()"/> entity is not valid given a datatype of evr_string.</sch:assert>
                        </sch:rule>
                        <sch:rule context="oval-def:literal_component[@datatype='fileset_revision']">
                        </sch:rule>
                        <sch:rule context="oval-def:literal_component[@datatype='float']">
                        <sch:assert test="matches(., '^[+\-]?[0-9]+([\.][0-9]+)?([eE][+\-]?[0-9]+)?$|^NaN$|^INF$|^\-INF$')"><sch:value-of select="../@id"/> - A value of '<sch:value-of select="."/>' for the <sch:value-of select="name()"/> entity is not valid given a datatype of float.</sch:assert>
                        </sch:rule>
                        <sch:rule context="oval-def:literal_component[@datatype='ios_version']">
                        </sch:rule>
                        <sch:rule context="oval-def:literal_component[@datatype='int']">
                        <sch:assert test="matches(., '^[+\-]?[0-9]+$')"><sch:value-of select="../@id"/> - A value of '<sch:value-of select="."/>' for the <sch:value-of select="name()"/> entity is not valid given a datatype of int.</sch:assert>
                        </sch:rule>
                        <sch:rule context="oval-def:literal_component[@datatype='string']">
                        </sch:rule>
                        <sch:rule context="oval-def:literal_component[@datatype='version']">
                        </sch:rule>
                    -->
                </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ds="http://www.w3.org/2000/09/xmldsig#" id="oval-def_arithmeticfunctionrules">
                    <sch:rule context="oval-def:arithmetic/oval-def:literal_component">
                        <sch:assert test="@datatype='float' or @datatype='int'">A literal_component used by an arithmetic function must have a datatype of float or int.</sch:assert>
                    </sch:rule>
                    <sch:rule context="oval-def:arithmetic/oval-def:variable_component">
                        <sch:let name="var_ref" value="@var_ref"/>
                        <sch:assert test="ancestor::oval-def:oval_definitions/oval-def:variables/*[@id=$var_ref]/@datatype='float' or ancestor::oval-def:oval_definitions/oval-def:variables/*[@id=$var_ref]/@datatype='int'">The variable referenced by the arithmetic function must have a datatype of float or int.</sch:assert>
                    </sch:rule>
                </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ds="http://www.w3.org/2000/09/xmldsig#" id="oval-def_beginfunctionrules">
                    <sch:rule context="oval-def:begin/oval-def:literal_component">
                        <sch:assert test="not(@datatype) or @datatype='string'">A literal_component used by the begin function must have a datatype of string.</sch:assert>
                    </sch:rule>
                    <sch:rule context="oval-def:begin/oval-def:variable_component">
                        <sch:let name="var_ref" value="@var_ref"/>
                        <sch:assert test="ancestor::oval-def:oval_definitions/oval-def:variables/*[@id=$var_ref]/@datatype = 'string'">The variable referenced by the begin function must have a datatype of string.</sch:assert>
                    </sch:rule>
                </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ds="http://www.w3.org/2000/09/xmldsig#" id="oval-def_concatfunctionrules">
                        <sch:rule context="oval-def:concat/oval-def:literal_component">
                            <sch:assert test="not(@datatype) or @datatype='string'">A literal_component used by the concat function must have a datatype of string.</sch:assert>
                        </sch:rule>
                        <sch:rule context="oval-def:concat/oval-def:variable_component">
                            <sch:let name="var_ref" value="@var_ref"/>
                            <sch:assert test="ancestor::oval-def:oval_definitions/oval-def:variables/*[@id=$var_ref]/@datatype = 'string'">The variable referenced by the concat function must have a datatype of string.</sch:assert>
                        </sch:rule>
                    </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ds="http://www.w3.org/2000/09/xmldsig#" id="oval-def_endfunctionrules">
                    <sch:rule context="oval-def:end/oval-def:literal_component">
                        <sch:assert test="not(@datatype) or @datatype='string'">A literal_component used by the end function must have a datatype of string.</sch:assert>
                    </sch:rule>
                    <sch:rule context="oval-def:end/oval-def:variable_component">
                        <sch:let name="var_ref" value="@var_ref"/>
                        <sch:assert test="ancestor::oval-def:oval_definitions/oval-def:variables/*[@id=$var_ref]/@datatype = 'string'">The variable referenced by the end function must have a datatype of string.</sch:assert>
                    </sch:rule>
                </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ds="http://www.w3.org/2000/09/xmldsig#" id="oval-def_escaperegexfunctionrules">
                    <sch:rule context="oval-def:escape_regex/oval-def:literal_component">
                        <sch:assert test="not(@datatype) or @datatype='string'">A literal_component used by the escape_regex function must have a datatype of string.</sch:assert>
                    </sch:rule>
                    <sch:rule context="oval-def:escape_regex/oval-def:variable_component">
                        <sch:let name="var_ref" value="@var_ref"/>
                        <sch:assert test="ancestor::oval-def:oval_definitions/oval-def:variables/*[@id=$var_ref]/@datatype = 'string'">The variable referenced by the escape_regex function must have a datatype of string.</sch:assert>
                    </sch:rule>
                </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ds="http://www.w3.org/2000/09/xmldsig#" id="oval-def_splitfunctionrules">
                    <sch:rule context="oval-def:split/oval-def:literal_component">
                        <sch:assert test="not(@datatype) or @datatype='string'">A literal_component used by the split function must have a datatype of string.</sch:assert>
                    </sch:rule>
                    <sch:rule context="oval-def:split/oval-def:variable_component">
                        <sch:let name="var_ref" value="@var_ref"/>
                        <sch:assert test="ancestor::oval-def:oval_definitions/oval-def:variables/*[@id=$var_ref]/@datatype = 'string'">The variable referenced by the split function must have a datatype of string.</sch:assert>
                    </sch:rule>
                </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ds="http://www.w3.org/2000/09/xmldsig#" id="oval-def_substringfunctionrules">
                    <sch:rule context="oval-def:substring/oval-def:literal_component">
                        <sch:assert test="not(@datatype) or @datatype='string'">A literal_component used by the substring function must have a datatype of string.</sch:assert>
                    </sch:rule>
                    <sch:rule context="oval-def:substring/oval-def:variable_component">
                        <sch:let name="var_ref" value="@var_ref"/>
                        <sch:assert test="ancestor::oval-def:oval_definitions/oval-def:variables/*[@id=$var_ref]/@datatype = 'string'">The variable referenced by the substring function must have a datatype of string.</sch:assert>
                    </sch:rule>
                </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ds="http://www.w3.org/2000/09/xmldsig#" id="oval-def_timedifferencefunctionrules">
                    <sch:rule context="oval-def:time_difference/oval-def:literal_component">
                        <sch:assert test="not(@datatype) or @datatype='string' or @datatype='int'">A literal_component used by the time_difference function must have a datatype of string or int.</sch:assert>
                    </sch:rule>
                    <sch:rule context="oval-def:time_difference/oval-def:variable_component">
                        <sch:let name="var_ref" value="@var_ref"/>
                        <sch:assert test="ancestor::oval-def:oval_definitions/oval-def:variables/*[@id=$var_ref]/@datatype='string' or ancestor::oval-def:oval_definitions/oval-def:variables/*[@id=$var_ref]/@datatype='int'">The variable referenced by the time_difference function must have a datatype of string or int.</sch:assert>
                    </sch:rule>
                </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ds="http://www.w3.org/2000/09/xmldsig#" id="oval-def_regexcapturefunctionrules">
                    <sch:rule context="oval-def:regex_capture/oval-def:literal_component">
                        <sch:assert test="not(@datatype) or @datatype='string'">A literal_component used by the regex_capture function must have a datatype of string.</sch:assert>
                    </sch:rule>
                    <sch:rule context="oval-def:regex_capture/oval-def:variable_component">
                        <sch:let name="var_ref" value="@var_ref"/>
                        <sch:assert test="ancestor::oval-def:oval_definitions/oval-def:variables/*[@id=$var_ref]/@datatype = 'string'">The variable referenced by the regex_capture function must have a datatype of string.</sch:assert>
                    </sch:rule>
                </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ds="http://www.w3.org/2000/09/xmldsig#" id="oval-def_definition_entity_rules">
                    <!-- These schematron rules are written to look at object and state entities as well as fields in states. -->
                    <!-- var_ref and var_check rules --> 
                    <sch:rule context="oval-def:objects/*/*[@var_ref]|oval-def:states/*/*[@var_ref]|oval-def:states/*/*/*[@var_ref]">
                        <sch:let name="var_ref" value="@var_ref"/>
                        <sch:assert test=".=''"><sch:value-of select="../@id"/> - a var_ref has been supplied for the <sch:value-of select="name()"/> entity so no value should be provided</sch:assert>
                        <sch:assert test="( (not(@datatype)) and ('string' = ancestor::oval-def:oval_definitions/oval-def:variables/*[@id=$var_ref]/@datatype) ) or (@datatype = ancestor::oval-def:oval_definitions/oval-def:variables/*[@id=$var_ref]/@datatype)"><sch:value-of select="$var_ref"/> - inconsistent datatype between the variable and an associated var_ref</sch:assert>
                    </sch:rule>
                    <sch:rule context="oval-def:objects/*/*[@var_ref]|oval-def:objects/*/*/*[@var_ref]">
                        <sch:report test="not(@var_check)"><sch:value-of select="../@id"/> - a var_ref has been supplied for the <sch:value-of select="name()"/> entity so a var_check must also be provided</sch:report>
                    </sch:rule>
                    <sch:rule context="oval-def:objects/*/*[@var_check]|oval-def:objects/*/*/*[@var_check]">
                        <sch:assert test="@var_ref"><sch:value-of select="../@id"/> - a var_check has been supplied for the <sch:value-of select="name()"/> entity so a var_ref must also be provided</sch:assert>
                    </sch:rule>
                    <sch:rule context="oval-def:states/*/*[@var_ref]|oval-def:states/*/*/*[@var_ref]">
                        <sch:report test="not(@var_check)"><sch:value-of select="../@id"/> - a var_ref has been supplied for the <sch:value-of select="name()"/> entity so a var_check must also be provided</sch:report>
                    </sch:rule>
                    <sch:rule context="oval-def:states/*/*[@var_check]|oval-def:states/*/*/*[@var_check]">
                        <sch:assert test="@var_ref"><sch:value-of select="../@id"/> - a var_check has been supplied for the <sch:value-of select="name()"/> entity so a var_ref must also be provided</sch:assert>
                    </sch:rule>
                    <!-- datatype and operation rules -->
                    <sch:rule context="oval-def:objects/*/*[not(@datatype)]|oval-def:states/*/*[not(@datatype)]|oval-def:states/*/*/*[not(@datatype)]">
                        <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='case insensitive equals' or @operation='case insensitive not equal' or @operation='pattern match'"><sch:value-of select="../@id"/> - The use of '<sch:value-of select="@operation"/>' for the operation attribute of the <sch:value-of select="name()"/> entity is not valid given the lack of a declared datatype (hence a default datatype of string).</sch:assert>
                    </sch:rule>
                    <sch:rule context="oval-def:objects/*/*[@datatype='binary']|oval-def:states/*/*[@datatype='binary']|oval-def:states/*/*/*[@datatype='binary']">
                        <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'"><sch:value-of select="../@id"/> - The use of '<sch:value-of select="@operation"/>' for the operation attribute of the <sch:value-of select="name()"/> entity is not valid given a datatype of binary.</sch:assert>
                        <!--<sch:assert test="matches(., '^[0-9a-fA-F]*$')"><sch:value-of select="../@id"/> - A value of '<sch:value-of select="."/>' for the <sch:value-of select="name()"/> entity is not valid given a datatype of binary.</sch:assert>-->
                    </sch:rule>
                    <sch:rule context="oval-def:objects/*/*[@datatype='boolean']|oval-def:states/*/*[@datatype='boolean']|oval-def:states/*/*/*[@datatype='boolean']">
                        <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'"><sch:value-of select="../@id"/> - The use of '<sch:value-of select="@operation"/>' for the operation attribute of the <sch:value-of select="name()"/> entity is not valid given a datatype of boolean.</sch:assert>
                        <!--<sch:assert test="matches(., '^true$|^false$|^1$|^0$')"><sch:value-of select="../@id"/> - A value of '<sch:value-of select="."/>' for the <sch:value-of select="name()"/> entity is not valid given a datatype of boolean.</sch:assert>-->
                    </sch:rule>
                    <sch:rule context="oval-def:objects/*/*[@datatype='evr_string']|oval-def:states/*/*[@datatype='evr_string']|oval-def:states/*/*/*[@datatype='evr_string']">
                        <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or  @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'"><sch:value-of select="../@id"/> - The use of '<sch:value-of select="@operation"/>' for the operation attribute of the <sch:value-of select="name()"/> entity is not valid given a datatype of evr_string.</sch:assert>
                        <!--<sch:assert test="matches(., '^[^:\-]*:[^:\-]*-[^:\-]*$')"><sch:value-of select="../@id"/> - A value of '<sch:value-of select="."/>' for the <sch:value-of select="name()"/> entity is not valid given a datatype of evr_string.</sch:assert>-->
                    </sch:rule>
                    <sch:rule context="oval-def:objects/*/*[@datatype='fileset_revision']|oval-def:states/*/*[@datatype='fileset_revision']|oval-def:states/*/*/*[@datatype='fileset_revision']">
                        <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or  @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'"><sch:value-of select="../@id"/> - The use of '<sch:value-of select="@operation"/>' for the operation attribute of the <sch:value-of select="name()"/> entity is not valid given a datatype of fileset_revision.</sch:assert>
                    </sch:rule>
                    <sch:rule context="oval-def:objects/*/*[@datatype='float']|oval-def:states/*/*[@datatype='float']|oval-def:states/*/*/*[@datatype='float']">
                        <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'"><sch:value-of select="../@id"/> - The use of '<sch:value-of select="@operation"/>' for the operation attribute of the <sch:value-of select="name()"/> entity is not valid given a datatype of float.</sch:assert>
                        <!--<sch:assert test="matches(., '^[+\-]?[0-9]+([\.][0-9]+)?([eE][+\-]?[0-9]+)?$|^NaN$|^INF$|^\-INF$')"><sch:value-of select="../@id"/> - A value of '<sch:value-of select="."/>' for the <sch:value-of select="name()"/> entity is not valid given a datatype of float.</sch:assert>-->
                    </sch:rule>
                    <sch:rule context="oval-def:objects/*/*[@datatype='ios_version']|oval-def:states/*/*[@datatype='ios_version']|oval-def:states/*/*/*[@datatype='ios_version']">
                        <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'"><sch:value-of select="../@id"/> - The use of '<sch:value-of select="@operation"/>' for the operation attribute of the <sch:value-of select="name()"/> entity is not valid given a datatype of ios_version.</sch:assert>
                    </sch:rule>
                    <sch:rule context="oval-def:objects/*/*[@datatype='int']|oval-def:states/*/*[@datatype='int']|oval-def:states/*/*/*[@datatype='int']">
                        <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal' or @operation='bitwise and' or @operation='bitwise or'"><sch:value-of select="../@id"/> - The use of '<sch:value-of select="@operation"/>' for the operation attribute of the <sch:value-of select="name()"/> entity is not valid given a datatype of int.</sch:assert>
                        <!--<sch:assert test="matches(., '^[+\-]?[0-9]+$')"><sch:value-of select="../@id"/> - A value of '<sch:value-of select="."/>' for the <sch:value-of select="name()"/> entity is not valid given a datatype of int.</sch:assert>-->
                    </sch:rule>
                    <sch:rule context="oval-def:objects/*/*[@datatype='ipv4_address']|oval-def:states/*/*[@datatype='ipv4_address']|oval-def:states/*/*/*[@datatype='ipv4_address']">
                        <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal' or @operation='subset of' or @operation='superset of'"><sch:value-of select="../@id"/> - The use of '<sch:value-of select="@operation"/>' for the operation attribute of the <sch:value-of select="name()"/> entity is not valid given a datatype of ipv4_address.</sch:assert>
                        <!-- TODO <sch:assert test="matches(we_need_regex_for_ipv4)"><sch:value-of select="../@id"/> - A value of '<sch:value-of select="."/>' for the <sch:value-of select="name()"/> entity is not valid given a datatype of ipv4_address.</sch:assert>-->
                    </sch:rule>
                    <sch:rule context="oval-def:objects/*/*[@datatype='ipv6_address']|oval-def:states/*/*[@datatype='ipv6_address']|oval-def:states/*/*/*[@datatype='ipv6_address']">
                        <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal' or @operation='subset of' or @operation='superset of'"><sch:value-of select="../@id"/> - The use of '<sch:value-of select="@operation"/>' for the operation attribute of the <sch:value-of select="name()"/> entity is not valid given a datatype of ipv6_address.</sch:assert>
                        <!-- TODO <sch:assert test="matches(we_need_regex_for_ipv6)"><sch:value-of select="../@id"/> - A value of '<sch:value-of select="."/>' for the <sch:value-of select="name()"/> entity is not valid given a datatype of ipv6_address.</sch:assert>-->
                    </sch:rule>
                    <sch:rule context="oval-def:objects/*/*[@datatype='string']|oval-def:states/*/*[@datatype='string']|oval-def:states/*/*/*[@datatype='string']">
                        <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='case insensitive equals' or @operation='case insensitive not equal' or @operation='pattern match'"><sch:value-of select="../@id"/> - The use of '<sch:value-of select="@operation"/>' for the operation attribute of the <sch:value-of select="name()"/> entity is not valid given a datatype of string.</sch:assert>
                    </sch:rule>
                    <sch:rule context="oval-def:objects/*/*[@datatype='version']|oval-def:states/*/*[@datatype='version']|oval-def:states/*/*/*[@datatype='version']">
                        <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'"><sch:value-of select="../@id"/> - The use of '<sch:value-of select="@operation"/>' for the operation attribute of the <sch:value-of select="name()"/> entity is not valid given a datatype of version.</sch:assert>
                    </sch:rule>
                    <sch:rule context="oval-def:objects/*/*[@datatype='record']|oval-def:states/*/*[@datatype='record']|oval-def:states/*/*/*[@datatype='record']">
                        <sch:assert test="not(@operation) or @operation='equals'"><sch:value-of select="../@id"/> - The use of '<sch:value-of select="@operation"/>' for the operation attribute of the <sch:value-of select="name()"/> entity is not valid given a datatype of record.</sch:assert>
                    </sch:rule>
                </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ds="http://www.w3.org/2000/09/xmldsig#" id="oval-def_no_var_ref_with_records">
                    <sch:rule context="oval-def:objects/*/*[@datatype='record']|oval-def:states/*/*[@datatype='record']">
                        <sch:assert test="not(@var_ref)"><sch:value-of select="../@id"/> - The use of var_ref is prohibited when the datatype is 'record'.</sch:assert>
                    </sch:rule>
                </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ds="http://www.w3.org/2000/09/xmldsig#" id="oval-def_definition_entity_type_check_rules">
                    <sch:rule context="oval-def:objects/*/*[not(@xsi:nil=true()) and not(@var_ref) and @datatype='int']|oval-def:states/*/*[not(@xsi:nil=true()) and not(@var_ref) and @datatype='int']">
                        <sch:assert test="(not(contains(.,'.'))) and (number(.) = floor(.))"><sch:value-of select="../@id"/> - The datatype for the <sch:value-of select="name()"/> entity is 'int' but the value is not an integer.</sch:assert>
                        <!--  Must test for decimal point because number(x.0) = floor(x.0) is true -->
                    </sch:rule>
                </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:aix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#aix" id="aix-def_interimfixtst">
                              <sch:rule context="aix-def:interim_fix_test/aix-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/aix-def:interim_fix_object/@id"><sch:value-of select="../@id"/> - the object child element of a <sch:name path=".."/> must reference a interim_fix_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="aix-def:interim_fix_test/aix-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/aix-def:interim_fix_state/@id"><sch:value-of select="../@id"/> - the state child element of a <sch:name path=".."/> must reference a interim_fix_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:aix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#aix" id="aix-def_filesettst">
                        <sch:rule context="aix-def:fileset_test/aix-def:object">
                            <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/aix-def:fileset_object/@id"><sch:value-of select="../@id"/> - the object child element of a fileset_test must reference a fileset_object</sch:assert>
                        </sch:rule>
                        <sch:rule context="aix-def:fileset_test/aix-def:state">
                            <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/aix-def:fileset_state/@id"><sch:value-of select="../@id"/> - the state child element of a fileset_test must reference a fileset_state</sch:assert>
                        </sch:rule>
                    </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:aix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#aix" id="aix-def_fixtst">
                        <sch:rule context="aix-def:fix_test/aix-def:object">
                            <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/aix-def:fix_object/@id"><sch:value-of select="../@id"/> - the object child element of a fix_test must reference a fix_object</sch:assert>
                        </sch:rule>
                        <sch:rule context="aix-def:fix_test/aix-def:state">
                            <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/aix-def:fix_state/@id"><sch:value-of select="../@id"/> - the state child element of a fix_test must reference a fix_state</sch:assert>
                        </sch:rule>
                    </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:aix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#aix" id="aix-def_notst">
                              <sch:rule context="aix-def:no_test/aix-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/aix-def:no_object/@id"><sch:value-of select="../@id"/> - the object child element of a <sch:name path=".."/> must reference a no_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="aix-def:no_test/aix-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/aix-def:no_state/@id"><sch:value-of select="../@id"/> - the state child element of a <sch:name path=".."/> must reference a no_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:aix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#aix" id="aix-def_osleveltst">
                        <sch:rule context="aix-def:oslevel_test/aix-def:object">
                            <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/aix-def:oslevel_object/@id"><sch:value-of select="../@id"/> - the object child element of a oslevel_test must reference a oslevel_object</sch:assert>
                        </sch:rule>
                        <sch:rule context="aix-def:oslevel_test/aix-def:state">
                            <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/aix-def:oslevel_state/@id"><sch:value-of select="../@id"/> - the state child element of a oslevel_test must reference a oslevel_state</sch:assert>
                        </sch:rule>
                    </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:apache-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#apache" id="apache-def_httpd_test_dep">
                              <sch:rule context="apache-def:httpd_test">
                                    <sch:report test="true()">DEPRECATED TEST: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/></sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:apache-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#apache" id="apache-def_httpdtst">
                              <sch:rule context="apache-def:httpd_test/apache-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/apache-def:httpd_object/@id"><sch:value-of select="../@id"/> - the object child element of a httpd_test must reference a httpd_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="apache-def:httpd_test/apache-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/apache-def:httpd_state/@id"><sch:value-of select="../@id"/> - the state child element of a httpd_test must reference a httpd_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:apache-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#apache" id="apache-def_httpd_object_dep">
                              <sch:rule context="apache-def:httpd_object">
                                    <sch:report test="true()">DEPRECATED OBJECT: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/></sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:apache-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#apache" id="apache-def_httpd_state_dep">
                              <sch:rule context="apache-def:httpd_state">
                                    <sch:report test="true()">DEPRECATED STATE: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/></sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:catos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#catos" id="catos-def_linetst">
                    <sch:rule context="catos-def:line_test/catos-def:object">
                        <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/catos-def:line_object/@id"><sch:value-of select="../@id"/> - the object child element of a line_test must reference a line_object</sch:assert>
                    </sch:rule>
                    <sch:rule context="catos-def:line_test/catos-def:state">
                        <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/catos-def:line_state/@id"><sch:value-of select="../@id"/> - the state child element of a line_test must reference a line_state</sch:assert>
                    </sch:rule>
                </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:catos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#catos" id="catos-def_moduletst">
                            <sch:rule context="catos-def:module_test/catos-def:object">
                                  <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/catos-def:module_object/@id"><sch:value-of select="../@id"/> - the object child element of a module_test must reference a module_object</sch:assert>
                            </sch:rule>
                            <sch:rule context="catos-def:module_test/catos-def:state">
                                  <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/catos-def:module_state/@id"><sch:value-of select="../@id"/> - the state child element of a module_test must reference a module_state</sch:assert>
                            </sch:rule>
                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:catos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#catos" id="catos-def_version55_test">
                        <sch:rule context="catos-def:version55_test/catos-def:object">
                              <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/catos-def:version55_object/@id"><sch:value-of select="../@id"/> - the object child element of a version55_test must reference a version55_object</sch:assert>
                        </sch:rule>
                        <sch:rule context="catos-def:version55_test/catos-def:state">
                              <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/catos-def:version55_state/@id"><sch:value-of select="../@id"/> - the state child element of a version55_test must reference a version55_state</sch:assert>
                        </sch:rule>
                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:catos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#catos" id="catos-def_version_test_dep">
                          <sch:rule context="catos-def:version_test">
                                <sch:report test="true()">
                                      DEPRECATED TEST: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                </sch:report>
                          </sch:rule>
                    </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:catos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#catos" id="catos-def_version_test">
                          <sch:rule context="catos-def:version_test/catos-def:object">
                                <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/catos-def:version_object/@id"><sch:value-of select="../@id"/> - the object child element of a version_test must reference a version_object</sch:assert>
                          </sch:rule>
                          <sch:rule context="catos-def:version_test/catos-def:state">
                                <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/catos-def:version_state/@id"><sch:value-of select="../@id"/> - the state child element of a version_test must reference a version_state</sch:assert>
                          </sch:rule>
                    </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:catos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#catos" id="catos-def_version_object_dep">
                          <sch:rule context="catos-def:version_object">
                                <sch:report test="true()">
                                      DEPRECATED OBJECT: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                </sch:report>
                          </sch:rule>
                    </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:catos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#catos" id="catos-def_version_state_dep">
                          <sch:rule context="catos-def:version_state">
                                <sch:report test="true()">
                                      DEPRECATED STATE: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                </sch:report>
                          </sch:rule>
                    </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:esx-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#esx" id="esx-def_patch56tst">
                              <sch:rule context="esx-def:patch56_test/esx-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/esx-def:patch56_object/@id"><sch:value-of select="../@id"/> - the object child element of a patch56_test must reference a patch56_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="esx-def:patch56_test/esx-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/esx-def:patch56_state/@id"><sch:value-of select="../@id"/> - the state child element of a patch56_test must reference a patch56_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:esx-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#esx" id="esx-def_patchtst_dep">
                              <sch:rule context="esx-def:patch_test">
                                    <sch:report test="true()">DEPRECATED TEST: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/></sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:esx-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#esx" id="esx-def_patchtst">
                              <sch:rule context="esx-def:patch_test/esx-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/esx-def:patch_object/@id"><sch:value-of select="../@id"/> - the object child element of a patch_test must reference a patch_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="esx-def:patch_test/esx-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/esx-def:patch_state/@id"><sch:value-of select="../@id"/> - the state child element of a patch_test must reference a patch_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:esx-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#esx" id="esx-def_patchobj_dep">
                              <sch:rule context="esx-def:patch_object">
                                    <sch:report test="true()">DEPRECATED OBJECT: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/></sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:esx-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#esx" id="esx-def_patchste_dep">
                              <sch:rule context="esx-def:patch_state">
                                    <sch:report test="true()">DEPRECATED STATE: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/></sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:esx-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#esx" id="esx-def_versiontst">
                              <sch:rule context="esx-def:version_test/esx-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/esx-def:version_object/@id"><sch:value-of select="../@id"/> - the object child element of a version_test must reference a version_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="esx-def:version_test/esx-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/esx-def:version_state/@id"><sch:value-of select="../@id"/> - the state child element of a version_test must reference a version_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:esx-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#esx" id="esx-def_visdkmanagedobjecttst">
                              <sch:rule context="esx-def:visdkmanagedobject_test/esx-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/esx-def:visdkmanagedobject_object/@id"><sch:value-of select="../@id"/> - the object child element of a visdkmanagedobject_test must reference a visdkmanagedobject_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="esx-def:visdkmanagedobject_test/esx-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/esx-def:visdkmanagedobject_state/@id"><sch:value-of select="../@id"/> - the state child element of a visdkmanagedobject_test must reference a visdkmanagedobject_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:freebsd-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#freebsd" id="freebsd-def_portinfotst">
                              <sch:rule context="freebsd-def:portinfo_test/freebsd-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/freebsd-def:portinfo_object/@id"><sch:value-of select="../@id"/> - the object child element of a portinfo_test must reference an portinfo_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="freebsd-def:portinfo_test/freebsd-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/freebsd-def:portinfo_state/@id"><sch:value-of select="../@id"/> - the state child element of a portinfo_test must reference an portinfo_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="hpux-def_getconf_test">
                              <sch:rule context="hpux-def:getconf_test/hpux-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/hpux-def:getconf_object/@id"><sch:value-of select="../@id"/> - the object child element of an getconf_test must reference an getconf_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="hpux-def:getconf_test/hpux-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/hpux-def:getconf_state/@id"><sch:value-of select="../@id"/> - the state child element of an getconf_test must reference an getconf_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="hpux-def_ndd_test">
                              <sch:rule context="hpux-def:ndd_test/hpux-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/hpux-def:ndd_object/@id"><sch:value-of select="../@id"/> - the object child element of an ndd_test must reference an ndd_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="hpux-def:ndd_test/hpux-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/hpux-def:ndd_state/@id"><sch:value-of select="../@id"/> - the state child element of an ndd_test must reference an ndd_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="hpux-def_patch53_test">
                              <sch:rule context="hpux-def:patch53_test/hpux-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/hpux-def:patch53_object/@id"><sch:value-of select="../@id"/> - the object child element of an patch53_test must reference an patch53_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="hpux-def:patch53_test/hpux-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/hpux-def:patch53_state/@id"><sch:value-of select="../@id"/> - the state child element of an patch53_test must reference an patch53_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="hpux-def_patch_test_dep">
                              <sch:rule context="hpux-def:patch_test">
                                    <sch:report test="true()">
                                          DEPRECATED TEST: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                    </sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="hpux-def_patch_test">
                              <sch:rule context="hpux-def:patch_test/hpux-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/hpux-def:patch_object/@id"><sch:value-of select="../@id"/> - the object child element of an patch_test must reference an patch_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="hpux-def:patch_test/hpux-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/hpux-def:patch_state/@id"><sch:value-of select="../@id"/> - the state child element of an patch_test must reference an patch_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="hpux-def_patch_object_dep">
                              <sch:rule context="hpux-def:patch_object">
                                    <sch:report test="true()">
                                          DEPRECATED OBJECT: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                    </sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="hpux-def_patch_state_dep">
                              <sch:rule context="hpux-def:patch_state">
                                    <sch:report test="true()">
                                          DEPRECATED STATE: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                    </sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="hpux-def_swlist_test">
                              <sch:rule context="hpux-def:swlist_test/hpux-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/hpux-def:swlist_object/@id"><sch:value-of select="../@id"/> - the object child element of an swlist_test must reference an swlist_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="hpux-def:swlist_test/hpux-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/hpux-def:swlist_state/@id"><sch:value-of select="../@id"/> - the state child element of an swlist_test must reference an swlist_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="hpux-def_trusted_test">
                              <sch:rule context="hpux-def:trusted_test/hpux-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/hpux-def:trusted_object/@id"><sch:value-of select="../@id"/> - the object child element of an trusted_test must reference an trusted_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="hpux-def:trusted_test/hpux-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/hpux-def:trusted_state/@id"><sch:value-of select="../@id"/> - the state child element of an trusted_test must reference an trusted_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_famtst">
                              <sch:rule context="ind-def:family_test/ind-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ind-def:family_object/@id"><sch:value-of select="../@id"/> - the object child element of a family_test must reference a family_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ind-def:family_test/ind-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ind-def:family_state/@id"><sch:value-of select="../@id"/> - the state child element of a family_test must reference a family_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_filehash_test_dep">
                              <sch:rule context="ind-def:filehash_test">
                                    <sch:report test="true()">DEPRECATED TEST: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/></sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_hashtst">
                              <sch:rule context="ind-def:filehash_test/ind-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ind-def:filehash_object/@id"><sch:value-of select="../@id"/> - the object child element of a filehash_test must reference a filesha1_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ind-def:filehash_test/ind-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ind-def:filehash_state/@id"><sch:value-of select="../@id"/> - the state child element of a filehash_test must reference a filesha1_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_filehash_object_dep">
                              <sch:rule context="ind-def:filehash_object">
                                    <sch:report test="true()">DEPRECATED OBJECT: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/></sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_hashobjfilepath">
                                                                              <sch:rule context="ind-def:filehash_object/ind-def:filepath">
                                                                                    <sch:assert test="not(preceding-sibling::ind-def:behaviors[@max_depth or @recurse_direction])"><sch:value-of select="../@id"/> - the max_depth and recurse_direction behaviors are not allowed with a filepath entity</sch:assert>
                                                                              </sch:rule>
                                                                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_hashobjfilename">
                                                                                  <sch:rule context="ind-def:filehash_object/ind-def:filename">
                                                                                        <sch:assert test="(@var_ref and .='') or not(.='')"><sch:value-of select="../@id"/> - filename entity cannot be empty unless the xsi:nil attribute is set to true or a var_ref is used</sch:assert>
                                                                                  </sch:rule>
                                                                            </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_filehash_state_dep">
                              <sch:rule context="ind-def:filehash_state">
                                    <sch:report test="true()">DEPRECATED STATE: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/></sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_filehash58_test">
                              <sch:rule context="ind-def:filehash58_test/ind-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ind-def:filehash58_object/@id"><sch:value-of select="../@id"/> - the object child element of a filehash58_test must reference a filehash58_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ind-def:filehash58_test/ind-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ind-def:filehash58_state/@id"><sch:value-of select="../@id"/> - the state child element of a filehash58_test must reference a filehash58_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_hash58objfilepath">
                                                                              <sch:rule context="ind-def:filehash58_object/ind-def:filepath">
                                                                                    <sch:assert test="not(preceding-sibling::ind-def:behaviors[@max_depth or @recurse_direction])"><sch:value-of select="../@id"/> - the max_depth and recurse_direction behaviors are not allowed with a filepath entity</sch:assert>
                                                                              </sch:rule>
                                                                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_hash58objfilename">
                                                                                    <sch:rule context="ind-def:filehash58_object/ind-def:filename">
                                                                                          <sch:assert test="(@var_ref and .='') or not(.='')"><sch:value-of select="../@id"/> - filename entity cannot be empty unless the xsi:nil attribute is set to true or a var_ref is used</sch:assert>
                                                                                    </sch:rule>
                                                                              </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_environmentvariable_test_dep">
                              <sch:rule context="ind-def:environmentvariable_test">
                                    <sch:report test="true()">DEPRECATED TEST: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/></sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_envtst">
                              <sch:rule context="ind-def:environmentvariable_test/ind-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ind-def:environmentvariable_object/@id"><sch:value-of select="../@id"/> - the object child element of an environmentvariable_test must reference a environmentvariable_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ind-def:environmentvariable_test/ind-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ind-def:environmentvariable_state/@id"><sch:value-of select="../@id"/> - the state child element of an environmentvariable_test must reference a environmentvariable_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_environmentvariable_object_dep">
                              <sch:rule context="ind-def:environmentvariable_object">
                                    <sch:report test="true()">DEPRECATED OBJECT: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/></sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_environmentvariable_state_dep">
                              <sch:rule context="ind-def:environmentvariable_state">
                                    <sch:report test="true()">DEPRECATED STATE: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/></sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_env58tst">
                              <sch:rule context="ind-def:environmentvariable58_test/ind-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ind-def:environmentvariable58_object/@id"><sch:value-of select="../@id"/> - the object child element of an environmentvariable58_test must reference a environmentvariable58_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ind-def:environmentvariable58_test/ind-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ind-def:environmentvariable58_state/@id"><sch:value-of select="../@id"/> - the state child element of an environmentvariable58_test must reference a environmentvariable58_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_ldap_test_dep">
                              <sch:rule context="ind-def:ldap_test">
                                    <sch:report test="true()">DEPRECATED TEST: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/></sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_ldaptst">
                              <sch:rule context="ind-def:ldap_test/ind-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ind-def:ldap_object/@id"><sch:value-of select="../@id"/> - the object child element of an ldap_test must reference an ldap_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ind-def:ldap_test/ind-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ind-def:ldap_state/@id"><sch:value-of select="../@id"/> - the state child element of an ldap_test must reference an ldap_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_ldap_object_dep">
                              <sch:rule context="ind-def:ldap_object">
                                    <sch:report test="true()">DEPRECATED OBJECT: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/></sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_ldap_state_dep">
                              <sch:rule context="ind-def:ldap_state">
                                    <sch:report test="true()">DEPRECATED STATE: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/></sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_ldap57_test">
                              <sch:rule context="ind-def:ldap57_test/ind-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ind-def:ldap57_object/@id"><sch:value-of select="../@id"/> - the object child element of an ldap57_test must reference an ldap57_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ind-def:ldap57_test/ind-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ind-def:ldap57_state/@id"><sch:value-of select="../@id"/> - the state child element of an ldap57_test must reference an ldap57_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_ldap57stevalue">
                                                            <sch:rule context="ind-def:ldap57_state/ind-def:value">
                                                                  <sch:assert test="@datatype='record'"><sch:value-of select="../@id"/> - datatype attribute for the value entity of a ldap57_state must be 'record'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_sql_test_dep">
                              <sch:rule context="ind-def:sql_test">
                                    <sch:report test="true()">DEPRECATED TEST: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/></sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_sqltst">
                              <sch:rule context="ind-def:sql_test/ind-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ind-def:sql_object/@id"><sch:value-of select="../@id"/> - the object child element of a sql_test must reference a sql_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ind-def:sql_test/ind-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ind-def:sql_state/@id"><sch:value-of select="../@id"/> - the state child element of a sql_test must reference a sql_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_sql_object_dep">
                              <sch:rule context="ind-def:sql_object">
                                    <sch:report test="true()">DEPRECATED OBJECT: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/></sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_sqlobjdengine">
                                                                        <sch:rule context="ind-def:sql_object/ind-def:engine">
                                                                            <sch:assert test="not(@operation) or @operation='equals'"><sch:value-of select="../@id"/> - operation attribute for the engine entity of an sql_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_sqlobjversion">
                                                                        <sch:rule context="ind-def:sql_object/ind-def:version">
                                                                            <sch:assert test="not(@operation) or @operation='equals'"><sch:value-of select="../@id"/> - operation attribute for the version entity of an sql_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_sqlobjconnection_string">
                                                                        <sch:rule context="ind-def:sql_object/ind-def:connection_string">
                                                                            <sch:assert test="not(@operation) or @operation='equals'"><sch:value-of select="../@id"/> - operation attribute for the connection_string entity of an sql_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_sqlobjsql">
                                                                        <sch:rule context="ind-def:sql_object/ind-def:sql">
                                                                            <sch:assert test="not(@operation) or @operation='equals'"><sch:value-of select="../@id"/> - operation attribute for the sql entity of an sql_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_sql_state_dep">
                              <sch:rule context="ind-def:sql_state">
                                    <sch:report test="true()">DEPRECATED STATE: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/></sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_sql57_test">
                              <sch:rule context="ind-def:sql57_test/ind-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ind-def:sql57_object/@id"><sch:value-of select="../@id"/> - the object child element of a sql57_test must reference a sql57_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ind-def:sql57_test/ind-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ind-def:sql57_state/@id"><sch:value-of select="../@id"/> - the state child element of a sql57_test must reference a sql57_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_sql57_object_dengine">
                                                                        <sch:rule context="ind-def:sql57_object/ind-def:engine">
                                                                              <sch:assert test="not(@operation) or @operation='equals'"><sch:value-of select="../@id"/> - operation attribute for the engine entity of an sql57_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_sql57_object_version">
                                                                        <sch:rule context="ind-def:sql57_object/ind-def:version">
                                                                              <sch:assert test="not(@operation) or @operation='equals'"><sch:value-of select="../@id"/> - operation attribute for the version entity of an sql57_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_sql57_object_connection_string">
                                                                        <sch:rule context="ind-def:sql57_object/ind-def:connection_string">
                                                                              <sch:assert test="not(@operation) or @operation='equals'"><sch:value-of select="../@id"/> - operation attribute for the connection_string entity of an sql57_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_sql57_object_sql">
                                                                        <sch:rule context="ind-def:sql57_object/ind-def:sql">
                                                                              <sch:assert test="not(@operation) or @operation='equals'"><sch:value-of select="../@id"/> - operation attribute for the sql entity of an sql57_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_sql57steresult">
                                                            <sch:rule context="ind-def:sql57_state/ind-def:result">
                                                                  <sch:assert test="@datatype='record'"><sch:value-of select="../@id"/> - datatype attribute for the result entity of a sql57_state must be 'record'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_txt54tst">
                              <sch:rule context="ind-def:textfilecontent54_test/ind-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ind-def:textfilecontent54_object/@id"><sch:value-of select="../@id"/> - the object child element of a textfilecontent54_test must reference a textfilecontent54_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ind-def:textfilecontent54_test/ind-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ind-def:textfilecontent54_state/@id"><sch:value-of select="../@id"/> - the state child element of a textfilecontent54_test must reference a textfilecontent54_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_txt54objfilepath">
                                                                              <sch:rule context="ind-def:textfilecontent54_object/ind-def:filepath">
                                                                                    <sch:assert test="not(preceding-sibling::ind-def:behaviors[@max_depth or @recurse_direction])"><sch:value-of select="../@id"/> - the max_depth and recurse_direction behaviors are not allowed with a filepath entity</sch:assert>
                                                                              </sch:rule>
                                                                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_txt54objfilename">
                                                                                  <sch:rule context="ind-def:textfilecontent54_object/ind-def:filename">
                                                                                        <sch:assert test="(@var_ref and .='') or not(.='')"><sch:value-of select="../@id"/> - filename entity cannot be empty unless the xsi:nil attribute is set to true or a var_ref is used</sch:assert>
                                                                                  </sch:rule>
                                                                            </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_txt54objpattern">
                                                                        <sch:rule context="ind-def:textfilecontent54_object/ind-def:pattern">
                                                                              <sch:assert test="@operation='pattern match'"><sch:value-of select="../@id"/> - operation attribute for the pattern entity of a textfilecontent54_object should be 'pattern match'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_txttst_dep">
                              <sch:rule context="ind-def:textfilecontent_test">
                                    <sch:report test="true()">
                                          DEPRECATED TEST: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                    </sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_txttst">
                              <sch:rule context="ind-def:textfilecontent_test/ind-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ind-def:textfilecontent_object/@id"><sch:value-of select="../@id"/> - the object child element of a textfilecontent_test must reference a textfilecontent_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ind-def:textfilecontent_test/ind-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ind-def:textfilecontent_state/@id"><sch:value-of select="../@id"/> - the state child element of a textfilecontent_test must reference a textfilecontent_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_txtobj_dep">
                              <sch:rule context="ind-def:textfilecontent_object">
                                    <sch:report test="true()">
                                          DEPRECATED OBJECT: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                    </sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_txtobjfilename">
                                                                        <sch:rule context="ind-def:textfilecontent_object/ind-def:filename">
                                                                              <sch:assert test="(@var_ref and .='') or not(.='')"><sch:value-of select="../@id"/> - filename entity cannot be empty unless the xsi:nil attribute is set to true or a var_ref is used</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_txtobjline">
                                                                        <sch:rule context="ind-def:textfilecontent_object/ind-def:line">
                                                                              <sch:assert test="@operation='pattern match'"><sch:value-of select="../@id"/> - operation attribute for the line entity of a textfilecontent_object should be 'pattern match'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_txtste_dep">
                              <sch:rule context="ind-def:textfilecontent_state">
                                    <sch:report test="true()">
                                          DEPRECATED STATE: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                    </sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_vattst">
                              <sch:rule context="ind-def:variable_test/ind-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ind-def:variable_object/@id"><sch:value-of select="../@id"/> - the object child element of a variable_test must reference a variable_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ind-def:variable_test/ind-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ind-def:variable_state/@id"><sch:value-of select="../@id"/> - the state child element of a variable_test must reference a variable_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_varobjvar_ref">
                                                                        <sch:rule context="ind-def:variable_object/ind-def:var_ref">
                                                                              <sch:assert test="not(@var_ref)"><sch:value-of select="../@id"/> - var_ref attribute for the var_ref entity of a variable_object is prohibited.</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_varobjvar_ref_exists">
                                                                        <sch:rule context="ind-def:variable_object/ind-def:var_ref">
                                                                              <sch:let name="varId" value="."/>
                                                                              <sch:assert test="ancestor::oval-def:oval_definitions/oval-def:variables/*[@id = $varId]"><sch:value-of select="../@id"/> - referenced variable <sch:value-of select="."/> not found. The var_ref entity must hold a variable id that exists in the document.</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_varstevar_ref">
                                                            <sch:rule context="ind-def:variable_state/ind-def:var_ref">
                                                                  <sch:assert test="not(@var_ref)"><sch:value-of select="../@id"/> - var_ref attribute for the var_ref entity of a variable_state is prohibited.</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_varstevar_ref_exists">
                                                            <sch:rule context="ind-def:variable_state/ind-def:var_ref">
                                                                  <sch:let name="varId" value="."/>
                                                                  <sch:assert test="ancestor::oval-def:oval_definitions/oval-def:variables/*[@id =  $varId]"><sch:value-of select="../@id"/> - referenced variable <sch:value-of select="."/> not found. The var_ref entity must hold a variable id that exists in the document.</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_xmltst">
                              <sch:rule context="ind-def:xmlfilecontent_test/ind-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ind-def:xmlfilecontent_object/@id"><sch:value-of select="../@id"/> - the object child element of a xmlfilecontent_test must reference a xmlfilecontent_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ind-def:xmlfilecontent_test/ind-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ind-def:xmlfilecontent_state/@id"><sch:value-of select="../@id"/> - the state child element of a xmlfilecontent_test must reference a xmlfilecontent_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_xmlobjfilepath">
                                                                              <sch:rule context="ind-def:xmlfilecontent_object/ind-def:filepath">
                                                                                    <sch:assert test="not(preceding-sibling::ind-def:behaviors[@max_depth or @recurse_direction])"><sch:value-of select="../@id"/> - the max_depth and recurse_direction behaviors are not allowed with a filepath entity</sch:assert>
                                                                              </sch:rule>
                                                                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_xmlobjfilename">
                                                                                  <sch:rule context="ind-def:xmlfilecontent_object/ind-def:filename">
                                                                                        <sch:assert test="(@var_ref and .='') or not(.='')"><sch:value-of select="../@id"/> - filename entity cannot be empty unless the xsi:nil attribute is set to true or a var_ref is used</sch:assert>
                                                                                  </sch:rule>
                                                                            </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_xmlobjxpath">
                                                                        <sch:rule context="ind-def:xmlfilecontent_object/ind-def:xpath">
                                                                            <sch:assert test="not(@operation) or @operation='equals'"><sch:value-of select="../@id"/> - operation attribute for the xpath entity of a xmlfilecontent_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_ldaptype_timestamp_value_dep">
                                                <sch:rule context="oval-def:oval_definitions/oval-def:states/ind-def:ldap_state/ind-def:ldaptype|oval-def:oval_definitions/oval-def:states/ind-def:ldap57_state/ind-def:ldaptype">
                                                      <sch:report test=".='LDAPTYPE_TIMESTAMP'">
                                                            DEPRECATED ELEMENT VALUE IN: ldap_state ELEMENT VALUE: <sch:value-of select="."/> 
                                                      </sch:report>
                                                </sch:rule>
                                          </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="ind-def_ldaptype_email_value_dep">
                                                <sch:rule context="oval-def:oval_definitions/oval-def:states/ind-def:ldap_state/ind-def:ldaptype|oval-def:oval_definitions/oval-def:states/ind-def:ldap57_state/ind-def:ldaptype">
                                                      <sch:report test=".='LDAPTYPE_EMAIL'">
                                                            DEPRECATED ELEMENT VALUE IN: ldap_state ELEMENT VALUE: <sch:value-of select="."/> 
                                                      </sch:report>
                                                </sch:rule>
                                          </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ios-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios" id="ios-def_globaltst">
                              <sch:rule context="ios-def:global_test/ios-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ios-def:global_object/@id"><sch:value-of select="../@id"/> - the object child element of a global_test must reference a global_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ios-def:global_test/ios-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ios-def:global_state/@id"><sch:value-of select="../@id"/> - the state child element of a global_test must reference a global_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ios-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios" id="ios-def_interfacetst">
                              <sch:rule context="ios-def:interface_test/ios-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ios-def:interface_object/@id"><sch:value-of select="../@id"/> - the object child element of an interface_test must reference an interface_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ios-def:interface_test/ios-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ios-def:interface_state/@id"><sch:value-of select="../@id"/> - the state child element of an interface_test must reference an interface_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ios-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios" id="ios-def_linetst">
                              <sch:rule context="ios-def:line_test/ios-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ios-def:line_object/@id"><sch:value-of select="../@id"/> - the object child element of a line_test must reference a line_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ios-def:line_test/ios-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ios-def:line_state/@id"><sch:value-of select="../@id"/> - the state child element of a line_test must reference a line_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ios-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios" id="ios-def_snmptst">
                              <sch:rule context="ios-def:snmp_test/ios-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ios-def:snmp_object/@id"><sch:value-of select="../@id"/> - the object child element of a snmp_test must reference a snmp_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ios-def:snmp_test/ios-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ios-def:snmp_state/@id"><sch:value-of select="../@id"/> - the state child element of a snmp_test must reference a snmp_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ios-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios" id="ios-def_tclshtst">
                              <sch:rule context="ios-def:tclsh_test/ios-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ios-def:tclsh_object/@id"><sch:value-of select="../@id"/> - the object child element of a tclsh_test must reference a tclsh_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ios-def:tclsh_test/ios-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ios-def:tclsh_state/@id"><sch:value-of select="../@id"/> - the state child element of a tclsh_test must reference a tclsh_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ios-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios" id="ios-def_ver55tst">
                              <sch:rule context="ios-def:version55_test/ios-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ios-def:version55_object/@id"><sch:value-of select="../@id"/> - the object child element of a version55_test must reference a version_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ios-def:version55_test/ios-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ios-def:version55_state/@id"><sch:value-of select="../@id"/> - the state child element of a version55_test must reference a version_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ios-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios" id="ios-def_vertst_dep">
                          <sch:rule context="ios-def:version_test">
                                <sch:report test="true()">
                                      DEPRECATED TEST: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                </sch:report>
                          </sch:rule>
                    </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ios-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios" id="ios-def_vertst">
                    <sch:rule context="ios-def:version_test/ios-def:object">
                        <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/ios-def:version_object/@id"><sch:value-of select="../@id"/> - the object child element of a version_test must reference a version_object</sch:assert>
                    </sch:rule>
                    <sch:rule context="ios-def:version_test/ios-def:state">
                        <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/ios-def:version_state/@id"><sch:value-of select="../@id"/> - the state child element of a version_test must reference a version_state</sch:assert>
                    </sch:rule>
                </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ios-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios" id="ios-def_verobj_dep">
                        <sch:rule context="ios-def:version_object">
                              <sch:report test="true()">
                                    DEPRECATED OBJECT: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                              </sch:report>
                        </sch:rule>
                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ios-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios" id="ios-def_verste_dep">
                        <sch:rule context="ios-def:version_state">
                              <sch:report test="true()">
                                    DEPRECATED STATE: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                              </sch:report>
                        </sch:rule>
                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:linux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" id="linux-def_dpkginfo_test">
                         <sch:rule context="linux-def:dpkginfo_test/linux-def:object">
                              <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/linux-def:dpkginfo_object/@id"><sch:value-of select="../@id"/> - the object child element of an dpkginfo_test must reference an dpkginfo_object</sch:assert>
                         </sch:rule>
                         <sch:rule context="linux-def:dpkginfo_test/linux-def:state">
                              <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/linux-def:dpkginfo_state/@id"><sch:value-of select="../@id"/> - the state child element of an dpkginfo_test must reference an dpkginfo_state</sch:assert>
                         </sch:rule>
                    </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:linux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" id="linux-def_iflisteners_test">
                         <sch:rule context="linux-def:iflisteners_test/linux-def:object">
                              <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/linux-def:iflisteners_object/@id"><sch:value-of select="../@id"/> - the object child element of an iflisteners_test must reference an iflisteners_object</sch:assert>
                         </sch:rule>
                         <sch:rule context="linux-def:iflisteners_test/linux-def:state">
                              <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/linux-def:iflisteners_state/@id"><sch:value-of select="../@id"/> - the state child element of an iflisteners_test must reference an iflisteners_state</sch:assert>
                         </sch:rule>
                    </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:linux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" id="linux-def_inetlisteningservers_test">
                         <sch:rule context="linux-def:inetlisteningservers_test/linux-def:object">
                              <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/linux-def:inetlisteningservers_object/@id"><sch:value-of select="../@id"/> - the object child element of an inetlisteningservers_test must reference an inetlisteningservers_object</sch:assert>
                         </sch:rule>
                         <sch:rule context="linux-def:inetlisteningservers_test/linux-def:state">
                              <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/linux-def:inetlisteningservers_state/@id"><sch:value-of select="../@id"/> - the state child element of an inetlisteningservers_test must reference an inetlisteningservers_state</sch:assert>
                         </sch:rule>
                    </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:linux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" id="linux-def_partitiontst">
                         <sch:rule context="linux-def:partition_test/linux-def:object">
                              <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/linux-def:partition_object/@id"><sch:value-of select="../@id"/> - the object child element of a partition_test must reference a partition_object</sch:assert>
                         </sch:rule>
                         <sch:rule context="linux-def:partition_test/linux-def:state">
                              <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/linux-def:partition_state/@id"><sch:value-of select="../@id"/> - the state child element of a partition_test must reference a partition_state</sch:assert>
                         </sch:rule>
                    </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:linux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" id="linux-def_rpminfo_test">
                         <sch:rule context="linux-def:rpminfo_test/linux-def:object">
                              <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/linux-def:rpminfo_object/@id"><sch:value-of select="../@id"/> - the object child element of an rpminfo_test must reference an rpminfo_object</sch:assert>
                         </sch:rule>
                         <sch:rule context="linux-def:rpminfo_test/linux-def:state">
                              <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/linux-def:rpminfo_state/@id"><sch:value-of select="../@id"/> - the state child element of an rpminfo_test must reference an rpminfo_state</sch:assert>
                         </sch:rule>
                    </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:linux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" id="linux-def_rpmverify_test">
                         <sch:rule context="linux-def:rpmverify_test/linux-def:object">
                              <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/linux-def:rpmverify_object/@id"><sch:value-of select="../@id"/> - the object child element of an rpmverify_test must reference an rpmverify_object</sch:assert>
                         </sch:rule>
                         <sch:rule context="linux-def:rpmverify_test/linux-def:state">
                              <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/linux-def:rpmverify_state/@id"><sch:value-of select="../@id"/> - the state child element of an rpmverify_test must reference an rpmverify_state</sch:assert>
                         </sch:rule>
                    </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:linux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" id="linux-def_selinuxbooleantst">
                         <sch:rule context="linux-def:selinuxboolean_test/linux-def:object">
                              <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/linux-def:selinuxboolean_object/@id"><sch:value-of select="../@id"/> - the object child element of an selinuxboolean_test must reference an selinuxboolean_object</sch:assert>
                         </sch:rule>
                         <sch:rule context="linux-def:selinuxboolean_test/linux-def:state">
                              <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/linux-def:selinuxboolean_state/@id"><sch:value-of select="../@id"/> - the state child element of an selinuxboolean_test must reference an selinuxboolean_state</sch:assert>
                         </sch:rule>
                    </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:linux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" id="linux-def_selinuxsecuritycontexttst">
                         <sch:rule context="linux-def:selinuxsecuritycontext_test/linux-def:object">
                              <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/linux-def:selinuxsecuritycontext_object/@id"><sch:value-of select="../@id"/> - the object child element of an selinuxsecuritycontext_test must reference an selinuxsecuritycontext_object</sch:assert>
                         </sch:rule>
                         <sch:rule context="linux-def:selinuxsecuritycontext_test/linux-def:state">
                              <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/linux-def:selinuxsecuritycontext_state/@id"><sch:value-of select="../@id"/> - the state child element of an selinuxsecuritycontext_test must reference an selinuxsecuritycontext_state</sch:assert>
                         </sch:rule>
                    </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:linux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" id="linux-def_selinuxsecuritycontext_objectfilename">
                                                                      <sch:rule context="linux-def:selinuxsecuritycontext_object/linux-def:filename">
                                                                           <sch:assert test="(@var_ref and .='') or (@xsi:nil='true' and .='') or not(.='')"><sch:value-of select="../@id"/> - filename entity cannot be empty unless the xsi:nil attribute is set to true or a var_ref is used</sch:assert>
                                                                      </sch:rule>
                                                                 </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:linux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" id="linux-def_slackwarepkginfo_test">
                         <sch:rule context="linux-def:slackwarepkginfo_test/linux-def:object">
                              <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/linux-def:slackwarepkginfo_object/@id"><sch:value-of select="../@id"/> - the object child element of an slackwarepkginfo_test must reference an slackwarepkginfo_object</sch:assert>
                         </sch:rule>
                         <sch:rule context="linux-def:slackwarepkginfo_test/linux-def:state">
                              <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/linux-def:slackwarepkginfo_state/@id"><sch:value-of select="../@id"/> - the state child element of an slackwarepkginfo_test must reference an slackwarepkginfo_state</sch:assert>
                         </sch:rule>
                    </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" id="macos-def_accountinfo_test">
                              <sch:rule context="macos-def:accountinfo_test/macos-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/macos-def:accountinfo_object/@id"><sch:value-of select="../@id"/> - the object child element of an accountinfo_test must reference an accountinfo_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="macos-def:accountinfo_test/macos-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/macos-def:accountinfo_state/@id"><sch:value-of select="../@id"/> - the state child element of an accountinfo_test must reference an accountinfo_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" id="macos-def_diskutiltst">
                              <sch:rule context="macos-def:diskutil_test/macos-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/macos-def:diskutil_object/@id">
                                          <sch:value-of select="../@id"/> - the object child element of a diskutil_test must reference a diskutil_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="macos-def:diskutil_test/macos-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/macos-def:diskutil_state/@id">
                                          <sch:value-of select="../@id"/> - the state child element of a diskutil_test must reference a diskutil_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" id="macos-def_inetlisteningservers_test">
                              <sch:rule context="macos-def:inetlisteningservers_test/macos-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/macos-def:inetlisteningservers_object/@id"><sch:value-of select="../@id"/> - the object child element of an inetlisteningservers_test must reference an inetlisteningservers_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="macos-def:inetlisteningservers_test/macos-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/macos-def:inetlisteningservers_state/@id"><sch:value-of select="../@id"/> - the state child element of an inetlisteningservers_test must reference an inetlisteningservers_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" id="macos-def_nvram_test">
                              <sch:rule context="macos-def:nvram_test/macos-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/macos-def:nvram_object/@id"><sch:value-of select="../@id"/> - the object child element of an nvram_test must reference an nvram_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="macos-def:nvram_test/macos-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/macos-def:nvram_state/@id"><sch:value-of select="../@id"/> - the state child element of an nvram_test must reference an nvram_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" id="macos-def_plist_test">
                              <sch:rule context="macos-def:plist_test/macos-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/macos-def:plist_object/@id"><sch:value-of select="../@id"/> - the object child element of a plist_test must reference a plist_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="macos-def:plist_test/macos-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/macos-def:plist_state/@id"><sch:value-of select="../@id"/> - the state child element of a plist_test must reference a plist_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" id="macos-def_plistobjfilepath">
                                                                              <sch:rule context="macos-def:plist_object/macos-def:filepath">
                                                                                    <sch:assert test="not(@operation) or @operation='equals'">
                                                                                          <sch:value-of select="../@id"/> - operation attribute for the filepath entity of a plist_object should be 'equals'
                                                                                    </sch:assert>
                                                                              </sch:rule>
                                                                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" id="macos-def_pwpolicy_test_dep">
                              <sch:rule context="macos-def:pwpolicy_test">
                                    <sch:report test="true()">DEPRECATED TEST: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/></sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" id="macos-def_pwpolicy_test">
                              <sch:rule context="macos-def:pwpolicy_test/macos-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/macos-def:pwpolicy_object/@id"><sch:value-of select="../@id"/> - the object child element of an pwpolicy_test must reference an pwpolicy_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="macos-def:pwpolicy_test/macos-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/macos-def:pwpolicy_state/@id"><sch:value-of select="../@id"/> - the state child element of an pwpolicy_test must reference an pwpolicy_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" id="macos-def_pwpolicy_object_dep">
                              <sch:rule context="macos-def:pwpolicy_object">
                                    <sch:report test="true()">
                                          DEPRECATED OBJECT: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                    </sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" id="macos-def_pwpobjuserpass">
                                                                        <sch:rule context="macos-def:pwpolicy_object/macos-def:userpass">
                                                                              <sch:assert test="not(@operation) or @operation='equals'"><sch:value-of select="../@id"/> - operation attribute for the userpass entity of a pwpolicy_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" id="macos-def_pwpolicy_state_dep">
                              <sch:rule context="macos-def:pwpolicy_state">
                                    <sch:report test="true()">
                                          DEPRECATED STATE: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                    </sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" id="macos-def_pwpolicy59_test">
                              <sch:rule context="macos-def:pwpolicy59_test/macos-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/macos-def:pwpolicy59_object/@id"><sch:value-of select="../@id"/> - the object child element of an pwpolicy59_test must reference an pwpolicy59_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="macos-def:pwpolicy59_test/macos-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/macos-def:pwpolicy59_state/@id"><sch:value-of select="../@id"/> - the state child element of an pwpolicy59_test must reference an pwpolicy59_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" id="macos-def_pwp59objusername">
                                                                        <sch:rule context="macos-def:pwpolicy59_object/macos-def:username">
                                                                              <sch:assert test="not(@xsi:nil=true()) or ../macos-def:userpass/@xsi:nil=true()"><sch:value-of select="../@id"/> - userpass entity must be nil when username entity is nil</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" id="macos-def_pwp59objuserpass">
                                                                        <sch:rule context="macos-def:pwpolicy59_object/macos-def:userpass">
                                                                              <sch:assert test="not(@operation) or @operation='equals'"><sch:value-of select="../@id"/> - operation attribute for the userpass entity of a pwpolicy59_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)</sch:assert>
                                                                              <sch:assert test="not(@xsi:nil=true()) or ../macos-def:username/@xsi:nil=true()"><sch:value-of select="../@id"/> - username entity must be nil when userpass entity is nil</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:pixos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#pixos" id="pixos-def_linetst">
                              <sch:rule context="pixos-def:line_test/pixos-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/pixos-def:line_object/@id"><sch:value-of select="../@id"/> - the object child element of a line_test must reference a line_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="pixos-def:line_test/pixos-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/pixos-def:line_state/@id"><sch:value-of select="../@id"/> - the state child element of a line_test must reference a line_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:pixos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#pixos" id="pixos-def_vertst">
                              <sch:rule context="pixos-def:version_test/pixos-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/pixos-def:version_object/@id"><sch:value-of select="../@id"/> - the object child element of a version_test must reference a version_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="pixos-def:version_test/pixos-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/pixos-def:version_state/@id"><sch:value-of select="../@id"/> - the state child element of a version_test must reference a version_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:sp-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint" id="sp-def_webapptst">
                              <sch:rule context="sp-def:spwebapplication_test/sp-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sp-def:spwebapplication_object/@id"><sch:value-of select="../@id"/> - the object child element of a spwebapplication_test must reference an spwebapplication_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="sp-def:spwebapplication_test/sp-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sp-def:spwebapplication_state/@id"><sch:value-of select="../@id"/> - the state child element of a spwebapplication_test must reference an spwebapplication_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:sp-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint" id="sp-def_grptst">
                              <sch:rule context="sp-def:spgroup_test/sp-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sp-def:spgroup_object/@id"><sch:value-of select="../@id"/> - the object child element of a spgroup_test must reference a spgroup_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="sp-def:spgroup_test/sp-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sp-def:spgroup_state/@id"><sch:value-of select="../@id"/> - the state child element of a spgroup_test must reference a spgroup_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:sp-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint" id="sp-def_webtst">
                              <sch:rule context="sp-def:spweb_test/sp-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sp-def:spweb_object/@id"><sch:value-of select="../@id"/> - the object child element of a spweb_test must reference an spweb_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="sp-def:spweb_test/sp-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sp-def:spweb_state/@id"><sch:value-of select="../@id"/> - the state child element of a spweb_test must reference an spweb_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:sp-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint" id="sp-def_listtst">
                              <sch:rule context="sp-def:splist_test/sp-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sp-def:splist_object/@id"><sch:value-of select="../@id"/> - the object child element of a splist_test must reference an splist_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="sp-def:splist_test/sp-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sp-def:splist_state/@id"><sch:value-of select="../@id"/> - the state child element of a splist_test must reference an splist_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:sp-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint" id="sp-def_avstst">
                              <sch:rule context="sp-def:spantivirussettings_test/sp-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sp-def:spantivirussettings_object/@id"><sch:value-of select="../@id"/> - the object child element of a spantivirussettings_test must reference an spantivirussettings_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="sp-def:spantivirussettings_test/sp-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sp-def:spantivirussettings_state/@id"><sch:value-of select="../@id"/> - the state child element of a spantivirussettings_test must reference an spantivirussettings_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:sp-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint" id="sp-def_siteadmintst">
                              <sch:rule context="sp-def:spsiteadministration_test/sp-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sp-def:spsiteadministration_object/@id"><sch:value-of select="../@id"/> - the object child element of a spsiteadministration_test must reference an spsiteadministration_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="sp-def:spsiteadministration_test/sp-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sp-def:spsiteadministration_state/@id"><sch:value-of select="../@id"/> - the state child element of a spsiteadministration_test must reference an spsiteadministration_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:sp-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint" id="sp-def_sitetst">
                              <sch:rule context="sp-def:spsite_test/sp-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sp-def:spsite_object/@id"><sch:value-of select="../@id"/> - the object child element of a spsite_test must reference an spsite_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="sp-def:spsite_test/sp-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sp-def:spsite_state/@id"><sch:value-of select="../@id"/> - the state child element of a spsite_test must reference an spsite_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:sp-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint" id="sp-def_crtst">
                              <sch:rule context="sp-def:spcrawlrule_test/sp-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sp-def:spcrawlrule_object/@id"><sch:value-of select="../@id"/> - the object child element of a spcrawlrule_test must reference an spcrawlrule_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="sp-def:spcrawlrule_test/sp-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sp-def:spcrawlrule_state/@id"><sch:value-of select="../@id"/> - the state child element of a spcrawlrule_test must reference an spcrawlrule_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:sp-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint" id="sp-def_jobdeftst">
                              <sch:rule context="sp-def:spjobdefinition_test/sp-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sp-def:spjobdefinition_object/@id"><sch:value-of select="../@id"/> - the object child element of a spjobdefinition_test must reference an spjobdefinition_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="sp-def:spjobdefinition_test/sp-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sp-def:spjobdefinition_state/@id"><sch:value-of select="../@id"/> - the state child element of a spjobdefinition_test must reference an spjobdefinition_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:sp-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint" id="sp-def_bbtst">
                              <sch:rule context="sp-def:bestbet_test/sp-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sp-def:bestbet_object/@id"><sch:value-of select="../@id"/> - the object child element of a bestbet_test must reference an bestbet_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="sp-def:bestbet_test/sp-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sp-def:bestbet_state/@id"><sch:value-of select="../@id"/> - the state child element of a bestbet_test must reference an bestbet_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:sp-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint" id="sp-def_infopolicycolltst">
                              <sch:rule context="sp-def:policycoll_test/sp-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sp-def:policycoll_object/@id"><sch:value-of select="../@id"/> - the object child element of a policycoll_test must reference an policycoll_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="sp-def:policycoll_test/sp-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sp-def:policycoll_state/@id"><sch:value-of select="../@id"/> - the state child element of a policycoll_test must reference an policycoll_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:sp-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint" id="sp-def_diagnosticsservicetest">
                              <sch:rule context="sp-def:spdiagnosticsservice_test/sp-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sp-def:spdiagnosticsservice_object/@id"><sch:value-of select="../@id"/> - the object child element of an spdiagnosticsservice_test must reference an spdiagnosticsservice_object</sch:assert> 
                              </sch:rule>
                              <sch:rule context="sp-def:spdiagnosticsservice_test/sp-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sp-def:spdiagnosticsservice_state/@id"><sch:value-of select="../@id"/> - the state child element of an spdiagnosticsservice_test must reference an spdiagnosticsservice_state</sch:assert> 
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:sp-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint" id="sp-def_diagnostics_level_test">
                              <sch:rule context="sp-def:spdiagnosticslevel_test/sp-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sp-def:spdiagnosticslevel_object/@id"><sch:value-of select="../@id"/> - the object child element of an spdiagnosticslevel_test must reference an spdiagnosticslevel_object</sch:assert>  
                              </sch:rule>
                              <sch:rule context="sp-def:spdiagnosticslevel_test/sp-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sp-def:spdiagnosticslevel_state/@id"><sch:value-of select="../@id"/> - the state child element of an spdiagnosticslevel_test must reference an spdiagnosticslevel_state</sch:assert> 
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:sp-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint" id="sp-def_policyfeature_test">
                              <sch:rule context="sp-def:sppolicyfeature_test/sp-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sp-def:sppolicyfeature_object/@id"><sch:value-of select="../@id"/> - the object child element of an sppolicyfeature_test must reference an sppolicyfeature_object</sch:assert> 
                              </sch:rule>
                              <sch:rule context="sp-def:sppolicyfeature_test/sp-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sp-def:sppolicyfeature_state/@id"><sch:value-of select="../@id"/> - the state child element of an sppolicyfeature_test must reference an sppolicyfeature_state</sch:assert> 
                              </sch:rule> 
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:sp-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#sharepoint" id="sp-def_policy_test">
                              <sch:rule context="sp-def:sppolicy_test/sp-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sp-def:sppolicy_object/@id"><sch:value-of select="../@id"/> - the object child element of an sppolicy_test must reference an sppolicy_object</sch:assert> 
                              </sch:rule>
                              <sch:rule context="sp-def:sppolicy_test/sp-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sp-def:sppolicy_state/@id"><sch:value-of select="../@id"/> - the state child element of an sppolicy_test must reference an sppolicy_state</sch:assert> 
                              </sch:rule>  
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:sol-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris" id="sol-def_isainfotst">
                              <sch:rule context="sol-def:isainfo_test/sol-def:object">
                                  <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sol-def:isainfo_object/@id">
                                          <sch:value-of select="../@id"/> - the object child element of an isainfo_test must reference an isainfo_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="sol-def:isainfo_test/sol-def:state">
                                  <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sol-def:isainfo_state/@id">
                                          <sch:value-of select="../@id"/> - the state child element of an isainfo_test must reference an isainfo_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:sol-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris" id="sol-def_ndd_test">
                              <sch:rule context="sol-def:ndd_test/sol-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sol-def:ndd_object/@id"><sch:value-of select="../@id"/> - the object child element of an ndd_test must reference an ndd_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="sol-def:ndd_test/sol-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sol-def:ndd_state/@id"><sch:value-of select="../@id"/> - the state child element of an ndd_test must reference an ndd_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:sol-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris" id="sol-def_packagetst">
                              <sch:rule context="sol-def:package_test/sol-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sol-def:package_object/@id">
                                          <sch:value-of select="../@id"/> - the object child element of a package_test must reference a package_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="sol-def:package_test/sol-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sol-def:package_state/@id">
                                          <sch:value-of select="../@id"/> - the state child element of a package_test must reference a package_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:sol-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris" id="sol-def_packagechecktst">
                              <sch:rule context="sol-def:packagecheck_test/sol-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sol-def:packagecheck_object/@id">
                                          <sch:value-of select="../@id"/> - the object child element of a packagecheck_test must reference a packagecheck_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="sol-def:packagecheck_test/sol-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sol-def:packagecheck_state/@id">
                                          <sch:value-of select="../@id"/> - the state child element of a packagecheck_test must reference a packagecheck_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:sol-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris" id="sol-def_patch54tst">
                              <sch:rule context="sol-def:patch54_test/sol-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sol-def:patch54_object/@id">
                                          <sch:value-of select="../@id"/> - the object child element of a patch54_test must reference a patch54_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="sol-def:patch54_test/sol-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sol-def:patch_state/@id">
                                          <sch:value-of select="../@id"/> - the state child element of a patch54_test must reference a patch_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:sol-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris" id="sol-def_patchtst_dep">
                              <sch:rule context="sol-def:patch_test">
                                    <sch:report test="true()">
                                          DEPRECATED TEST: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                    </sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:sol-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris" id="sol-def_patchtst">
                              <sch:rule context="sol-def:patch_test/sol-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sol-def:patch_object/@id">
                                          <sch:value-of select="../@id"/> - the object child element of a patch_test must reference a patch_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="sol-def:patch_test/sol-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sol-def:patch_state/@id">
                                          <sch:value-of select="../@id"/> - the state child element of a patch_test must reference a patch_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:sol-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris" id="sol-def_patchobj_dep">
                              <sch:rule context="sol-def:patch_object">
                                    <sch:report test="true()">
                                          DEPRECATED OBJECT: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                    </sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:sol-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris" id="sol-def_smftst">
                              <sch:rule context="sol-def:smf_test/sol-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/sol-def:smf_object/@id">
                                          <sch:value-of select="../@id"/> - the object child element of a smf_test must reference a smf_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="sol-def:smf_test/sol-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/sol-def:smf_state/@id">
                                          <sch:value-of select="../@id"/> - the state child element of a smf_test must reference a smf_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unix-def_dnscachetst">
                              <sch:rule context="unix-def:dnscache_test/unix-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/unix-def:dnscache_object/@id"><sch:value-of select="../@id"/> - the object child element of a dnscache_test must reference a dnscache_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="unix-def:dnscache_test/unix-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/unix-def:dnscache_state/@id"><sch:value-of select="../@id"/> - the state child element of a dnscache_test must reference a dnscache_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unix-def_filetst">
                              <sch:rule context="unix-def:file_test/unix-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/unix-def:file_object/@id"><sch:value-of select="../@id"/> - the object child element of a file_test must reference a file_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="unix-def:file_test/unix-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/unix-def:file_state/@id"><sch:value-of select="../@id"/> - the state child element of a file_test must reference a file_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unix-def_fileobjfilepath">
                                                                              <sch:rule context="unix-def:file_object/unix-def:filepath">
                                                                                    <sch:assert test="not(preceding-sibling::unix-def:behaviors[@max_depth or @recurse or @recurse_direction or @recurse_file_system])"><sch:value-of select="../@id"/> - the max_depth, recurse, recurse_direction and recurse_file_system behaviors are not allowed with a filepath entity</sch:assert>
                                                                              </sch:rule>
                                                                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unix-def_file_objectfilename">
                                                                                  <sch:rule context="unix-def:file_object/unix-def:filename">
                                                                                        <sch:assert test="(@var_ref and .='') or (@xsi:nil='true' and .='') or not(.='')"><sch:value-of select="../@id"/> - filename entity cannot be empty unless the xsi:nil attribute is set to true or a var_ref is used</sch:assert>
                                                                                  </sch:rule>
                                                                            </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unix-def_recurse_value_file_dep">
                                    <sch:rule context="oval-def:oval_definitions/oval-def:objects/unix-def:file_object/unix-def:behaviors">
                                          <sch:report test="@recurse='files'">DEPRECATED ATTRIBUTE VALUE IN: <sch:value-of select="name()"/> ATTRIBUTE VALUE: <sch:value-of select="@recurse"/></sch:report>
                                          <sch:report test="@recurse='files and directories'">DEPRECATED ATTRIBUTE VALUE IN: <sch:value-of select="name()"/> ATTRIBUTE VALUE: <sch:value-of select="@recurse"/></sch:report>
                                          <sch:report test="@recurse='none'"> DEPRECATED ATTRIBUTE VALUE IN: <sch:value-of select="name()"/> ATTRIBUTE VALUE: <sch:value-of select="@recurse"/></sch:report>
                                    </sch:rule>
                              </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unix-def_file_ea_tst">
                              <sch:rule context="unix-def:filextendedattribute_test/unix-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/unix-def:fileextendedattribute_object/@id"><sch:value-of select="../@id"/> - the object child element of a fileextendedattribute_test must reference a fileextendedattribute_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="unix-def:fileextendedattribute_test/unix-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/unix-def:fileextendedattribute_state/@id"><sch:value-of select="../@id"/> - the state child element of a fileextendedattribute_test must reference a fileextendedattribute_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unix-def_file_ea_objfilepath">
                                                                              <sch:rule context="unix-def:fileextendedattribute_object/unix-def:filepath">
                                                                                    <sch:assert test="not(preceding-sibling::unix-def:behaviors[@max_depth or @recurse or @recurse_direction or @recurse_file_system])"><sch:value-of select="../@id"/> - the max_depth, recurse, recurse_direction and recurse_file_system behaviors are not allowed with a filepath entity</sch:assert>
                                                                              </sch:rule>
                                                                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unix-def_fileextendedattribute_objectfilename">
                                                                                  <sch:rule context="unix-def:fileextendedattribute_object/unix-def:filename">
                                                                                        <sch:assert test="(@var_ref and .='') or (@xsi:nil='true' and .='') or not(.='')"><sch:value-of select="../@id"/> - filename entity cannot be empty unless the xsi:nil attribute is set to true or a var_ref is used</sch:assert>
                                                                                  </sch:rule>
                                                                            </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unix-def_gconf_test">
                              <sch:rule context="unix-def:gconf_test/unix-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/unix-def:gconf_object/@id"><sch:value-of select="../@id"/> - the object child element of a gconf_test must reference an gconf_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="unix-def:gconf_test/unix-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/unix-def:gconf_state/@id"><sch:value-of select="../@id"/> - the state child element of a gconf_test must reference an gconf_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unix-def_gconfobjsource">
                                                                        <sch:rule context="unix-def:gconf_object/unix-def:source">
                                                                              <sch:assert test="not(@operation) or @operation='equals'">
                                                                                    <sch:value-of select="../@id"/> - operation attribute for the source entity of a gconf_object should be 'equals'
                                                                              </sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unix-def_inetdtst">
                              <sch:rule context="unix-def:inetd_test/unix-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/unix-def:inetd_object/@id"><sch:value-of select="../@id"/> - the object child element of an inetd_test must reference an inetd_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="unix-def:inetd_test/unix-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/unix-def:inetd_state/@id"><sch:value-of select="../@id"/> - the state child element of an inetd_test must reference an inetd_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unix-def_interfacetst">
                              <sch:rule context="unix-def:interface_test/unix-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/unix-def:interface_object/@id"><sch:value-of select="../@id"/> - the object child element of an interface_test must reference an interface_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="unix-def:interface_test/unix-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/unix-def:interface_state/@id"><sch:value-of select="../@id"/> - the state child element of an interface_test must reference an interface_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unix-def_passwordtst">
                              <sch:rule context="unix-def:password_test/unix-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/unix-def:password_object/@id"><sch:value-of select="../@id"/> - the object child element of a password_test must reference a password_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="unix-def:password_test/unix-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/unix-def:password_state/@id"><sch:value-of select="../@id"/> - the state child element of a password_test must reference a password_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unix-def_processtst_dep">
                              <sch:rule context="unix-def:process_test">
                                    <sch:report test="true()">DEPRECATED TEST: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/></sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unix-def_processtst">
                              <sch:rule context="unix-def:process_test/unix-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/unix-def:process_object/@id"><sch:value-of select="../@id"/> - the object child element of a process_test must reference a process_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="unix-def:process_test/unix-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/unix-def:process_state/@id"><sch:value-of select="../@id"/> - the state child element of a process_test must reference a process_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unix-def_processobj_dep">
                              <sch:rule context="unix-def:process_object">
                                    <sch:report test="true()">DEPRECATED OBJECT: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/></sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unix-def_processste_dep">
                              <sch:rule context="unix-def:process_state">
                                    <sch:report test="true()">DEPRECATED STATE: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/></sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unix-def_process58tst">
                              <sch:rule context="unix-def:process58_test/unix-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/unix-def:process58_object/@id"><sch:value-of select="../@id"/> - the object child element of a process58_test must reference a process58_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="unix-def:process58_test/unix-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/unix-def:process58_state/@id"><sch:value-of select="../@id"/> - the state child element of a process58_test must reference a process58_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unix-def_routingtable_test">
                              <sch:rule context="unix-def:routingtable_test/unix-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/unix-def:routingtable_object/@id"><sch:value-of select="../@id"/> - the object child element of a routingtable_test must reference an routingtable_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="unix-def:routingtable_test/unix-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/unix-def:routingtable_state/@id"><sch:value-of select="../@id"/> - the state child element of a routingtable_test must reference an routingtable_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unix-def_runleveltst">
                              <sch:rule context="unix-def:runlevel_test/unix-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/unix-def:runlevel_object/@id"><sch:value-of select="../@id"/> - the object child element of a runlevel_test must reference a runlevel_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="unix-def:runlevel_test/unix-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/unix-def:runlevel_state/@id"><sch:value-of select="../@id"/> - the state child element of a runlevel_test must reference a runlevel_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unix-def_sccstst">
                              <sch:rule context="unix-def:sccs_test/unix-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/unix-def:sccs_object/@id"><sch:value-of select="../@id"/> - the object child element of a sccs_test must reference a sccs_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="unix-def:sccs_test/unix-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/unix-def:sccs_state/@id"><sch:value-of select="../@id"/> - the state child element of a sccs_test must reference a sccs_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unix-def_sccsobjfilepath">
                                                                              <sch:rule context="unix-def:sccs_object/unix-def:filepath">
                                                                                    <sch:assert test="not(preceding-sibling::unix-def:behaviors[@max_depth or @recurse or @recurse_direction or @recurse_file_system])"><sch:value-of select="../@id"/> - the max_depth, recurse, recurse_direction and recurse_file_system behaviors are not allowed with a filepath entity</sch:assert>
                                                                              </sch:rule>
                                                                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unix-def_sccs_objectfilename">
                                                                                  <sch:rule context="unix-def:sccs_object/unix-def:filename">
                                                                                        <sch:assert test="(@var_ref and .='') or not(.='')"><sch:value-of select="../@id"/> - filename entity cannot be empty unless the xsi:nil attribute is set to true or a var_ref is used</sch:assert>
                                                                                  </sch:rule>
                                                                            </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unix-def_shadowtst">
                              <sch:rule context="unix-def:shadow_test/unix-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/unix-def:shadow_object/@id"><sch:value-of select="../@id"/> - the object child element of a shadow_test must reference a shadow_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="unix-def:shadow_test/unix-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/unix-def:shadow_state/@id"><sch:value-of select="../@id"/> - the state child element of a shadow_test must reference a shadow_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unix-def_sysctltst">
                              <sch:rule context="unix-def:sysctl_test/unix-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/unix-def:sysctl_object/@id"><sch:value-of select="../@id"/> - the object child element of a sysctl_test must reference a sysctl_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="unix-def:sysctl_test/unix-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/unix-def:sysctl_state/@id"><sch:value-of select="../@id"/> - the state child element of a sysctl_test must reference a sysctl_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unix-def_unametst">
                              <sch:rule context="unix-def:uname_test/unix-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/unix-def:uname_object/@id"><sch:value-of select="../@id"/> - the object child element of a uname_test must reference a uname_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="unix-def:uname_test/unix-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/unix-def:uname_state/@id"><sch:value-of select="../@id"/> - the state child element of a uname_test must reference a uname_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unix-def_xinetdtst">
                              <sch:rule context="unix-def:xinetd_test/unix-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/unix-def:xinetd_object/@id"><sch:value-of select="../@id"/> - the object child element of a xinetd_test must reference a xinetd_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="unix-def:xinetd_test/unix-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/unix-def:xinetd_state/@id"><sch:value-of select="../@id"/> - the state child element of a xinetd_test must reference a xinetd_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_affected_platform">
                        <sch:rule context="oval-def:affected[@family='windows']">
                              <sch:assert test="not(oval-def:platform) or oval-def:platform='Microsoft Windows 95' or oval-def:platform='Microsoft Windows 98' or oval-def:platform='Microsoft Windows ME' or oval-def:platform='Microsoft Windows NT' or oval-def:platform='Microsoft Windows 2000' or oval-def:platform='Microsoft Windows XP' or oval-def:platform='Microsoft Windows Server 2003' or oval-def:platform='Microsoft Windows Vista' or oval-def:platform='Microsoft Windows Server 2008' or oval-def:platform='Microsoft Windows 7'">
                                    <sch:value-of select="../../@id"/> - the value "<sch:value-of select="oval-def:platform"/>" found in platform element as part of the affected element is not a valid windows platform.</sch:assert>
                        </sch:rule>
                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_attst">
                              <sch:rule context="win-def:accesstoken_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:accesstoken_object/@id"><sch:value-of select="../@id"/> - the object child element of an accesstoken_test must reference an accesstoken_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:accesstoken_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:accesstoken_state/@id"><sch:value-of select="../@id"/> - the state child element of an accesstoken_test must reference an accesstoken_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_at_resolve_group_value_dep">
                                    <sch:rule context="oval-def:oval_definitions/oval-def:objects/win-def:accesstoken_object/win-def:behaviors">
                                          <sch:report test="@resolve_group">DEPRECATED BEHAVIOR IN: win-def:accesstoken_object </sch:report>
                                    </sch:rule>
                              </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_activedirectory_test_dep">
                              <sch:rule context="win-def:activedirectory_test">
                                    <sch:report test="true()">DEPRECATED TEST: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/></sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_adtst">
                              <sch:rule context="win-def:activedirectory_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:activedirectory_object/@id"><sch:value-of select="../@id"/> - the object child element of an activedirectory_test must reference an activedirectory_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:activedirectory_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:activedirectory_state/@id"><sch:value-of select="../@id"/> - the state child element of an activedirectory_test must reference an activedirectory_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_activedirectory_object_dep">
                              <sch:rule context="win-def:activedirectory_object">
                                    <sch:report test="true()">DEPRECATED OBJECT: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/></sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_activedirectory_state_dep">
                              <sch:rule context="win-def:activedirectory_state">
                                    <sch:report test="true()">DEPRECATED STATE: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/></sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_activedirectory57_test">
                              <sch:rule context="win-def:activedirectory57_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:activedirectory57_object/@id"><sch:value-of select="../@id"/> - the object child element of an activedirectory57_test must reference an activedirectory57_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:activedirectory57_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:activedirectory57_state/@id"><sch:value-of select="../@id"/> - the state child element of an activedirectory57_test must reference an activedirectory57_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_ad57stevalue">
                                                            <sch:rule context="win-def:activedirectory57_state/win-def:value">
                                                                  <sch:assert test="@datatype='record'"><sch:value-of select="../@id"/> - datatype attribute for the value entity of a activedirectory57_state must be 'record'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_aeptst">
                              <sch:rule context="win-def:auditeventpolicy_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:auditeventpolicy_object/@id"><sch:value-of select="../@id"/> - the object child element of an auditeventpolicy_test must reference an auditeventpolicy_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:auditeventpolicy_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:auditeventpolicy_state/@id"><sch:value-of select="../@id"/> - the state child element of an auditeventpolicy_test must reference an auditeventpolicy_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_aepstst">
                              <sch:rule context="win-def:auditeventpolicysubcategories_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:auditeventpolicysubcategories_object/@id"><sch:value-of select="../@id"/> - the object child element of an auditeventpolicysubcategories_test must reference an auditeventpolicysubcategories_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:auditeventpolicysubcategories_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:auditeventpolicysubcategories_state/@id"><sch:value-of select="../@id"/> - the state child element of an auditeventpolicysubcategories_test must reference an auditeventpolicysubcategories_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_dnscachetst">
                              <sch:rule context="win-def:dnscache_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:dnscache_object/@id"><sch:value-of select="../@id"/> - the object child element of a dnscache_test must reference a dnscache_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:dnscache_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:dnscache_state/@id"><sch:value-of select="../@id"/> - the state child element of a dnscache_test must reference a dnscache_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_filetst">
                              <sch:rule context="win-def:file_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:file_object/@id"><sch:value-of select="../@id"/> - the object child element of a file_test must reference a file_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:file_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:file_state/@id"><sch:value-of select="../@id"/> - the state child element of a file_test must reference a file_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_fileobjfilepath">
                                                                            <sch:rule context="win-def:file_object/win-def:filepath">
                                                                                  <sch:assert test="not(preceding-sibling::win-def:behaviors[@max_depth or @recurse_direction])"><sch:value-of select="../@id"/> - the max_depth and recurse_direction behaviors are not allowed with a filepath entity</sch:assert>
                                                                            </sch:rule>
                                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_fileobjfilename">
                                                                                    <sch:rule context="win-def:file_object/win-def:filename">
                                                                                          <sch:assert test="(not(contains(.,'\') or contains(.,'/') or contains(.,':') or contains(.,'*') or contains(.,'?') or contains(.,'&gt;') or contains(.,'|'))) or (@operation='pattern match')"><sch:value-of select="../@id"/> - filename entity cannot contain the characters / \ : * ? &gt; | </sch:assert>
                                                                                          <sch:assert test="(@var_ref and .='') or (@xsi:nil='true' and .='') or not(.='')"><sch:value-of select="../@id"/> - filename entity cannot be empty unless the xsi:nil attribute is set to true or a var_ref is used</sch:assert>
                                                                                    </sch:rule>
                                                                              </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_filestefilename">
                                                            <sch:rule context="win-def:file_state/win-def:filename">
                                                                <sch:assert test="(not(contains(.,'\') or contains(.,'/') or contains(.,':') or contains(.,'*') or contains(.,'?') or contains(.,'&gt;') or contains(.,'|'))) or (@operation='pattern match')"><sch:value-of select="../@id"/> - filename entity cannot contain the characters / \ : * ? &gt; | </sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_fap53tst">
                              <sch:rule context="win-def:fileauditedpermissions53_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:fileauditedpermissions53_object/@id"><sch:value-of select="../@id"/> - the object child element of a fileauditedpermissions53_test must reference a fileauditedpermissions53_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:fileauditedpermissions53_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:fileauditedpermissions53_state/@id"><sch:value-of select="../@id"/> - the state child element of a fileauditedpermissions53_test must reference a fileauditedpermissions53_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_fap53objfilepath">
                                                                              <sch:rule context="win-def:fileauditedpermissions53_object/win-def:filepath">
                                                                                    <sch:assert test="not(preceding-sibling::win-def:behaviors[@max_depth or @recurse_direction])"><sch:value-of select="../@id"/> - the max_depth and recurse_direction behaviors are not allowed with a filepath entity</sch:assert>
                                                                              </sch:rule>
                                                                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_fap53objfilename">
                                                                                    <sch:rule context="win-def:fileauditedpermissions53_object/win-def:filename">
                                                                                          <sch:assert test="(not(contains(.,'\') or contains(.,'/') or contains(.,':') or contains(.,'*') or contains(.,'?') or contains(.,'&gt;') or contains(.,'|'))) or (@operation='pattern match')"><sch:value-of select="../@id"/> - filename entity cannot contain the characters / \ : * ? &gt; | </sch:assert>
                                                                                          <sch:assert test="(@var_ref and .='') or (@xsi:nil='true' and .='') or not(.='')"><sch:value-of select="../@id"/> - filename entity cannot be empty unless the xsi:nil attribute is set to true or a var_ref is used</sch:assert>
                                                                                    </sch:rule>
                                                                              </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_fap53stefilename">
                                                            <sch:rule context="win-def:fileauditedpermissions53_state/win-def:filename">
                                                                <sch:assert test="(not(contains(.,'\') or contains(.,'/') or contains(.,':') or contains(.,'*') or contains(.,'?') or contains(.,'&gt;') or contains(.,'|'))) or (@operation='pattern match')"><sch:value-of select="../@id"/> - filename entity cannot contain the characters / \ : * ? &gt; | </sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_fap53_resolve_group_value_dep">
                                                <sch:rule context="oval-def:oval_definitions/oval-def:objects/win-def:fileauditedpermissions53_object/win-def:behaviors">
                                                      <sch:report test="@resolve_group">DEPRECATED BEHAVIOR IN: fileauditedpermissions53_object </sch:report>
                                                </sch:rule>
                                          </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_faptst_dep">
                              <sch:rule context="win-def:fileauditedpermissions_test">
                                    <sch:report test="true()">
                                          DEPRECATED TEST: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                    </sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_faptst">
                              <sch:rule context="win-def:fileauditedpermissions_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:fileauditedpermissions_object/@id"><sch:value-of select="../@id"/> - the object child element of a fileauditedpermissions_test must reference a fileauditedpermissions_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:fileauditedpermissions_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:fileauditedpermissions_state/@id"><sch:value-of select="../@id"/> - the state child element of a fileauditedpermissions_test must reference a fileauditedpermissions_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_fapobj_dep">
                              <sch:rule context="win-def:fileauditedpermissions_object">
                                    <sch:report test="true()">DEPRECATED OBJECT: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/></sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_fapobjfilename">
                                                                        <sch:rule context="win-def:fileauditedpermissions_object/win-def:filename">
                                                                            <sch:assert test="(not(contains(.,'\') or contains(.,'/') or contains(.,':') or contains(.,'*') or contains(.,'?') or contains(.,'&gt;') or contains(.,'|'))) or (@operation='pattern match')"><sch:value-of select="../@id"/> - filename entity cannot contain the characters / \ : * ? &gt; | </sch:assert>
                                                                            <sch:assert test="(@var_ref and .='') or (@xsi:nil='true' and .='') or not(.='')"><sch:value-of select="../@id"/> - filename entity cannot be empty unless the xsi:nil attribute is set to true or a var_ref is used</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_fapste_dep">
                              <sch:rule context="win-def:fileauditedpermissions_state">
                                    <sch:report test="true()">
                                          DEPRECATED STATE: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                    </sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_fapstefilename">
                                                            <sch:rule context="win-def:fileauditedpermissions_state/win-def:filename">
                                                                <sch:assert test="(not(contains(.,'\') or contains(.,'/') or contains(.,':') or contains(.,'*') or contains(.,'?') or contains(.,'&gt;') or contains(.,'|'))) or (@operation='pattern match')"><sch:value-of select="../@id"/> - filename entity cannot contain the characters / \ : * ? &gt; | </sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_fap_resolve_group_value_dep">
                                                <sch:rule context="oval-def:oval_definitions/oval-def:objects/win-def:fileauditedpermissions_object/win-def:behaviors">
                                                      <sch:report test="@resolve_group">DEPRECATED BEHAVIOR IN: fileauditedpermissions_object </sch:report>
                                                </sch:rule>
                                          </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_fer53tst">
                              <sch:rule context="win-def:fileeffectiverights53_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:fileeffectiverights53_object/@id"><sch:value-of select="../@id"/> - the object child element of a fileeffectiverights53_test must reference a fileeffectiverights53_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:fileeffectiverights53_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:fileeffectiverights53_state/@id"><sch:value-of select="../@id"/> - the state child element of a fileeffectiverights53_test must reference a fileeffectiverights53_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_fer53objfilepath">
                                                                              <sch:rule context="win-def:fileeffectiverights53_object/win-def:filepath">
                                                                                    <sch:assert test="not(preceding-sibling::win-def:behaviors[@max_depth or @recurse_direction])"><sch:value-of select="../@id"/> - the max_depth and recurse_direction behaviors are not allowed with a filepath entity</sch:assert>
                                                                              </sch:rule>
                                                                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_fer53objfilename">
                                                                                  <sch:rule context="win-def:fileeffectiverights53_object/win-def:filename">
                                                                                      <sch:assert test="(not(contains(.,'\') or contains(.,'/') or contains(.,':') or contains(.,'*') or contains(.,'?') or contains(.,'&gt;') or contains(.,'|'))) or (@operation='pattern match')"><sch:value-of select="../@id"/> - filename entity cannot contain the characters / \ : * ? &gt; | </sch:assert>
                                                                                        <sch:assert test="(@var_ref and .='') or (@xsi:nil='true' and .='') or not(.='')"><sch:value-of select="../@id"/> - filename entity cannot be empty unless the xsi:nil attribute is set to true or a var_ref is used</sch:assert>
                                                                                  </sch:rule>
                                                                            </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_fer53stefilename">
                                                            <sch:rule context="win-def:fileeffectiverights53_state/win-def:filename">
                                                                <sch:assert test="(not(contains(.,'\') or contains(.,'/') or contains(.,':') or contains(.,'*') or contains(.,'?') or contains(.,'&gt;') or contains(.,'|'))) or (@operation='pattern match')"><sch:value-of select="../@id"/> - filename entity cannot contain the characters / \ : * ? &gt; | </sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_ffr53_resolve_group_value_dep">
                                                <sch:rule context="oval-def:oval_definitions/oval-def:objects/win-def:fileeffectiverights53_object/win-def:behaviors">
                                                      <sch:report test="@resolve_group">DEPRECATED BEHAVIOR IN: fileeffectiverights53_object </sch:report>
                                                </sch:rule>
                                          </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_fertst_dep">
                              <sch:rule context="win-def:fileeffectiverights_test">
                                    <sch:report test="true()">
                                          DEPRECATED TEST: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                    </sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_fertst">
                              <sch:rule context="win-def:fileeffectiverights_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:fileeffectiverights_object/@id"><sch:value-of select="../@id"/> - the object child element of a fileeffectiverights_test must reference a fileeffectiverights_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:fileeffectiverights_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:fileeffectiverights_state/@id"><sch:value-of select="../@id"/> - the state child element of a fileeffectiverights_test must reference a fileeffectiverights_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_ferobj_dep">
                              <sch:rule context="win-def:fileeffectiverights_object">
                                    <sch:report test="true()">
                                          DEPRECATED OBJECT: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                    </sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_fefobjfilename">
                                                                        <sch:rule context="win-def:fileeffectiverights_object/win-def:filename">
                                                                            <sch:assert test="(not(contains(.,'\') or contains(.,'/') or contains(.,':') or contains(.,'*') or contains(.,'?') or contains(.,'&gt;') or contains(.,'|'))) or (@operation='pattern match')"><sch:value-of select="../@id"/> - filename entity cannot contain the characters / \ : * ? &gt; | </sch:assert>
                                                                            <sch:assert test="(@var_ref and .='') or (@xsi:nil='true' and .='') or not(.='')"><sch:value-of select="../@id"/> - filename entity cannot be empty unless the xsi:nil attribute is set to true or a var_ref is used</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_ferste_dep">
                              <sch:rule context="win-def:fileeffectiverights_state">
                                    <sch:report test="true()">
                                          DEPRECATED STATE: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                    </sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_ferstefilename">
                                                            <sch:rule context="win-def:fileeffectiverights_state/win-def:filename">
                                                                <sch:assert test="(not(contains(.,'\') or contains(.,'/') or contains(.,':') or contains(.,'*') or contains(.,'?') or contains(.,'&gt;') or contains(.,'|'))) or (@operation='pattern match')"><sch:value-of select="../@id"/> - filename entity cannot contain the characters / \ : * ? &gt; | </sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_ffr_resolve_group_value_dep">
                                                <sch:rule context="oval-def:oval_definitions/oval-def:objects/win-def:fileeffectiverights_object/win-def:behaviors">
                                                      <sch:report test="@resolve_group">DEPRECATED BEHAVIOR IN: fileeffectiverights_object </sch:report>
                                                </sch:rule>
                                          </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_grouptst">
                              <sch:rule context="win-def:group_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:group_object/@id"><sch:value-of select="../@id"/> - the object child element of a group_test must reference a group_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:group_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:group_state/@id"><sch:value-of select="../@id"/> - the state child element of a group_test must reference a group_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_groupsidtst">
                              <sch:rule context="win-def:group_sid_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:group_sid_object/@id"><sch:value-of select="../@id"/> - the object child element of a group_sid_test must reference a group_sid_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:group_sid_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:group_sid_state/@id"><sch:value-of select="../@id"/> - the state child element of a group_sid_test must reference a group_sid_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_wininterfacetst">
                              <sch:rule context="win-def:interface_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:interface_object/@id"><sch:value-of select="../@id"/> - the object child element of an interface_test must reference an interface_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:interface_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:interface_state/@id"><sch:value-of select="../@id"/> - the state child element of an interface_test must reference an interface_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_lptst">
                              <sch:rule context="win-def:lockoutpolicy_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:lockoutpolicy_object/@id"><sch:value-of select="../@id"/> - the object child element of a lockoutpolicy_test must reference a lockoutpolicy_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:lockoutpolicy_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:lockoutpolicy_state/@id"><sch:value-of select="../@id"/> - the state child element of a lockoutpolicy_test must reference a lockoutpolicy_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_metabasetst">
                              <sch:rule context="win-def:metabase_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:metabase_object/@id"><sch:value-of select="../@id"/> - the object child element of a metabase_test must reference a metabase_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:metabase_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:metabase_state/@id"><sch:value-of select="../@id"/> - the state child element of a metabase_test must reference a metabase_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_pptst">
                              <sch:rule context="win-def:passwordpolicy_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:passwordpolicy_object/@id"><sch:value-of select="../@id"/> - the object child element of a passwordpolicy_test must reference a passwordpolicy_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:passwordpolicy_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:passwordpolicy_state/@id"><sch:value-of select="../@id"/> - the state child element of a passwordpolicy_test must reference a passwordpolicy_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_winporttst">
                              <sch:rule context="win-def:port_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:port_object/@id"><sch:value-of select="../@id"/> - the object child element of a port_test must reference a port_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:port_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:port_state/@id"><sch:value-of select="../@id"/> - the state child element of a port_test must reference a port_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_pertst">
                              <sch:rule context="win-def:printereffectiverights_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:printereffectiverights_object/@id"><sch:value-of select="../@id"/> - the object child element of a printereffectiverights_test must reference a printereffectiverights_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:printereffectiverights_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:printereffectiverights_state/@id"><sch:value-of select="../@id"/> - the state child element of a printereffectiverights_test must reference a printereffectiverights_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_pef_resolve_group_value_dep">
                                    <sch:rule context="oval-def:oval_definitions/oval-def:objects/win-def:printereffectiverights_object/win-def:behaviors">
                                          <sch:report test="@resolve_group">DEPRECATED BEHAVIOR IN: printereffectiverights_object </sch:report>
                                    </sch:rule>
                              </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_processtst_dep">
                              <sch:rule context="win-def:process_test">
                                    <sch:report test="true()">DEPRECATED TEST: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/></sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_processtst">
                              <sch:rule context="win-def:process_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:process_object/@id"><sch:value-of select="../@id"/> - the object child element of a process_test must reference a process_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:process_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:process_state/@id"><sch:value-of select="../@id"/> - the state child element of a process_test must reference a process_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_processobj_dep">
                              <sch:rule context="win-def:process_object">
                                    <sch:report test="true()">DEPRECATED OBJECT: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/></sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_processste_dep">
                              <sch:rule context="win-def:process_state">
                                    <sch:report test="true()">DEPRECATED STATE: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/></sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_process58tst">
                              <sch:rule context="win-def:process58_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:process58_object/@id"><sch:value-of select="../@id"/> - the object child element of a process58_test must reference a process58_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:process58_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:process58_state/@id"><sch:value-of select="../@id"/> - the state child element of a process58_test must reference a process58_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_regtst">
                              <sch:rule context="win-def:registry_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:registry_object/@id"><sch:value-of select="../@id"/> - the object child element of a registry_test must reference a registry_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:registry_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:registry_state/@id"><sch:value-of select="../@id"/> - the state child element of a registry_test must reference a registry_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_regobjkey">
                                                                        <sch:rule context="win-def:registry_object/win-def:key">
                                                                              <sch:assert test="not(@xsi:nil=true()) or ../win-def:name/@xsi:nil=true()"><sch:value-of select="../@id"/> - name entity must be nil when key is nil</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_rap53tst">
                              <sch:rule context="win-def:regkeyauditedpermissions53_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:regkeyauditedpermissions53_object/@id"><sch:value-of select="../@id"/> - the object child element of a regkeyauditedpermissions53_test must reference a regkeyauditedpermissions53_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:regkeyauditedpermissions53_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:regkeyauditedpermissions53_state/@id"><sch:value-of select="../@id"/> - the state child element of a regkeyauditedpermissions53_test must reference a regkeyauditedpermissions53_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_rap53stestandard_synchronize">
                                                            <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:standard_synchronize">
                                                                  <sch:report test="true()">DEPRECATED ELEMENT: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/></sch:report>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_rka53_resolve_group_value_dep">
                                                <sch:rule context="oval-def:oval_definitions/oval-def:objects/win-def:regkeyauditedpermissions53_object/win-def:behaviors">
                                                      <sch:report test="@resolve_group">DEPRECATED BEHAVIOR IN: regkeyauditedpermissions53_object </sch:report>
                                                </sch:rule>
                                          </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_raptst_dep">
                                    <sch:rule context="win-def:regkeyauditedpermissions_test">
                                          <sch:report test="true()">
                                                DEPRECATED TEST: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                          </sch:report>
                                    </sch:rule>
                              </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_raptst">
                              <sch:rule context="win-def:regkeyauditedpermissions_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:regkeyauditedpermissions_object/@id"><sch:value-of select="../@id"/> - the object child element of a regkeyauditedpermissions_test must reference a regkeyauditedpermissions_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:regkeyauditedpermissions_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:regkeyauditedpermissions_state/@id"><sch:value-of select="../@id"/> - the state child element of a regkeyauditedpermissions_test must reference a regkeyauditedpermissions_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_rapobj_dep">
                              <sch:rule context="win-def:regkeyauditedpermissions_object">
                                    <sch:report test="true()">
                                          DEPRECATED OBJECT: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                    </sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_rapste_dep">
                              <sch:rule context="win-def:regkeyauditedpermissions_state">
                                    <sch:report test="true()">
                                          DEPRECATED STATE: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                    </sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_rka_resolve_group_value_dep">
                                                <sch:rule context="oval-def:oval_definitions/oval-def:objects/win-def:regkeyauditedpermissions_object/win-def:behaviors">
                                                      <sch:report test="@resolve_group">DEPRECATED BEHAVIOR IN: regkeyauditedpermissions_object </sch:report>
                                                </sch:rule>
                                          </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_rer53tst">
                              <sch:rule context="win-def:regkeyeffectiverights53_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:regkeyeffectiverights53_object/@id"><sch:value-of select="../@id"/> - the object child element of a regkeyeffectiverights53_test must reference a regkeyeffectiverights53_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:regkeyeffectiverights53_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:regkeyeffectiverights53_state/@id"><sch:value-of select="../@id"/> - the state child element of a regkeyeffectiverights53_test must reference a regkeyeffectiverights53_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_rer53stestandard_synchronize">
                                                            <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:standard_synchronize">
                                                                  <sch:report test="true()">DEPRECATED ELEMENT: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/></sch:report>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_rke53_resolve_group_value_dep">
                                                <sch:rule context="oval-def:oval_definitions/oval-def:objects/win-def:regkeyeffectiverights53_object/win-def:behaviors">
                                                      <sch:report test="@resolve_group">DEPRECATED BEHAVIOR IN: regkeyeffectiverights53_object </sch:report>
                                                </sch:rule>
                                          </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_rertst_dep">
                              <sch:rule context="win-def:regkeyeffectiverights_test">
                                    <sch:report test="true()">
                                          DEPRECATED TEST: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                    </sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_rertst">
                              <sch:rule context="win-def:regkeyeffectiverights_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:regkeyeffectiverights_object/@id"><sch:value-of select="../@id"/> - the object child element of a regkeyeffectiverights_test must reference a regkeyeffectiverights_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:regkeyeffectiverights_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:regkeyeffectiverights_state/@id"><sch:value-of select="../@id"/> - the state child element of a regkeyeffectiverights_test must reference a regkeyeffectiverights_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_rerobj_dep">
                              <sch:rule context="win-def:regkeyeffectiverights_object">
                                    <sch:report test="true()">
                                          DEPRECATED OBJECT: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                    </sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_rerste_dep">
                              <sch:rule context="win-def:regkeyeffectiverights_state">
                                    <sch:report test="true()">
                                          DEPRECATED STATE: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                    </sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_rke_resolve_group_value_dep">
                                                <sch:rule context="oval-def:oval_definitions/oval-def:objects/win-def:regkeyeffectiverights_object/win-def:behaviors">
                                                      <sch:report test="@resolve_group">DEPRECATED BEHAVIOR IN: regkeyeffectiverights_object </sch:report>
                                                </sch:rule>
                                          </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_servicetst">
                              <sch:rule context="win-def:service_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:service_object/@id"><sch:value-of select="../@id"/> - the object child element of a service_test must reference a service_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:service_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:service_state/@id"><sch:value-of select="../@id"/> - the state child element of a service_test must reference a service_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_svcertst">
                              <sch:rule context="win-def:serviceeffectiverights_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:serviceeffectiverights_object/@id"><sch:value-of select="../@id"/> - the object child element of a serviceeffectiverights_test must reference a serviceeffectiverights_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:serviceeffectiverights_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:serviceeffectiverights_state/@id"><sch:value-of select="../@id"/> - the state child element of a serviceeffectiverights_test must reference a serviceeffectiverights_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_srtst">
                              <sch:rule context="win-def:sharedresource_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:sharedresource_object/@id"><sch:value-of select="../@id"/> - the object child element of a sharedresource_test must reference a sharedresource_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:sharedresource_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:sharedresource_state/@id"><sch:value-of select="../@id"/> - the state child element of a sharedresource_test must reference a sharedresource_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_sidtst">
                              <sch:rule context="win-def:sid_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:sid_object/@id"><sch:value-of select="../@id"/> - the object child element of a sid_test must reference a sid_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:sid_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:sid_state/@id"><sch:value-of select="../@id"/> - the state child element of a sid_test must reference a sid_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_sidsidtst">
                              <sch:rule context="win-def:sid_sid_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:sid_sid_object/@id"><sch:value-of select="../@id"/> - the object child element of a sid_sid_test must reference a sid_sid_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:sid_sid_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:sid_sid_state/@id"><sch:value-of select="../@id"/> - the state child element of a sid_sid_test must reference a sid_sid_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_uactst">
                              <sch:rule context="win-def:uac_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:uac_object/@id"><sch:value-of select="../@id"/> - the object child element of a uac_test must reference a uac_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:uac_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:uac_state/@id"><sch:value-of select="../@id"/> - the state child element of a uac_test must reference a uac_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_usertst">
                              <sch:rule context="win-def:user_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:user_object/@id"><sch:value-of select="../@id"/> - the object child element of a user_test must reference a user_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:user_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:user_state/@id"><sch:value-of select="../@id"/> - the state child element of a user_test must reference a user_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_usersid55tst">
                    <sch:rule context="win-def:user_sid55_test/win-def:object">
                        <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:user_sid55_object/@id"><sch:value-of select="../@id"/> - the object child element of a user_sid55_test must reference a user_sid55_object</sch:assert>
                    </sch:rule>
                    <sch:rule context="win-def:user_sid55_test/win-def:state">
                        <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:user_sid55_state/@id"><sch:value-of select="../@id"/> - the state child element of a user_sid55_test must reference a user_sid55_state</sch:assert>
                    </sch:rule>
                </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_usersidtst_dep">
                            <sch:rule context="win-def:user_sid_test">
                                  <sch:report test="true()">
                                        DEPRECATED TEST: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                  </sch:report>
                            </sch:rule>
                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_usersidtst">
                            <sch:rule context="win-def:user_sid_test/win-def:object">
                                  <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:user_sid_object/@id"><sch:value-of select="../@id"/> - the object child element of a user_sid_test must reference a user_sid_object</sch:assert>
                            </sch:rule>
                            <sch:rule context="win-def:user_sid_test/win-def:state">
                                  <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:user_sid_state/@id"><sch:value-of select="../@id"/> - the state child element of a user_sid_test must reference a user_sid_state</sch:assert>
                            </sch:rule>
                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_usersidobj_dep">
                            <sch:rule context="win-def:user_sid_object">
                                  <sch:report test="true()">
                                        DEPRECATED OBJECT: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                  </sch:report>
                            </sch:rule>
                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_usersidste_dep">
                            <sch:rule context="win-def:user_sid_state">
                                  <sch:report test="true()">
                                        DEPRECATED STATE: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/>
                                  </sch:report>
                            </sch:rule>
                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_volumetst">
                              <sch:rule context="win-def:volume_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:volume_object/@id"><sch:value-of select="../@id"/> - the object child element of a volume_test must reference a volume_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:volume_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:volume_state/@id"><sch:value-of select="../@id"/> - the state child element of a volume_test must reference a volume_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_wmitst_dep">
                              <sch:rule context="win-def:wmi_test">
                                    <sch:report test="true()">DEPRECATED TEST: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/></sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_wmitst">
                              <sch:rule context="win-def:wmi_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:wmi_object/@id"><sch:value-of select="../@id"/> - the object child element of a wmi_test must reference a wmi_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:wmi_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:wmi_state/@id"><sch:value-of select="../@id"/> - the state child element of a wmi_test must reference a wmi_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_wmiobj_dep">
                              <sch:rule context="win-def:wmi_object">
                                    <sch:report test="true()">DEPRECATED OBJECT: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/></sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_wmiobjnamespace">
                                                                        <sch:rule context="win-def:wmi_object/win-def:namespace">
                                                                              <sch:assert test="not(@operation) or @operation='equals'"><sch:value-of select="../@id"/> - operation attribute for the namespace entity of a wmi_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_wmiobjwql">
                                                                        <sch:rule context="win-def:wmi_object/win-def:wql">
                                                                              <sch:assert test="not(@operation) or @operation='equals'"><sch:value-of select="../@id"/> - operation attribute for the wql entity of a wmi_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_wmiste_dep">
                              <sch:rule context="win-def:wmi_state">
                                    <sch:report test="true()">DEPRECATED STATE: <sch:value-of select="name()"/> ID: <sch:value-of select="@id"/></sch:report>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_wmi57tst">
                              <sch:rule context="win-def:wmi57_test/win-def:object">
                                    <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:wmi57_object/@id"><sch:value-of select="../@id"/> - the object child element of a wmi57_test must reference a wmi57_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:wmi57_test/win-def:state">
                                    <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:wmi57_state/@id"><sch:value-of select="../@id"/> - the state child element of a wmi57_test must reference a wmi57_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_wmi57objnamespace">
                                                                        <sch:rule context="win-def:wmi57_object/win-def:namespace">
                                                                              <sch:assert test="not(@operation) or @operation='equals'"><sch:value-of select="../@id"/> - operation attribute for the namespace entity of a wmi57_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_wmi57objwql">
                                                                        <sch:rule context="win-def:wmi57_object/win-def:wql">
                                                                              <sch:assert test="not(@operation) or @operation='equals'"><sch:value-of select="../@id"/> - operation attribute for the wql entity of a wmi57_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_wmi57steresult">
                                                            <sch:rule context="win-def:wmi57_state/win-def:result">
                                                                  <sch:assert test="@datatype='record'"><sch:value-of select="../@id"/> - datatype attribute for the result entity of a wmi57_object must be 'record'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_wuaupdatesearchertst">
                    <sch:rule context="win-def:wuaupdatesearcher_test/win-def:object">
                        <sch:assert test="@object_ref=ancestor::oval-def:oval_definitions/oval-def:objects/win-def:wuaupdatesearcher_object/@id">
                            <sch:value-of select="../@id"/> - the object child element of a wuaupdatesearcher_test must reference a wuaupdatesearcher_object
                        </sch:assert>
                    </sch:rule>
                    <sch:rule context="win-def:wuaupdatesearcher_test/win-def:state">
                        <sch:assert test="@state_ref=ancestor::oval-def:oval_definitions/oval-def:states/win-def:wuaupdatesearcher_state/@id">
                            <sch:value-of select="../@id"/> - the state child element of a wuaupdatesearcher_test must reference a wuaupdatesearcher_state
                        </sch:assert>
                    </sch:rule>
                </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_wuaupdatesearcherobjsearchcriteria">
                                                <sch:rule context="win-def:wuaupdatesearcher_object/win-def:search_criteria">
                                                    <sch:assert test="not(@operation) or @operation='equals'">
                                                        <sch:value-of select="../@id"/> - operation attribute for the search_criteria entity of a wuaupdatesearcher_object should be 'equals'
                                                    </sch:assert>
                                                </sch:rule>
                                            </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_ssr_stype_special_value_dep">
                                                <sch:rule context="oval-def:oval_definitions/oval-def:states/win-def:sharedresource_state/win-def:shared_type">
                                                      <sch:report test=".='STYPE_SPECIAL'">
                                                            DEPRECATED ELEMENT VALUE IN: sharedresource_state ELEMENT VALUE: <sch:value-of select="."/>
                                                      </sch:report>
                                                </sch:rule>
                                          </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="win-def_ssr_stype_temporary_value_dep">
                                                <sch:rule context="oval-def:oval_definitions/oval-def:states/win-def:sharedresource_state/win-def:shared_type">
                                                      <sch:report test=".='STYPE_TEMPORARY'">
                                                            DEPRECATED ELEMENT VALUE IN: sharedresource_state ELEMENT VALUE: <sch:value-of select="."/>
                                                      </sch:report>
                                                </sch:rule>
                                          </sch:pattern>
  <sch:diagnostics/>
</sch:schema>
