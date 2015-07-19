<?xml version="1.0" standalone="yes"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" xmlns:xs="http://www.w3.org/2001/XMLSchema">
  <sch:ns xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" prefix="oval" uri="http://oval.mitre.org/XMLSchema/oval-common-5"/>
  <sch:ns xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ds="http://www.w3.org/2000/09/xmldsig#" prefix="oval-def" uri="http://oval.mitre.org/XMLSchema/oval-definitions-5"/>
  <sch:ns xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:aix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#aix" prefix="aix-def" uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#aix"/>
  <sch:ns xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:aix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#aix" prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>
  <sch:ns xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:apache-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#apache" prefix="apache-def" uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#apache"/>
  <sch:ns xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:catos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#catos" prefix="catos-def" uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#catos"/>
  <sch:ns xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:esx-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#esx" prefix="esx-def" uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#esx"/>
  <sch:ns xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:freebsd-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#freebsd" prefix="freebsd-def" uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#freebsd"/>
  <sch:ns xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" prefix="hpux-def" uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux"/>
  <sch:ns xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" prefix="ind-def" uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent"/>
  <sch:ns xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ios-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios" prefix="ios-def" uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios"/>
  <sch:ns xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:linux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" prefix="linux-def" uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux"/>
  <sch:ns xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" prefix="macos-def" uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos"/>
  <sch:ns xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:pixos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#pixos" prefix="pixos-def" uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#pixos"/>
  <sch:ns xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:sol-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris" prefix="sol-def" uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris"/>
  <sch:ns xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" prefix="unix-def" uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix"/>
  <sch:ns xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" prefix="win-def" uri="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows"/>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ds="http://www.w3.org/2000/09/xmldsig#" id="empty_def_doc">
                    <sch:rule context="oval-def:oval_definitions">
                        <sch:assert test="oval-def:definitions or oval-def:tests or oval-def:objects or oval-def:states or oval-def:variables">A valid OVAL Definition document must contain at least one definitions, tests, objects, states, or variables element. The optional definitions, tests, objects, states, and variables sections define the specific characteristics that should be evaluated on a system to determine the truth values of the OVAL Definition Document. To be valid though, at least one definitions, tests, objects, states, or variables element must be present.</sch:assert>
                    </sch:rule>
                </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ds="http://www.w3.org/2000/09/xmldsig#" id="required_criteria">
                    <sch:rule context="/oval-def:oval_definitions/oval-def:definitions/oval-def:definition[@deprecated='false' or not(@deprecated)]">
                        <sch:assert test="oval-def:criteria">A valid OVAL Definition document must contain a criteria unless the definition is a deprecated definition.</sch:assert>
                    </sch:rule>
                </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ds="http://www.w3.org/2000/09/xmldsig#" id="test_type">
                    <sch:rule context="/oval-def:oval_definitions/oval-def:tests/*[@check_existence='none_exist']">
                        <sch:assert test="not(*[name()='state'])"><sch:value-of select="@id"/> - No state should be referenced when check_existence has a value of 'none_exist'.</sch:assert>
                    </sch:rule>
                </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ds="http://www.w3.org/2000/09/xmldsig#" id="setobjref">
                    <sch:rule context="/oval-def:oval_definitions/oval-def:objects/*/oval-def:set/oval-def:object_reference">
                        <sch:assert test="name(./../..) = name(/oval-def:oval_definitions/oval-def:objects/*[@id=current()])"><sch:value-of select="../../@id"/> - Each object referenced by the set must be of the same type as parent object</sch:assert>
                    </sch:rule>
                    <sch:rule context="/oval-def:oval_definitions/oval-def:objects/*/oval-def:set/oval-def:set/oval-def:object_reference">
                        <sch:assert test="name(./../../..) = name(/oval-def:oval_definitions/oval-def:objects/*[@id=current()])"><sch:value-of select="../../../@id"/> - Each object referenced by the set must be of the same type as parent object</sch:assert>
                    </sch:rule>
                    <sch:rule context="/oval-def:oval_definitions/oval-def:objects/*/oval-def:set/oval-def:set/oval-def:set/oval-def:object_reference">
                        <sch:assert test="name(./../../../..) = name(/oval-def:oval_definitions/oval-def:objects/*[@id=current()])"><sch:value-of select="../../../../@id"/> - Each object referenced by the set must be of the same type as parent object</sch:assert>
                    </sch:rule>
                </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ds="http://www.w3.org/2000/09/xmldsig#" id="value">
                    <sch:rule context="oval-def:constant_variable/oval-def:value">
                        <sch:assert test=".!=''">The value element of the constant_variable <sch:value-of select="../../@id"/> can not be empty.</sch:assert>
                    </sch:rule>
                </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ds="http://www.w3.org/2000/09/xmldsig#" id="literal_component">
                    <sch:rule context="oval-def:literal_component">
                        <sch:assert test=".!=''">The literal_component of variable <sch:value-of select="../../@id"/> can not be empty.</sch:assert>
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
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ds="http://www.w3.org/2000/09/xmldsig#" id="item_field">
                    <sch:rule context="oval-def:object_component">
                        <sch:assert test="@item_field!=''">The item_field attribute of an object_component of variable <sch:value-of select="../../@id"/> can not be empty.</sch:assert>
                    </sch:rule>
                </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ds="http://www.w3.org/2000/09/xmldsig#" id="arithmeticfunctionrules">
                    <sch:rule context="oval-def:arithmetic/oval-def:literal_component">
                        <sch:assert test="@datatype='float' or @datatype='int'">A literal_component used by an arithmetic function must have a datatype of float or int.</sch:assert>
                    </sch:rule>
                    <sch:rule context="oval-def:arithmetic/oval-def:variable_component">
                        <sch:let name="var_ref" value="@var_ref"/>
                        <sch:assert test="//oval-def:variables/*[@id=$var_ref]/@datatype='float' or //oval-def:variables/*[@id=$var_ref]/@datatype='int'">The variable referenced by the arithmetic function must have a datatype of int.</sch:assert>
                    </sch:rule>
                </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ds="http://www.w3.org/2000/09/xmldsig#" id="beginfunctionrules">
                    <sch:rule context="oval-def:begin/oval-def:literal_component">
                        <sch:assert test="not(@datatype) or @datatype='string'">A literal_component used by the begin function must have a datatype of string.</sch:assert>
                    </sch:rule>
                    <sch:rule context="oval-def:begin/oval-def:variable_component">
                        <sch:let name="var_ref" value="@var_ref"/>
                        <sch:assert test="//oval-def:variables/*[@id=$var_ref]/@datatype = 'string'">The variable referenced by the begin function must have a datatype of string.</sch:assert>
                    </sch:rule>
                </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ds="http://www.w3.org/2000/09/xmldsig#" id="concatfunctionrules">
                        <sch:rule context="oval-def:concat/oval-def:literal_component">
                            <sch:assert test="not(@datatype) or @datatype='string'">A literal_component used by the concat function must have a datatype of string.</sch:assert>
                        </sch:rule>
                        <sch:rule context="oval-def:concat/oval-def:variable_component">
                            <sch:let name="var_ref" value="@var_ref"/>
                            <sch:assert test="//oval-def:variables/*[@id=$var_ref]/@datatype = 'string'">The variable referenced by the concat function must have a datatype of string.</sch:assert>
                        </sch:rule>
                    </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ds="http://www.w3.org/2000/09/xmldsig#" id="endfunctionrules">
                    <sch:rule context="oval-def:end/oval-def:literal_component">
                        <sch:assert test="not(@datatype) or @datatype='string'">A literal_component used by the end function must have a datatype of string.</sch:assert>
                    </sch:rule>
                    <sch:rule context="oval-def:end/oval-def:variable_component">
                        <sch:let name="var_ref" value="@var_ref"/>
                        <sch:assert test="//oval-def:variables/*[@id=$var_ref]/@datatype = 'string'">The variable referenced by the end function must have a datatype of string.</sch:assert>
                    </sch:rule>
                </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ds="http://www.w3.org/2000/09/xmldsig#" id="escaperegexfunctionrules">
                    <sch:rule context="oval-def:escape_regex/oval-def:literal_component">
                        <sch:assert test="not(@datatype) or @datatype='string'">A literal_component used by the escape_regex function must have a datatype of string.</sch:assert>
                    </sch:rule>
                    <sch:rule context="oval-def:escape_regex/oval-def:variable_component">
                        <sch:let name="var_ref" value="@var_ref"/>
                        <sch:assert test="//oval-def:variables/*[@id=$var_ref]/@datatype = 'string'">The variable referenced by the escape_regex function must have a datatype of string.</sch:assert>
                    </sch:rule>
                </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ds="http://www.w3.org/2000/09/xmldsig#" id="splitfunctionrules">
                    <sch:rule context="oval-def:split/oval-def:literal_component">
                        <sch:assert test="not(@datatype) or @datatype='string'">A literal_component used by the split function must have a datatype of string.</sch:assert>
                    </sch:rule>
                    <sch:rule context="oval-def:split/oval-def:variable_component">
                        <sch:let name="var_ref" value="@var_ref"/>
                        <sch:assert test="//oval-def:variables/*[@id=$var_ref]/@datatype = 'string'">The variable referenced by the split function must have a datatype of string.</sch:assert>
                    </sch:rule>
                </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ds="http://www.w3.org/2000/09/xmldsig#" id="substringfunctionrules">
                    <sch:rule context="oval-def:substring/oval-def:literal_component">
                        <sch:assert test="not(@datatype) or @datatype='string'">A literal_component used by the substring function must have a datatype of string.</sch:assert>
                    </sch:rule>
                    <sch:rule context="oval-def:substring/oval-def:variable_component">
                        <sch:let name="var_ref" value="@var_ref"/>
                        <sch:assert test="//oval-def:variables/*[@id=$var_ref]/@datatype = 'string'">The variable referenced by the substring function must have a datatype of string.</sch:assert>
                    </sch:rule>
                </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ds="http://www.w3.org/2000/09/xmldsig#" id="timedifferencefunctionrules">
                    <sch:rule context="oval-def:time_difference/oval-def:literal_component">
                        <sch:assert test="not(@datatype) or @datatype='string' or @datatype='int'">A literal_component used by the time_difference function must have a datatype of string or int.</sch:assert>
                    </sch:rule>
                    <sch:rule context="oval-def:time_difference/oval-def:variable_component">
                        <sch:let name="var_ref" value="@var_ref"/>
                        <sch:assert test="//oval-def:variables/*[@id=$var_ref]/@datatype='string' or //oval-def:variables/*[@id=$var_ref]/@datatype='int'">The variable referenced by the time_difference function must have a datatype of string or int.</sch:assert>
                    </sch:rule>
                </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ds="http://www.w3.org/2000/09/xmldsig#" id="regexcapturefunctionrules">
                    <sch:rule context="oval-def:regex_capture/oval-def:literal_component">
                        <sch:assert test="not(@datatype) or @datatype='string'">A literal_component used by the regex_capture function must have a datatype of string.</sch:assert>
                    </sch:rule>
                    <sch:rule context="oval-def:regex_capture/oval-def:variable_component">
                        <sch:let name="var_ref" value="@var_ref"/>
                        <sch:assert test="//oval-def:variables/*[@id=$var_ref]/@datatype = 'string'">The variable referenced by the regex_capture function must have a datatype of string.</sch:assert>
                    </sch:rule>
                </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ds="http://www.w3.org/2000/09/xmldsig#" id="definition_entity_rules">
                    <sch:rule context="oval-def:objects/*/*[@var_ref]|oval-def:states/*/*[@var_ref]">
                        <sch:let name="var_ref" value="@var_ref"/>
                        <sch:assert test=".=''"><sch:value-of select="../@id"/> - a var-ref has been supplied for the <sch:value-of select="name()"/> entity so no value should be provided</sch:assert>
                        <sch:assert test="( (not(@datatype)) and ('string' = //oval-def:variables/*[@id=$var_ref]/@datatype) ) or (@datatype = //oval-def:variables/*[@id=$var_ref]/@datatype)"><sch:value-of select="$var_ref"/> - inconsistent datatype between the variable and an associated var_ref</sch:assert>
                    </sch:rule>
                    <sch:rule context="oval-def:objects/*/*[not(@datatype)]|oval-def:states/*/*[not(@datatype)]">
                        <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='case insensitive equals' or @operation='case insensitive not equal' or @operation='pattern match'"><sch:value-of select="../@id"/> - The use of '<sch:value-of select="@operation"/>' for the operation attribute of the <sch:value-of select="name()"/> entity is not valid given the lack of a declared datatype (hence a default datatype of string).</sch:assert>
                    </sch:rule>
                    <sch:rule context="oval-def:objects/*/*[@datatype='binary']|oval-def:states/*/*[@datatype='binary']">
                        <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'"><sch:value-of select="../@id"/> - The use of '<sch:value-of select="@operation"/>' for the operation attribute of the <sch:value-of select="name()"/> entity is not valid given a datatype of binary.</sch:assert>
                        <!--<sch:assert test="matches(., '^[0-9a-fA-F]*$')"><sch:value-of select="../@id"/> - A value of '<sch:value-of select="."/>' for the <sch:value-of select="name()"/> entity is not valid given a datatype of binary.</sch:assert>-->
                    </sch:rule>
                    <sch:rule context="oval-def:objects/*/*[@datatype='boolean']|oval-def:states/*/*[@datatype='boolean']">
                        <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal'"><sch:value-of select="../@id"/> - The use of '<sch:value-of select="@operation"/>' for the operation attribute of the <sch:value-of select="name()"/> entity is not valid given a datatype of boolean.</sch:assert>
                        <!--<sch:assert test="matches(., '^true$|^false$|^1$|^0$')"><sch:value-of select="../@id"/> - A value of '<sch:value-of select="."/>' for the <sch:value-of select="name()"/> entity is not valid given a datatype of boolean.</sch:assert>-->
                    </sch:rule>
                    <sch:rule context="oval-def:objects/*/*[@datatype='evr_string']|oval-def:states/*/*[@datatype='evr_string']">
                        <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or  @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'"><sch:value-of select="../@id"/> - The use of '<sch:value-of select="@operation"/>' for the operation attribute of the <sch:value-of select="name()"/> entity is not valid given a datatype of evr_string.</sch:assert>
                        <!--<sch:assert test="matches(., '^[^:\-]*:[^:\-]*-[^:\-]*$')"><sch:value-of select="../@id"/> - A value of '<sch:value-of select="."/>' for the <sch:value-of select="name()"/> entity is not valid given a datatype of evr_string.</sch:assert>-->
                    </sch:rule>
                    <sch:rule context="oval-def:objects/*/*[@datatype='fileset_revision']|oval-def:states/*/*[@datatype='fileset_revision']">
                        <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or  @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'"><sch:value-of select="../@id"/> - The use of '<sch:value-of select="@operation"/>' for the operation attribute of the <sch:value-of select="name()"/> entity is not valid given a datatype of fileset_revision.</sch:assert>
                    </sch:rule>
                    <sch:rule context="oval-def:objects/*/*[@datatype='float']|oval-def:states/*/*[@datatype='float']">
                        <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'"><sch:value-of select="../@id"/> - The use of '<sch:value-of select="@operation"/>' for the operation attribute of the <sch:value-of select="name()"/> entity is not valid given a datatype of float.</sch:assert>
                        <!--<sch:assert test="matches(., '^[+\-]?[0-9]+([\.][0-9]+)?([eE][+\-]?[0-9]+)?$|^NaN$|^INF$|^\-INF$')"><sch:value-of select="../@id"/> - A value of '<sch:value-of select="."/>' for the <sch:value-of select="name()"/> entity is not valid given a datatype of float.</sch:assert>-->
                    </sch:rule>
                    <sch:rule context="oval-def:objects/*/*[@datatype='ios_version']|oval-def:states/*/*[@datatype='ios_version']">
                        <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'"><sch:value-of select="../@id"/> - The use of '<sch:value-of select="@operation"/>' for the operation attribute of the <sch:value-of select="name()"/> entity is not valid given a datatype of ios_version.</sch:assert>
                    </sch:rule>
                    <sch:rule context="oval-def:objects/*/*[@datatype='int']|oval-def:states/*/*[@datatype='int']">
                        <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal' or @operation='bitwise and' or @operation='bitwise or'"><sch:value-of select="../@id"/> - The use of '<sch:value-of select="@operation"/>' for the operation attribute of the <sch:value-of select="name()"/> entity is not valid given a datatype of int.</sch:assert>
                        <!--<sch:assert test="matches(., '^[+\-]?[0-9]+$')"><sch:value-of select="../@id"/> - A value of '<sch:value-of select="."/>' for the <sch:value-of select="name()"/> entity is not valid given a datatype of int.</sch:assert>-->
                    </sch:rule>
                    <sch:rule context="oval-def:objects/*/*[@datatype='string']|oval-def:states/*/*[@datatype='string']">
                        <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='case insensitive equals' or @operation='case insensitive not equal' or @operation='pattern match'"><sch:value-of select="../@id"/> - The use of '<sch:value-of select="@operation"/>' for the operation attribute of the <sch:value-of select="name()"/> entity is not valid given a datatype of string.</sch:assert>
                    </sch:rule>
                    <sch:rule context="oval-def:objects/*/*[@datatype='version']|oval-def:states/*/*[@datatype='version']">
                        <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'"><sch:value-of select="../@id"/> - The use of '<sch:value-of select="@operation"/>' for the operation attribute of the <sch:value-of select="name()"/> entity is not valid given a datatype of version.</sch:assert>
                    </sch:rule>
                </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ds="http://www.w3.org/2000/09/xmldsig#" id="entityobjectbaserules">
                    <sch:rule context="oval-def:objects/*/*[@var_ref]">
                        <sch:assert test="@var_check"><sch:value-of select="../@id"/> - a var-ref has been supplied for the <sch:value-of select="name()"/> entity so a var_check should also be provided</sch:assert>
                    </sch:rule>
                </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ds="http://www.w3.org/2000/09/xmldsig#" id="entitystatebaserules">
                    <sch:rule context="oval-def:states/*/*[@var_ref]">
                        <!--<sch:assert test="if (@var_ref) then (@var_check) else (1=1)"><sch:value-of select="../@id"/> - a var-ref has been supplied for the <sch:value-of select="name()"/> entity so a var_check should also be provided</sch:assert>-->
                        <sch:assert test="@var_check"><sch:value-of select="../@id"/> - a var-ref has been supplied for the <sch:value-of select="name()"/> entity so a var_check should also be provided</sch:assert>
                    </sch:rule>
                </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:aix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#aix" id="filesettst">
                        <sch:rule context="aix-def:fileset_test/aix-def:object">
                            <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/aix-def:fileset_object/@id"><sch:value-of select="../@id"/> - the object child element of a fileset_test must reference a fileset_object</sch:assert>
                        </sch:rule>
                        <sch:rule context="aix-def:fileset_test/aix-def:state">
                            <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/aix-def:fileset_state/@id"><sch:value-of select="../@id"/> - the state child element of a fileset_test must reference a fileset_state</sch:assert>
                        </sch:rule>
                    </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:aix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#aix" id="filesetobjflstinst">
                                                                        <sch:rule context="aix-def:fileset_object/aix-def:flstinst">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the flstinst entity of a fileset_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:aix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#aix" id="filesetsteflstinst">
                                                            <sch:rule context="aix-def:fileset_state/aix-def:flstinst">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the flstinst entity of a fileset_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:aix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#aix" id="filesetstelevel">
                                                            <sch:rule context="aix-def:fileset_state/aix-def:level">
                                                                  <sch:assert test="@datatype='version'"><sch:value-of select="../@id"/> - datatype attribute for the level entity of a fileset_state should be 'version'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:aix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#aix" id="filesetstestate">
                                                            <sch:rule context="aix-def:fileset_state/aix-def:state">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the state entity of a fileset_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:aix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#aix" id="filesetstedescription">
                                                            <sch:rule context="aix-def:fileset_state/aix-def:description">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the description entity of a fileset_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:aix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#aix" id="fixtst">
                        <sch:rule context="aix-def:fix_test/aix-def:object">
                            <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/aix-def:fix_object/@id"><sch:value-of select="../@id"/> - the object child element of a fix_test must reference a fix_object</sch:assert>
                        </sch:rule>
                        <sch:rule context="aix-def:fix_test/aix-def:state">
                            <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/aix-def:fix_state/@id"><sch:value-of select="../@id"/> - the state child element of a fix_test must reference a fix_state</sch:assert>
                        </sch:rule>
                    </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:aix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#aix" id="fixobjapar_number">
                                                                        <sch:rule context="aix-def:fix_object/aix-def:apar_number">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the apar_number entity of a fix_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:aix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#aix" id="fixsteapar_number">
                                                            <sch:rule context="aix-def:fix_state/aix-def:apar_number">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the apar_number entity of a fix_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:aix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#aix" id="fixsteabstract">
                                                            <sch:rule context="aix-def:fix_state/aix-def:abstract">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the abstract entity of a fix_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:aix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#aix" id="fixstesymptom">
                                                            <sch:rule context="aix-def:fix_state/aix-def:symptom">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the symptom entity of a fix_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:aix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#aix" id="fixsteinstallation_status">
                                                            <sch:rule context="aix-def:fix_state/aix-def:installation_status">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the installation_status entity of a fix_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:aix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#aix" id="osleveltst">
                        <sch:rule context="aix-def:oslevel_test/aix-def:object">
                            <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/aix-def:oslevel_object/@id"><sch:value-of select="../@id"/> - the object child element of a oslevel_test must reference a oslevel_object</sch:assert>
                        </sch:rule>
                        <sch:rule context="aix-def:oslevel_test/aix-def:state">
                            <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/aix-def:oslevel_state/@id"><sch:value-of select="../@id"/> - the state child element of a oslevel_test must reference a oslevel_state</sch:assert>
                        </sch:rule>
                    </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:aix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#aix" id="oslevelstemaintenance_level">
                                                            <sch:rule context="aix-def:oslevel_state/aix-def:maintenance_level">
                                                                  <sch:assert test="@datatype='version'"><sch:value-of select="../@id"/> - datatype attribute for the maintenance_level entity of an oslevel_state should be 'version'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:apache-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#apache" id="httpdtst">
                              <sch:rule context="apache-def:httpd_test/apache-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/apache-def:httpd_object/@id"><sch:value-of select="../@id"/> - the object child element of a httpd_test must reference a httpd_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="apache-def:httpd_test/apache-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/apache-def:httpd_state/@id"><sch:value-of select="../@id"/> - the state child element of a httpd_test must reference a httpd_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:apache-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#apache" id="httpdstepath">
                                                            <sch:rule context="apache-def:httpd_state/apache-def:path">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the path entity of a httpd_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:apache-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#apache" id="httpdstebinaryname">
                                                            <sch:rule context="apache-def:httpd_state/apache-def:binary_name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the binary_name entity of a httpd_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:apache-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#apache" id="httpdsteversion">
                                                            <sch:rule context="apache-def:httpd_state/apache-def:version">
                                                                  <sch:assert test="@datatype='version'"><sch:value-of select="../@id"/> - datatype attribute for the version entity of a httpd_state should be 'version'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:apache-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#apache" id="apachevertst">
                              <sch:rule context="apache-def:version_test/apache-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/apache-def:version_object/@id"><sch:value-of select="../@id"/> - the object child element of a version_test must reference a version_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="apache-def:version_test/apache-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/apache-def:version_state/@id"><sch:value-of select="../@id"/> - the state child element of a version_test must reference a version_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:apache-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#apache" id="apcheversteversion">
                                                            <sch:rule context="apache-def:version_state/apache-def:version">
                                                                  <sch:assert test="not(@datatype) or @datatype='version'"><sch:value-of select="../@id"/> - datatype attribute for the version entity of an version_state should be 'version'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:catos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#catos" id="catoslinetst">
                    <sch:rule context="catos-def:line_test/catos-def:object">
                        <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/catos-def:line_object/@id"><sch:value-of select="../@id"/> - the object child element of a line_test must reference a line_object</sch:assert>
                    </sch:rule>
                    <sch:rule context="catos-def:line_test/catos-def:state">
                        <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/catos-def:line_state/@id"><sch:value-of select="../@id"/> - the state child element of a line_test must reference a line_state</sch:assert>
                    </sch:rule>
                </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:catos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#catos" id="catoslineobjshow_subcommand">
                                                <sch:rule context="catos-def:line_object/catos-def:show_subcommand">
                                                    <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the show_subcommand entity of a line_object should be 'string'</sch:assert>
                                                </sch:rule>
                                            </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:catos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#catos" id="catoslinesteshow_subcommand">
                                        <sch:rule context="catos-def:line_state/catos-def:show_subcommand">
                                            <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the show_subcommand entity of a line_state should be 'string'</sch:assert>
                                        </sch:rule>
                                    </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:catos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#catos" id="catoslinesteconfig_line">
                                        <sch:rule context="catos-def:line_state/catos-def:config_line">
                                            <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the config_line entity of a line_state should be 'string'</sch:assert>
                                        </sch:rule>
                                    </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:catos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#catos" id="catosmoduletst">
                              <sch:rule context="catos-def:module_test/catos-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/catos-def:module_object/@id"><sch:value-of select="../@id"/> - the object child element of a module_test must reference a module_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="catos-def:module_test/catos-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/catos-def:module_state/@id"><sch:value-of select="../@id"/> - the state child element of a module_test must reference a module_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:catos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#catos" id="moduleobjmodule_number">
                                                                        <sch:rule context="catos-def:module_object/catos-def:module_number">
                                                                              <sch:assert test="@datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the module_number entity of a module_object should be 'int'</sch:assert>
                                                                              <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'"><sch:value-of select="../@id"/> - operation attribute for the module_number entity of a module_object should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:catos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#catos" id="catosmodulestemodule_number">
                                                            <sch:rule context="catos-def:module_state/catos-def:module_number">
                                                                  <sch:assert test="@datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the module_number entity of a module_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:catos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#catos" id="catosmodulestetype">
                                                            <sch:rule context="catos-def:module_state/catos-def:type">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the type entity of a module_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:catos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#catos" id="catosmodulestemodel">
                                                            <sch:rule context="catos-def:module_state/catos-def:model">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the model entity of a module_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:catos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#catos" id="catosmodulestesoftware_major_release">
                                                            <sch:rule context="catos-def:module_state/catos-def:software_major_release">
                                                                  <sch:assert test="@datatype='version'"><sch:value-of select="../@id"/> - datatype attribute for the software_major_release entity of a module_state should be 'version'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:catos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#catos" id="catosmodulestesoftware_individual_release">
                                                            <sch:rule context="catos-def:module_state/catos-def:software_individual_release">
                                                                  <sch:assert test="@datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the software_individual_release entity of a module_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:catos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#catos" id="catosmodulestesoftware_version_id">
                                                            <sch:rule context="catos-def:module_state/catos-def:software_version_id">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the software_version_id entity of a module_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:catos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#catos" id="catosmodulestehardware_major_release">
                                                            <sch:rule context="catos-def:module_state/catos-def:hardware_major_release">
                                                                  <sch:assert test="@datatype='version'"><sch:value-of select="../@id"/> - datatype attribute for the hardware_major_release entity of a module_state should be 'version'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:catos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#catos" id="catosmodulestehardware_individual_release">
                                                            <sch:rule context="catos-def:module_state/catos-def:hardware_individual_release">
                                                                  <sch:assert test="@datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the hardware_individual_release entity of a module_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:catos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#catos" id="catosmodulestefirmware_major_release">
                                                            <sch:rule context="catos-def:module_state/catos-def:firmware_major_release">
                                                                  <sch:assert test="@datatype='version'"><sch:value-of select="../@id"/> - datatype attribute for the firmware_major_release entity of a module_state should be 'version'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:catos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#catos" id="catosmodulestefirmware_individual_release">
                                                            <sch:rule context="catos-def:module_state/catos-def:firmware_individual_release">
                                                                  <sch:assert test="@datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the firmware_individual_release entity of a module_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:catos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#catos" id="catosver55stedevice_series">
                                        <sch:rule context="catos-def:version55_state/catos-def:swtich_series">
                                            <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the swtich_series entity of a version55_state should be 'string'</sch:assert>
                                        </sch:rule>
                                    </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:catos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#catos" id="catosver55steimage_name">
                                        <sch:rule context="catos-def:version55_state/catos-def:image_name">
                                            <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the image_name entity of a version55_state should be 'string'</sch:assert>
                                        </sch:rule>
                                    </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:catos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#catos" id="catosver55stecatos_release">
                                        <sch:rule context="catos-def:version55_state/catos-def:catos_release">
                                            <sch:assert test="@datatype='version'"><sch:value-of select="../@id"/> - datatype attribute for the catos_release entity of a version55_state should be 'version'</sch:assert>
                                        </sch:rule>
                                    </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:catos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#catos" id="catosverstedevice_series">
                                                            <sch:rule context="catos-def:version_state/catos-def:swtich_series">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the swtich_series entity of a version_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:catos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#catos" id="catosversteimage_name">
                                                            <sch:rule context="catos-def:version_state/catos-def:image_name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the image_name entity of a version_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:catos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#catos" id="catosverstecatos_major_release">
                                                            <sch:rule context="catos-def:version_state/catos-def:catos_major_release">
                                                                  <sch:assert test="@datatype='version'"><sch:value-of select="../@id"/> - datatype attribute for the catos_major_release entity of a version_state should be 'version'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:catos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#catos" id="catosverstecatos_individual_release">
                                                            <sch:rule context="catos-def:version_state/catos-def:catos_individual_release">
                                                                  <sch:assert test="@datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the catos_individual_release entity of a version_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:catos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#catos" id="catosverstecatos_version_id">
                                                            <sch:rule context="catos-def:version_state/catos-def:catos_version_id">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the catos_version_id entity of a version_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:esx-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#esx" id="esxpatchobjpatch_number">
                                                                        <sch:rule context="esx-def:patch_object/esx-def:patch_number">
                                                                              <sch:assert test="@datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the patch_number entity of a patch_object should be 'int'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:esx-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#esx" id="esxpatchstepatch_number">
                                                            <sch:rule context="esx-def:patch_state/esx-def:patch_number">
                                                                  <sch:assert test="@datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the patch_number entity of a patch_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:esx-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#esx" id="esxpatchstestatus">
                                                            <sch:rule context="esx-def:patch_state/esx-def:status">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the status entity of a patch_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:esx-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#esx" id="versionsterelease">
                                                            <sch:rule context="esx-def:version_state/esx-def:release">
                                                                  <sch:assert test="@datatype='version'"><sch:value-of select="../@id"/> - datatype attribute for the release entity of an version_state should be 'version'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:esx-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#esx" id="versionstebuild">
                                                            <sch:rule context="esx-def:version_state/esx-def:build">
                                                                  <sch:assert test="@datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the build entity of an version_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:freebsd-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#freebsd" id="portinfotst">
                              <sch:rule context="freebsd-def:portinfo_test/freebsd-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/freebsd-def:portinfo_object/@id"><sch:value-of select="../@id"/> - the object child element of a portinfo_test must reference an portinfo_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="freebsd-def:portinfo_test/freebsd-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/freebsd-def:portinfo_state/@id"><sch:value-of select="../@id"/> - the state child element of a portinfo_test must reference an portinfo_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:freebsd-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#freebsd" id="portinfoobjpkginst">
                                                                        <sch:rule context="freebsd-def:portinfo_object/freebsd-def:pkginst">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the pkginst entity of a portinfo_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:freebsd-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#freebsd" id="portinfostepkginst">
                                                            <sch:rule context="freebsd-def:portinfo_state/freebsd-def:pkginst">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the pkginst entity of a portinfo_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:freebsd-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#freebsd" id="portinfostename">
                                                            <sch:rule context="freebsd-def:portinfo_state/freebsd-def:name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the name entity of a portinfo_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:freebsd-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#freebsd" id="portinfostecategory">
                                                            <sch:rule context="freebsd-def:portinfo_state/freebsd-def:category">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the category entity of a portinfo_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:freebsd-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#freebsd" id="portinfosteversion">
                                                            <sch:rule context="freebsd-def:portinfo_state/freebsd-def:version">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the version entity of a portinfo_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:freebsd-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#freebsd" id="portinfostevendor">
                                                            <sch:rule context="freebsd-def:portinfo_state/freebsd-def:vendor">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the vendor entity of a portinfo_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:freebsd-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#freebsd" id="portinfostedescription">
                                                            <sch:rule context="freebsd-def:portinfo_state/freebsd-def:description">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the description entity of a portinfo_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="gcobjparameter_name">
                                                                        <sch:rule context="hpux-def:getconf_object/hpux-def:parameter_name">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the parameter_name entity of a getconf_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="gcobjpathname">
                                                                        <sch:rule context="hpux-def:getconf_object/hpux-def:pathname">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the pathname entity of a getconf_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="gcsteparameter_name">
                                                            <sch:rule context="hpux-def:getconf_state/hpux-def:parameter_name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the parameter_name entity of a getconf_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="gcstepathname">
                                                            <sch:rule context="hpux-def:getconf_state/hpux-def:pathname">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the pathname entity of a getconf_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="gcsteoutput">
                                                            <sch:rule context="hpux-def:getconf_state/hpux-def:output">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the output entity of a getconf_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="patch53objswtype">
                                                                        <sch:rule context="hpux-def:patch53_object/hpux-def:swtype">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the swtype entity of a patch53_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="patch53objarea_patched">
                                                                        <sch:rule context="hpux-def:patch_object/hpux-def:area_patched">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the area_patched entity of a patch53_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="patch53objpatch_base">
                                                                        <sch:rule context="hpux-def:patch_object/hpux-def:patch_base">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the patch_base entity of a patch53_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="patch53steswtype">
                                                            <sch:rule context="hpux-def:patch53_state/hpux-def:swtype">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the swtype entity of a patch53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="patch53stearea_patched">
                                                            <sch:rule context="hpux-def:patch53_state/hpux-def:area_patched">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the area_patched entity of a patch53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="patch53stepatch_base">
                                                            <sch:rule context="hpux-def:patch53_state/hpux-def:patch_base">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the patch_base entity of a patch53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="patchobjpatch_name">
                                                                        <sch:rule context="hpux-def:patch_object/hpux-def:patch_name">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the patch_name entity of a patch_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="patchstepatch_name">
                                                            <sch:rule context="hpux-def:patch_state/hpux-def:patch_name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the patch_name entity of a patch_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="patchsteswtype">
                                                            <sch:rule context="hpux-def:patch_state/hpux-def:swtype">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the swtype entity of a patch_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="patchstearea_patched">
                                                            <sch:rule context="hpux-def:patch_state/hpux-def:area_patched">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the area_patched entity of a patch_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="patchstepatch_base">
                                                            <sch:rule context="hpux-def:patch_state/hpux-def:patch_base">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the patch_base entity of a patch_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="swlistobjswlist">
                                                                        <sch:rule context="hpux-def:swlist_object/hpux-def:swlist">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the swlist entity of a swlist_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="swliststeswlist">
                                                            <sch:rule context="hpux-def:swlist_state/hpux-def:swlist">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the swlist entity of a swlist_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="swliststebundle">
                                                            <sch:rule context="hpux-def:swlist_state/hpux-def:bundle">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the bundle entity of a swlist_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="swliststefileset">
                                                            <sch:rule context="hpux-def:swlist_state/hpux-def:fileset">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the fileset entity of a swlist_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="swliststeversion">
                                                            <sch:rule context="hpux-def:swlist_state/hpux-def:version">
                                                                  <sch:assert test="@datatype='fileset_revision'"><sch:value-of select="../@id"/> - datatype attribute for the version entity of a swlist_state should be 'fileset_revision'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="swliststetitle">
                                                            <sch:rule context="hpux-def:swlist_state/hpux-def:title">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the title entity of a swlist_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="swliststevendor">
                                                            <sch:rule context="hpux-def:swlist_state/hpux-def:vendor">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the vendor entity of a swlist_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="trustobjusername">
                                                                        <sch:rule context="hpux-def:trusted_object/hpux-def:username">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the username entity of a trusted_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="truststeusername">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:username">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the username entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="truststeuid">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:uid">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the uid entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="truststepassword">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:password">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the password entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="truststeaccount_owner">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:account_owner">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the account_owner entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="truststeboot_auth">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:boot_auth">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the boot_auth entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="truststeaudit_id">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:audit_id">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the audit_id entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="truststeaudit_flag">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:audit_flag">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the audit_flag entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="truststepw_change_min">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:pw_change_min">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the pw_change_min entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="truststepw_max_size">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:pw_max_size">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the pw_max_size entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="truststepw_expiration">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:pw_expiration">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the pw_expiration entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="truststepw_life">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:pw_life">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the pw_life entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="truststepw_change_s">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:pw_change_s">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the pw_change_s entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="truststepw_change_u">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:pw_change_u">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the pw_change_u entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="truststeacct_expire">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:acct_expire">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the acct_expire entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="truststemax_llogin">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:max_llogin">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the max_llogin entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="truststeexp_warning">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:exp_warning">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the exp_warning entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="truststeusr_chg_pw">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:usr_chg_pw">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the usr_chg_pw entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="truststegen_pw">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:gen_pw">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the gen_pw entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="truststepw_restrict">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:pw_restrict">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the pw_restrict entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="truststepw_null">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:pw_null">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the pw_null entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="truststepw_gen_char">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:pw_gen_char">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the pw_gen_char entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="truststepw_gen_let">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:pw_gen_let">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the pw_gen_let entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="truststelogin_time">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:login_time">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the login_time entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="truststepw_changer">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:pw_changer">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the pw_changer entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="truststelogin_time_s">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:login_time_s">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the login_time_s entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="truststelogin_time_u">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:login_time_u">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the login_time_u entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="truststelogin_tty_s">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:login_tty_s">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the login_tty_s entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="truststelogin_tty_u">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:login_tty_u">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the login_tty_u entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="truststenum_u_logins">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:num_u_logins">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the num_u_logins entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="truststemax_u_logins">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:max_u_logins">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the max_u_logins entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:hpux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#hpux" id="truststelock_flag">
                                                            <sch:rule context="hpux-def:trusted_state/hpux-def:lock_flag">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the lock_flag entity of a trusted_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="famtst">
                              <sch:rule context="ind-def:family_test/ind-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/ind-def:family_object/@id"><sch:value-of select="../@id"/> - the object child element of a family_test must reference a family_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ind-def:family_test/ind-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/ind-def:family_state/@id"><sch:value-of select="../@id"/> - the state child element of a family_test must reference a family_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="famstefamily">
                                                            <sch:rule context="ind-def:family_state/ind-def:family">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the family entity of a family_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="md5tst">
                              <sch:rule context="ind-def:filemd5_test/ind-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/ind-def:filemd5_object/@id"><sch:value-of select="../@id"/> - the object child element of a filemd5_test must reference a filemd5_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ind-def:filemd5_test/ind-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/ind-def:filemd5_state/@id"><sch:value-of select="../@id"/> - the state child element of a filemd5_test must reference a filemd5_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="md5objpath">
                                                                        <sch:rule context="ind-def:filemd5_object/ind-def:path">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the path entity of a filemd5_object should be 'string'</sch:assert>
                                                                       </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="md5objfilename">
                                                                        <sch:rule context="ind-def:filemd5_object/ind-def:filename">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the filename entity of a filemd5_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="md5stepath">
                                                            <sch:rule context="ind-def:filemd5_state/ind-def:path">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the path entity of a filemd5_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="md5stefilename">
                                                            <sch:rule context="ind-def:filemd5_state/ind-def:filename">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the filename entity of a filemd5_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="md5stemd5">
                                                            <sch:rule context="ind-def:filemd5_state/ind-def:md5">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the md5 entity of a filemd5_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="hashtst">
                              <sch:rule context="ind-def:filehash_test/ind-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/ind-def:filehash_object/@id"><sch:value-of select="../@id"/> - the object child element of a filehash_test must reference a filesha1_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ind-def:filehash_test/ind-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/ind-def:filehash_state/@id"><sch:value-of select="../@id"/> - the state child element of a filehash_test must reference a filesha1_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="hashobjpath">
                                                                        <sch:rule context="ind-def:filehash_object/ind-def:path">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the path entity of a filehash_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="hashobjfilename">
                                                                        <sch:rule context="ind-def:filehash_object/ind-def:filename">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the filename entity of a filehash_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="hashstepath">
                                                            <sch:rule context="ind-def:filehash_state/ind-def:path">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the path entity of a filehash_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="hashstefilename">
                                                            <sch:rule context="ind-def:filehash_state/ind-def:filename">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the filename entity of a filehash_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="hashstemd5">
                                                            <sch:rule context="ind-def:filehash_state/ind-def:md5">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the md5 entity of a filehash_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="hashstesha1">
                                                            <sch:rule context="ind-def:filehash_state/ind-def:sha1">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the sha1 entity of a filehash_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="envtst">
                              <sch:rule context="ind-def:environmentvariable_test/ind-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/ind-def:environmentvariable_object/@id"><sch:value-of select="../@id"/> - the object child element of an environmentvariable_test must reference a environmentvariable_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ind-def:environmentvariable_test/ind-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/ind-def:environmentvariable_state/@id"><sch:value-of select="../@id"/> - the state child element of an environmentvariable_test must reference a environmentvariable_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="envobjname">
                                                                        <sch:rule context="ind-def:environmentvariable_object/ind-def:name">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the name entity of an environmentvariable_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="envstename">
                                                            <sch:rule context="ind-def:environmentvariable_state/ind-def:name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the name entity of an environmentvariable_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="envstevalue">
                                                            <sch:rule context="ind-def:environmentvariable_state/ind-def:value">
                                                                  <sch:assert test="(@datatype='int' and (floor(.) = number(.))) or not(@datatype='int') or not(node())"><sch:value-of select="../@id"/> - The datatype has been set to 'int' but the value is not an integer.</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="sqltst">
                              <sch:rule context="ind-def:sql_test/ind-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/ind-def:sql_object/@id"><sch:value-of select="../@id"/> - the object child element of a sql_test must reference a sql_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ind-def:sql_test/ind-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/ind-def:sql_state/@id"><sch:value-of select="../@id"/> - the state child element of a sql_test must reference a sql_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="sqlobjdengine">
                                                                        <sch:rule context="ind-def:sql_object/ind-def:engine">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the engine entity of an sql_object should be 'string'</sch:assert>
                                                                            <sch:assert test="not(@operation) or @operation='equals'"><sch:value-of select="../@id"/> - operation attribute for the engine entity of an sql_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="sqlobjversion">
                                                                        <sch:rule context="ind-def:sql_object/ind-def:version">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the version entity of an sql_object should be 'string'</sch:assert>
                                                                            <sch:assert test="not(@operation) or @operation='equals'"><sch:value-of select="../@id"/> - operation attribute for the version entity of an sql_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="sqlobjconnection_string">
                                                                        <sch:rule context="ind-def:sql_object/ind-def:connection_string">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the connection_string entity of an sql_object should be 'string'</sch:assert>
                                                                            <sch:assert test="not(@operation) or @operation='equals'"><sch:value-of select="../@id"/> - operation attribute for the connection_string entity of an sql_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="sqlobjsql">
                                                                        <sch:rule context="ind-def:sql_object/ind-def:sql">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the sql entity of a sql_object should be 'string'</sch:assert>
                                                                            <sch:assert test="not(@operation) or @operation='equals'"><sch:value-of select="../@id"/> - operation attribute for the sql entity of an sql_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="sqlsteengine">
                                                            <sch:rule context="ind-def:sql_state/ind-def:engine">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the engine entity of an sql_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="sqlsteversion">
                                                            <sch:rule context="ind-def:sql_state/ind-def:version">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the version entity of an sql_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="sqlsteconnection_string">
                                                            <sch:rule context="ind-def:sql_state/ind-def:connection_string">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the connection_string entity of an sql_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="sqlstesql">
                                                            <sch:rule context="ind-def:sql_state/ind-def:sql">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the sql entity of a sql_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="sqlsteresult">
                                                            <sch:rule context="ind-def:sql_state/ind-def:result">
                                                                  <sch:assert test="(@datatype='int' and (floor(.) = number(.))) or not(@datatype='int') or not(node())"><sch:value-of select="../@id"/> - The datatype has been set to 'int' but the value is not an integer.</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="txt54tst">
                              <sch:rule context="ind-def:textfilecontent54_test/ind-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/ind-def:textfilecontent54_object/@id"><sch:value-of select="../@id"/> - the object child element of a textfilecontent54_test must reference a textfilecontent54_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ind-def:textfilecontent54_test/ind-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/ind-def:textfilecontent54_state/@id"><sch:value-of select="../@id"/> - the state child element of a textfilecontent54_test must reference a textfilecontent54_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="txt54objpath">
                                                                        <sch:rule context="ind-def:textfilecontent54_object/ind-def:path">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the path entity of a textfilecontent54_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="txt54objfilename">
                                                                        <sch:rule context="ind-def:textfilecontent54_object/ind-def:filename">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the filename entity of a textfilecontent54_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="txt54objpattern">
                                                                        <sch:rule context="ind-def:textfilecontent54_object/ind-def:pattern">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the pattern entity of a textfilecontent54_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="txt54objinstance">
                                                                        <sch:rule context="ind-def:textfilecontent54_object/ind-def:instance">
                                                                              <sch:assert test="@datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the instance entity of a textfilecontent54_object should be 'int'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="txt54stepath">
                                                            <sch:rule context="ind-def:textfilecontent54_state/ind-def:path">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the path entity of a textfilecontent_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="txt54stefilename">
                                                            <sch:rule context="ind-def:textfilecontent54_state/ind-def:filename">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the filename entity of a textfilecontent54_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="txt54stepattern">
                                                            <sch:rule context="ind-def:textfilecontent54_state/ind-def:pattern">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the pattern entity of a textfilecontent54_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="txt54steinstance">
                                                            <sch:rule context="ind-def:textfilecontent54_state/ind-def:instance">
                                                                  <sch:assert test="@datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the instance entity of a textfilecontent54_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="txt54stesubexpression">
                                                            <sch:rule context="ind-def:textfilecontent54_state/ind-def:subexpression">
                                                                  <sch:assert test="(@datatype='int' and (floor(.) = number(.))) or not(@datatype='int') or not(node())"><sch:value-of select="../@id"/> - The datatype has been set to 'int' but the value is not an integer.</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="txttst">
                              <sch:rule context="ind-def:textfilecontent_test/ind-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/ind-def:textfilecontent_object/@id"><sch:value-of select="../@id"/> - the object child element of a textfilecontent_test must reference a textfilecontent_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ind-def:textfilecontent_test/ind-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/ind-def:textfilecontent_state/@id"><sch:value-of select="../@id"/> - the state child element of a textfilecontent_test must reference a textfilecontent_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="txtobjpath">
                                                                        <sch:rule context="ind-def:textfilecontent_object/ind-def:path">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the path entity of a textfilecontent_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="txtobjfilename">
                                                                        <sch:rule context="ind-def:textfilecontent_object/ind-def:filename">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the filename entity of a textfilecontent_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="txtobjline">
                                                                        <sch:rule context="ind-def:textfilecontent_object/ind-def:line">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the line entity of a textfilecontent_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="txtstepath">
                                                            <sch:rule context="ind-def:textfilecontent_state/ind-def:path">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the path entity of a textfilecontent_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="txtstefilename">
                                                            <sch:rule context="ind-def:textfilecontent_state/ind-def:filename">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the filename entity of a textfilecontent_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="txtsteline">
                                                            <sch:rule context="ind-def:textfilecontent_state/ind-def:line">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the line entity of a textfilecontent_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="txtstesubexpression">
                                                            <sch:rule context="ind-def:textfilecontent_state/ind-def:subexpression">
                                                                   <sch:assert test="(@datatype='int' and (floor(.) = number(.))) or not(@datatype='int') or not(node())"><sch:value-of select="../@id"/> - The datatype has been set to 'int' but the value is not an integer.</sch:assert>
                                                                  <!-- we can use the xpath 2.0 function matches() to define assertions for other datatypes -->
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="vattst">
                              <sch:rule context="ind-def:variable_test/ind-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/ind-def:variable_object/@id"><sch:value-of select="../@id"/> - the object child element of a variable_test must reference a variable_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ind-def:variable_test/ind-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/ind-def:variable_state/@id"><sch:value-of select="../@id"/> - the state child element of a variable_test must reference a variable_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="varobjvar_ref">
                                                                        <sch:rule context="ind-def:variable_object/ind-def:var_ref">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the var_ref entity of a variable_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="varstevar_ref">
                                                            <sch:rule context="ind-def:variable_state/ind-def:var_ref">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the var_ref entity of a variable_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="varstevalue">
                                                            <sch:rule context="ind-def:variable_state/ind-def:value">
                                                                  <sch:assert test="(@datatype='int' and (floor(.) = number(.))) or not(@datatype='int') or not(node())"><sch:value-of select="../@id"/> - The datatype has been set to 'int' but the value is not an integer.</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="xmltst">
                              <sch:rule context="ind-def:xmlfilecontent_test/ind-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/ind-def:xmlfilecontent_object/@id"><sch:value-of select="../@id"/> - the object child element of a xmlfilecontent_test must reference a xmlfilecontent_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ind-def:xmlfilecontent_test/ind-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/ind-def:xmlfilecontent_state/@id"><sch:value-of select="../@id"/> - the state child element of a xmlfilecontent_test must reference a xmlfilecontent_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="xmlobjpath">
                                                                        <sch:rule context="ind-def:xmlfilecontent_object/ind-def:path">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the path entity of a xmlfilecontent_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="xmlobjfilename">
                                                                        <sch:rule context="ind-def:xmlfilecontent_object/ind-def:filename">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the filename entity of a xmlfilecontent_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="xmlobjxpath">
                                                                        <sch:rule context="ind-def:xmlfilecontent_object/ind-def:xpath">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the xpath entity of a xmlfilecontent_object should be 'string'</sch:assert>
                                                                            <sch:assert test="not(@operation) or @operation='equals'"><sch:value-of select="../@id"/> - operation attribute for the xpath entity of a xmlfilecontent_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="xmlstepath">
                                                            <sch:rule context="ind-def:xmlfilecontent_state/ind-def:path">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the path entity of a xmlfilecontent_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="xmlstefilename">
                                                            <sch:rule context="ind-def:xmlfilecontent_state/ind-def:filename">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the filename entity of a xmlfilecontent_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="xmlstexpath">
                                                            <sch:rule context="ind-def:xmlfilecontent_state/ind-def:xpath">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the xpath entity of a xmlfilecontent_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ind-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#independent" id="xmlstevalue_of">
                                                            <sch:rule context="ind-def:xmlfilecontent_state/ind-def:value_of">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the value_of entity of a xmlfilecontent_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ios-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios" id="globaltst">
                              <sch:rule context="ios-def:global_test/ios-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/ios-def:global_object/@id"><sch:value-of select="../@id"/> - the object child element of a global_test must reference a global_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ios-def:global_test/ios-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/ios-def:global_state/@id"><sch:value-of select="../@id"/> - the state child element of a global_test must reference a global_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ios-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios" id="globalobjglobal_command">
                                                                        <sch:rule context="ios-def:global_object/ios-def:global_command">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the global_command entity of a global_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ios-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios" id="globalsteglobal_command">
                                                            <sch:rule context="ios-def:global_state/ios-def:global_command">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the global_command entity of a global_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ios-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios" id="iosinterfacetst">
                              <sch:rule context="ios-def:interface_test/ios-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/ios-def:interface_object/@id"><sch:value-of select="../@id"/> - the object child element of an interface_test must reference an interface_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ios-def:interface_test/ios-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/ios-def:interface_state/@id"><sch:value-of select="../@id"/> - the state child element of an interface_test must reference an interface_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ios-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios" id="iosinterfaceobjname">
                                                                        <sch:rule context="ios-def:interface_object/ios-def:name">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the name entity of an interface_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ios-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios" id="iosinterfacestename">
                                                            <sch:rule context="ios-def:interface_state/ios-def:name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the name entity of an interface_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ios-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios" id="iosinterfacesteip_directed_broadcast_command">
                                                            <sch:rule context="ios-def:interface_state/ios-def:ip_directed_broadcast_command">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the ip_directed_broadcast_command entity of an interface_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ios-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios" id="iosinterfacesteno_ip_directed_broadcast_command">
                                                            <sch:rule context="ios-def:interface_state/ios-def:no_ip_directed_broadcast_command">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the no_ip_directed_broadcast_command entity of an interface_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ios-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios" id="iosinterfacesteproxy_arp_command">
                                                            <sch:rule context="ios-def:interface_state/ios-def:proxy_arp_command">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the proxy_arp_command entity of an interface_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ios-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios" id="iosinterfacesteshutdown_command">
                                                            <sch:rule context="ios-def:interface_state/ios-def:shutdown_command">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the shutdown_command entity of an interface_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ios-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios" id="ioslinetst">
                              <sch:rule context="ios-def:line_test/ios-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/ios-def:line_object/@id"><sch:value-of select="../@id"/> - the object child element of a line_test must reference a line_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ios-def:line_test/ios-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/ios-def:line_state/@id"><sch:value-of select="../@id"/> - the state child element of a line_test must reference a line_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ios-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios" id="ioslineobjshow_subcommand">
                                                                        <sch:rule context="ios-def:line_object/ios-def:show_subcommand">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the show_subcommand entity of a line_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ios-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios" id="ioslinesteshow_subcommand">
                                                            <sch:rule context="ios-def:line_state/ios-def:show_subcommand">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the show_subcommand entity of a line_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ios-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios" id="ioslinesteconfig_line">
                                                            <sch:rule context="ios-def:line_state/ios-def:config_line">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the config_line entity of a line_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ios-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios" id="snmptst">
                              <sch:rule context="ios-def:snmp_test/ios-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/ios-def:snmp_object/@id"><sch:value-of select="../@id"/> - the object child element of a snmp_test must reference a snmp_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ios-def:snmp_test/ios-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/ios-def:snmp_state/@id"><sch:value-of select="../@id"/> - the state child element of a snmp_test must reference a snmp_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ios-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios" id="snmpsteaccess_list">
                                                            <sch:rule context="ios-def:snmp_state/ios-def:access_list">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the access_list entity of a snmp_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ios-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios" id="snmpstecommunity_name">
                                                            <sch:rule context="ios-def:snmp_state/ios-def:community_name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the community_name entity of a snmp_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ios-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios" id="tclshtst">
                              <sch:rule context="ios-def:tclsh_test/ios-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/ios-def:tclsh_object/@id"><sch:value-of select="../@id"/> - the object child element of a tclsh_test must reference a tclsh_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ios-def:tclsh_test/ios-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/ios-def:tclsh_state/@id"><sch:value-of select="../@id"/> - the state child element of a tclsh_test must reference a tclsh_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ios-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios" id="tclshsteavailable">
                                                            <sch:rule context="ios-def:tclsh_state/ios-def:available">
                                                                  <sch:assert test="not(@datatype) or @datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the available entity of a tclsh_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ios-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios" id="iosver55tst">
                              <sch:rule context="ios-def:version55_test/ios-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/ios-def:version55_object/@id"><sch:value-of select="../@id"/> - the object child element of a version55_test must reference a version_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="ios-def:version55_test/ios-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/ios-def:version55_state/@id"><sch:value-of select="../@id"/> - the state child element of a version55_test must reference a version_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ios-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios" id="iosver55stemajorversion">
                                                  <sch:rule context="ios-def:version55_state/ios-def:major_version">
                                                      <sch:assert test="@datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the major_version entity of a version55_state should be 'int'</sch:assert>
                                                  </sch:rule>
                                              </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ios-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios" id="iosver55steminorversion">
                                                  <sch:rule context="ios-def:version55_state/ios-def:minor_version">
                                                      <sch:assert test="@datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the minor_version entity of a version55_state should be 'int'</sch:assert>
                                                  </sch:rule>
                                              </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ios-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios" id="iosver55sterelease">
                                                  <sch:rule context="ios-def:version55_state/ios-def:release">
                                                      <sch:assert test="@datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the release entity of a version55_state should be 'int'</sch:assert>
                                                  </sch:rule>
                                              </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ios-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios" id="iosver55stetrain_identifier">
                                                  <sch:rule context="ios-def:version_state/ios-def:train_identifier">
                                                      <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the train_identifier entity of a version_state should be 'string'</sch:assert>
                                                  </sch:rule>
                                              </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ios-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios" id="iosver55sterebuild">
                                                  <sch:rule context="ios-def:version55_state/ios-def:rebuild">
                                                      <sch:assert test="@datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the rebuild entity of a version55_state should be 'int'</sch:assert>
                                                  </sch:rule>
                                              </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ios-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios" id="iosver55stesubrebuild">
                                                  <sch:rule context="ios-def:version55_state/ios-def:subrebuild">
                                                      <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the subrebuild entity of a version55_state should be 'string'</sch:assert>
                                                  </sch:rule>
                                              </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ios-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios" id="iosver55stemainlinerebuild">
                                                  <sch:rule context="ios-def:version55_state/ios-def:mainline_rebuild">
                                                      <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the mainline_rebuild entity of a version55_state should be 'string'</sch:assert>
                                                  </sch:rule>
                                              </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ios-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios" id="iosver55steversionstring">
                                                  <sch:rule context="ios-def:version55_state/ios-def:version_string">
                                                      <sch:assert test="not(@datatype) or @datatype='ios_version'"><sch:value-of select="../@id"/> - datatype attribute for the version_string entity of a version55_state should be 'ios_version'</sch:assert>
                                                  </sch:rule>
                                              </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ios-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios" id="iosvertst">
                    <sch:rule context="ios-def:version_test/ios-def:object">
                        <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/ios-def:version_object/@id"><sch:value-of select="../@id"/> - the object child element of a version_test must reference a version_object</sch:assert>
                    </sch:rule>
                    <sch:rule context="ios-def:version_test/ios-def:state">
                        <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/ios-def:version_state/@id"><sch:value-of select="../@id"/> - the state child element of a version_test must reference a version_state</sch:assert>
                    </sch:rule>
                </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ios-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios" id="iosverstemajor_release">
                                        <sch:rule context="ios-def:version_state/ios-def:major_release">
                                            <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the major_release entity of a version_state should be 'string'</sch:assert>
                                        </sch:rule>
                                    </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ios-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios" id="iosverstetrain_number">
                                        <sch:rule context="ios-def:version_state/ios-def:train_number">
                                            <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the train_number entity of a version_state should be 'string'</sch:assert>
                                        </sch:rule>
                                    </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ios-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios" id="iosverstetrain_identifier">
                                        <sch:rule context="ios-def:version_state/ios-def:train_identifier">
                                            <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the train_identifier entity of a version_state should be 'string'</sch:assert>
                                        </sch:rule>
                                    </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:ios-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#ios" id="iosversteversion_string">
                                        <sch:rule context="ios-def:version_state/ios-def:version_string">
                                            <sch:assert test="not(@datatype) or @datatype='ios_version'"><sch:value-of select="../@id"/> - datatype attribute for the version_string entity of a version_state should be 'ios_version'</sch:assert>
                                        </sch:rule>
                                    </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:linux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" id="dpkgobjname">
                                                            <sch:rule context="linux-def:dpkginfo_object/linux-def:name">
                                                                 <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the name entity of a dpkginfo_object should be 'string'</sch:assert>
                                                                 <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'"><sch:value-of select="../@id"/> - operation attribute for the name entity of a dpkginfo_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
                                                            </sch:rule>
                                                       </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:linux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" id="dpkgstename">
                                                  <sch:rule context="linux-def:dpkginfo_state/linux-def:name">
                                                       <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the name entity of a dpkginfo_state should be 'string'</sch:assert>
                                                       <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'"><sch:value-of select="../@id"/> - operation attribute for the name entity of a dpkginfo_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:linux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" id="dpkgstearch">
                                                  <sch:rule context="linux-def:dpkginfo_state/linux-def:arch">
                                                       <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the arch entity of a dpkginfo_state should be 'string'</sch:assert>
                                                       <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'"><sch:value-of select="../@id"/> - operation attribute for the arch entity of a dpkginfo_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:linux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" id="dpkgsteepoch">
                                                  <sch:rule context="linux-def:dpkginfo_state/linux-def:epoch">
                                                       <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the epoch entity of a dpkginfo_state should be 'string'</sch:assert>
                                                       <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal' or 'pattern match'"><sch:value-of select="../@id"/> - operation attribute for the epoch entity of a dpkginfo_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', 'less than or equal', or 'pattern match'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:linux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" id="dpkgsterelease">
                                                  <sch:rule context="linux-def:dpkginfo_state/linux-def:release">
                                                       <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the release entity of a dpkginfo_state should be 'string'</sch:assert>
                                                       <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal' or 'pattern match'"><sch:value-of select="../@id"/> - operation attribute for the release entity of a dpkginfo_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', 'less than or equal', or 'pattern match'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:linux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" id="dpkgsteversion">
                                                  <sch:rule context="linux-def:dpkginfo_state/linux-def:version">
                                                       <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the version entity of a dpkginfo_state should be 'string'</sch:assert>
                                                       <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal' or 'pattern match'"><sch:value-of select="../@id"/> - operation attribute for the version entity of a dpkginfo_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', 'less than or equal', or 'pattern match'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:linux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" id="dpkgsteevr">
                                                  <sch:rule context="linux-def:dpkginfo_state/linux-def:evr">
                                                       <sch:assert test="not(@datatype) or @datatype='evr_string'"><sch:value-of select="../@id"/> - datatype attribute for the evr entity of a dpkginfo_state should be 'evr_string'</sch:assert>
                                                       <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal' or 'pattern match'"><sch:value-of select="../@id"/> - operation attribute for the evr entity of a dpkginfo_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', 'less than or equal', or 'pattern match'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:linux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" id="ilsobjprotocol">
                                                            <sch:rule context="linux-def:inetlisteningservers_object/linux-def:protocol">
                                                                 <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the protocol entity of an inetlisteningservers_object should be 'string'</sch:assert>
                                                                 <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'"><sch:value-of select="../@id"/> - operation attribute for the protocol entity of an inetlisteningservers_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
                                                            </sch:rule>
                                                       </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:linux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" id="ilsobjlocal_address">
                                                            <sch:rule context="linux-def:inetlisteningservers_object/linux-def:local_address">
                                                                 <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the local_address entity of an inetlisteningservers_object should be 'string'</sch:assert>
                                                                 <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'"><sch:value-of select="../@id"/> - operation attribute for the local_address entity of an inetlisteningservers_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
                                                            </sch:rule>
                                                       </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:linux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" id="ilsobjlocal_port">
                                                            <sch:rule context="linux-def:inetlisteningservers_object/linux-def:local_port">
                                                                 <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the local_port entity of an inetlisteningservers_object should be 'string'</sch:assert>
                                                                 <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'"><sch:value-of select="../@id"/> - operation attribute for the local_port entity of an inetlisteningservers_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
                                                            </sch:rule>
                                                       </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:linux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" id="ilssteprotocol">
                                                  <sch:rule context="linux-def:inetlisteningservers_state/linux-def:protocol">
                                                       <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the protocol entity of an inetlisteningservers_state should be 'string'</sch:assert>
                                                       <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'"><sch:value-of select="../@id"/> - operation attribute for the protocol entity of an inetlisteningservers_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:linux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" id="ilsstelocal_address">
                                                  <sch:rule context="linux-def:inetlisteningservers_state/linux-def:local_address">
                                                       <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the local_address entity of an inetlisteningservers_state should be 'string'</sch:assert>
                                                       <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'"><sch:value-of select="../@id"/> - operation attribute for the local_address entity of an inetlisteningservers_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:linux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" id="ilsstelocal_port">
                                                  <sch:rule context="linux-def:inetlisteningservers_state/linux-def:local_port">
                                                       <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the local_port entity of an inetlisteningservers_state should be 'string'</sch:assert>
                                                       <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'"><sch:value-of select="../@id"/> - operation attribute for the local_port entity of an inetlisteningservers_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:linux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" id="ilsstelocal_full_address">
                                                  <sch:rule context="linux-def:inetlisteningservers_state/linux-def:local_full_address">
                                                       <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the local_full_address entity of an inetlisteningservers_state should be 'string'</sch:assert>
                                                       <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'"><sch:value-of select="../@id"/> - operation attribute for the local_full_address entity of an inetlisteningservers_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:linux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" id="ilssteprogram_name">
                                                  <sch:rule context="linux-def:inetlisteningservers_state/linux-def:program_name">
                                                       <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the program_name entity of an inetlisteningservers_state should be 'string'</sch:assert>
                                                       <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'"><sch:value-of select="../@id"/> - operation attribute for the program_name entity of an inetlisteningservers_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:linux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" id="ilssteforeign_address">
                                                  <sch:rule context="linux-def:inetlisteningservers_state/linux-def:foreign_address">
                                                       <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the foreign_address entity of an inetlisteningservers_state should be 'string'</sch:assert>
                                                       <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'"><sch:value-of select="../@id"/> - operation attribute for the foreign_address entity of an inetlisteningservers_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:linux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" id="ilssteforeign_port">
                                                  <sch:rule context="linux-def:inetlisteningservers_state/linux-def:foreign_port">
                                                       <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the foreign_port entity of an inetlisteningservers_state should be 'string'</sch:assert>
                                                       <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'"><sch:value-of select="../@id"/> - operation attribute for the foreign_port entity of an inetlisteningservers_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:linux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" id="ilssteforeign_full_address">
                                                  <sch:rule context="linux-def:inetlisteningservers_state/linux-def:foreign_full_address">
                                                       <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the foreign_full_address entity of an inetlisteningservers_state should be 'string'</sch:assert>
                                                       <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'"><sch:value-of select="../@id"/> - operation attribute for the foreign_full_address entity of an inetlisteningservers_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:linux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" id="ilsstepid">
                                                  <sch:rule context="linux-def:inetlisteningservers_state/linux-def:pid">
                                                       <sch:assert test="not(@datatype) or @datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the pid entity of an inetlisteningservers_state should be 'int'</sch:assert>
                                                       <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal'"><sch:value-of select="../@id"/> - operation attribute for the pid entity of an inetlisteningservers_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', or 'less than or equal'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:linux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" id="ilssteuser_id">
                                                  <sch:rule context="linux-def:inetlisteningservers_state/linux-def:user_id">
                                                       <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the user_id entity of an inetlisteningservers_state should be 'string'</sch:assert>
                                                       <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'"><sch:value-of select="../@id"/> - operation attribute for the user_id entity of an inetlisteningservers_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:linux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" id="rpmobjname">
                                                            <sch:rule context="linux-def:rpminfo_object/linux-def:name">
                                                                 <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the name entity of a rpminfo_object should be 'string'</sch:assert>
                                                                 <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'"><sch:value-of select="../@id"/> - operation attribute for the name entity of a rpminfo_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
                                                            </sch:rule>
                                                       </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:linux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" id="rpmstename">
                                                  <sch:rule context="linux-def:rpminfo_state/linux-def:name">
                                                       <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the name entity of a rpminfo_state should be 'string'</sch:assert>
                                                       <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'"><sch:value-of select="../@id"/> - operation attribute for the name entity of a rpminfo_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:linux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" id="rpmstearch">
                                                  <sch:rule context="linux-def:rpminfo_state/linux-def:arch">
                                                       <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the arch entity of a rpminfo_state should be 'string'</sch:assert>
                                                       <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'"><sch:value-of select="../@id"/> - operation attribute for the arch entity of a rpminfo_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:linux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" id="rpmsteepoch">
                                                  <sch:rule context="linux-def:rpminfo_state/linux-def:epoch">
                                                       <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the epoch entity of a rpminfo_state should be 'string'</sch:assert>
                                                       <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal' or @operation='pattern match'"><sch:value-of select="../@id"/> - operation attribute for the epoch entity of a rpminfo_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', 'less than or equal', or 'pattern match'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:linux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" id="rpmsterelease">
                                                  <sch:rule context="linux-def:rpminfo_state/linux-def:release">
                                                       <sch:assert test="not(@datatype) or @datatype='string' or @datatype='version'"><sch:value-of select="../@id"/> - datatype attribute for the release entity of a rpminfo_state should be 'string'</sch:assert>
                                                       <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal' or @operation='pattern match'"><sch:value-of select="../@id"/> - operation attribute for the release entity of a rpminfo_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', 'less than or equal', or 'pattern match'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:linux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" id="rpmsteversion">
                                                  <sch:rule context="linux-def:rpminfo_state/linux-def:version">
                                                       <sch:assert test="not(@datatype) or @datatype='string' or @datatype='version'"><sch:value-of select="../@id"/> - datatype attribute for the version entity of a rpminfo_state should be 'string'</sch:assert>
                                                       <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal' or @operation='pattern match'"><sch:value-of select="../@id"/> - operation attribute for the version entity of a rpminfo_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', 'less than or equal', or 'pattern match'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:linux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" id="rpmsteevr">
                                                  <sch:rule context="linux-def:rpminfo_state/linux-def:evr">
                                                       <sch:assert test="not(@datatype) or @datatype='evr_string'"><sch:value-of select="../@id"/> - datatype attribute for the evr entity of a rpminfo_state should be 'evr_string'</sch:assert>
                                                       <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='greater than' or @operation='greater than or equal' or @operation='less than' or @operation='less than or equal' or @operation='pattern match'"><sch:value-of select="../@id"/> - operation attribute for the evr entity of a rpminfo_state should be 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', 'less than or equal', or 'pattern match'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:linux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" id="rpmstesignaturekeyid">
                                                  <sch:rule context="linux-def:rpminfo_state/linux-def:signature_keyid">
                                                       <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the signature_keyid entity of a rpminfo_state should be 'string'</sch:assert>
                                                       <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'"><sch:value-of select="../@id"/> - operation attribute for the signature_keyid entity of a rpminfo_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:linux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" id="spkginfoobjname">
                                                            <sch:rule context="linux-def:slackwarepkginfo_object/linux-def:name">
                                                                 <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the name entity of a slackwarepkginfo_object should be 'string'</sch:assert>
                                                                 <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'"><sch:value-of select="../@id"/> - operation attribute for the name entity of a slackwarepkginfo_object should be 'equals', 'not equal', or 'pattern match'</sch:assert>
                                                            </sch:rule>
                                                       </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:linux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" id="spkginfostename">
                                                  <sch:rule context="linux-def:slackwarepkginfo_state/linux-def:name">
                                                       <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the name entity of a slackwarepkginfo_state should be 'string'</sch:assert>
                                                       <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'"><sch:value-of select="../@id"/> - operation attribute for the name entity of a slackwarepkginfo_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:linux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" id="spkginfosteversion">
                                                  <sch:rule context="linux-def:slackwarepkginfo_state/linux-def:version">
                                                       <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the version entity of a slackwarepkginfo_state should be 'string'</sch:assert>
                                                       <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'"><sch:value-of select="../@id"/> - operation attribute for the version entity of a slackwarepkginfo_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:linux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" id="spkginfostearch">
                                                  <sch:rule context="linux-def:slackwarepkginfo_state/linux-def:architecture">
                                                       <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the architecture entity of a slackwarepkginfo_state should be 'string'</sch:assert>
                                                       <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'"><sch:value-of select="../@id"/> - operation attribute for the architecture entity of a slackwarepkginfo_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:linux-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#linux" id="spkginfosterevision">
                                                  <sch:rule context="linux-def:slackwarepkginfo_state/linux-def:revision">
                                                       <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the revision entity of a slackwarepkginfo_state should be 'string'</sch:assert>
                                                       <sch:assert test="not(@operation) or @operation='equals' or @operation='not equal' or @operation='pattern match'"><sch:value-of select="../@id"/> - operation attribute for the revision entity of a slackwarepkginfo_state should be 'equals', 'not equal', or 'pattern match'</sch:assert>
                                                  </sch:rule>
                                             </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" id="accountobjusername">
                                                                        <sch:rule context="macos-def:accountinfo_object/macos-def:username">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the username entity of an accountinfo_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" id="accountsteusername">
                                                            <sch:rule context="macos-def:accountinfo_state/macos-def:username">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the username entity of an accountinfo_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" id="accountstepassword">
                                                            <sch:rule context="macos-def:accountinfo_state/macos-def:password">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the password entity of an accountinfo_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" id="accountsteuid">
                                                            <sch:rule context="macos-def:accountinfo_state/macos-def:uid">
                                                                  <sch:assert test="not(@datatype) or @datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the uid entity of an accountinfo_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" id="accountstegid">
                                                            <sch:rule context="macos-def:accountinfo_state/macos-def:gid">
                                                                  <sch:assert test="not(@datatype) or @datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the gid entity of an accountinfo_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" id="accountsterealname">
                                                            <sch:rule context="macos-def:accountinfo_state/macos-def:realname">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the realname entity of an accountinfo_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" id="accountstehome_dir">
                                                            <sch:rule context="macos-def:accountinfo_state/macos-def:home_dir">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the home_dir entity of an accountinfo_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" id="accountstelogin_shell">
                                                            <sch:rule context="macos-def:accountinfo_state/macos-def:login_shell">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the login_shell entity of an accountinfo_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" id="macosilsobjprogram_name">
                                                                        <sch:rule context="macos-def:inetlisteningservers_object/macos-def:program_name">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the program_name entity of an inetlisteningservers_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" id="macosilssteprogram_name">
                                                            <sch:rule context="macos-def:inetlisteningservers_state/macos-def:program_name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the program_name entity of an inetlisteningservers_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" id="macosilsstelocal_address">
                                                            <sch:rule context="macos-def:inetlisteningservers_state/macos-def:local_address">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the local_address entity of an inetlisteningservers_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" id="macosilsstelocal_full_address">
                                                            <sch:rule context="macos-def:inetlisteningservers_state/macos-def:local_full_address">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the local_full_address entity of an inetlisteningservers_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" id="macosilsstelocal_port">
                                                            <sch:rule context="macos-def:inetlisteningservers_state/macos-def:local_port">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the local_port entity of an inetlisteningservers_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" id="macosilssteforeign_address">
                                                            <sch:rule context="macos-def:inetlisteningservers_state/macos-def:foreign_address">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the foreign_address entity of an inetlisteningservers_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" id="macosilssteforeign_full_address">
                                                            <sch:rule context="macos-def:inetlisteningservers_state/macos-def:foreign_full_address">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the foreign_full_address entity of an inetlisteningservers_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" id="macosilssteforeign_port">
                                                            <sch:rule context="macos-def:inetlisteningservers_state/macos-def:foreign_port">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the foreign_port entity of an inetlisteningservers_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" id="macosilsstepid">
                                                            <sch:rule context="macos-def:inetlisteningservers_state/macos-def:pid">
                                                                  <sch:assert test="not(@datatype) or @datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the pid entity of an inetlisteningservers_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" id="macosilssteprotocol">
                                                            <sch:rule context="macos-def:inetlisteningservers_state/macos-def:protocol">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the protocol entity of an inetlisteningservers_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" id="macosilssteuser_id">
                                                            <sch:rule context="macos-def:inetlisteningservers_state/macos-def:user_id">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the user_id entity of an inetlisteningservers_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" id="nvramobjnvram_var">
                                                                        <sch:rule context="macos-def:nvram_object/macos-def:nvram_var">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the nvram_var entity of a nvram_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" id="nvramstenvram_var">
                                                            <sch:rule context="macos-def:nvram_state/macos-def:nvram_var">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the nvram_var entity of a nvram_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" id="nvramstenvram_value">
                                                            <sch:rule context="macos-def:nvram_state/macos-def:nvram_value">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the nvram_value entity of a nvram_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" id="pwpobjusername">
                                                                        <sch:rule context="macos-def:pwpolicy_object/macos-def:username">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the username entity of a pwpolicy_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" id="pwpobjuserpass">
                                                                        <sch:rule context="macos-def:pwpolicy_object/macos-def:userpass">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the userpass entity of a pwpolicy_object should be 'string'</sch:assert>
                                                                            <sch:assert test="not(@operation) or @operation='equals'"><sch:value-of select="../@id"/> - operation attribute for the userpass entity of a pwpolicy_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" id="pwpobjdirectory_node">
                                                                        <sch:rule context="macos-def:pwpolicy_object/macos-def:directory_node">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the directory_node entity of a pwpolicy_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" id="pwpsteusername">
                                                            <sch:rule context="macos-def:pwpolicy_state/macos-def:username">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the username entity of a pwpolicy_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" id="pwpsteuserpass">
                                                            <sch:rule context="macos-def:pwpolicy_state/macos-def:userpass">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the userpass entity of a pwpolicy_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" id="pwpstedirectory_node">
                                                            <sch:rule context="macos-def:pwpolicy_state/macos-def:directory_node">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the directory_node entity of a pwpolicy_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" id="pwpstemaxChars">
                                                            <sch:rule context="macos-def:pwpolicy_state/macos-def:maxChars">
                                                                  <sch:assert test="not(@datatype) or @datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the maxChars entity of a pwpolicy_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" id="pwpstemaxFailedLoginAttempts">
                                                            <sch:rule context="macos-def:pwpolicy_state/macos-def:maxFailedLoginAttempts">
                                                                  <sch:assert test="not(@datatype) or @datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the maxFailedLoginAttempts entity of a pwpolicy_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" id="pwpsteminChars">
                                                            <sch:rule context="macos-def:pwpolicy_state/macos-def:minChars">
                                                                  <sch:assert test="not(@datatype) or @datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the minChars entity of a pwpolicy_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" id="pwpstepasswordCannotBeName">
                                                            <sch:rule context="macos-def:pwpolicy_state/macos-def:passwordCannotBeName">
                                                                  <sch:assert test="not(@datatype) or @datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the passwordCannotBeName entity of a pwpolicy_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" id="pwpsterequiresAlpha">
                                                            <sch:rule context="macos-def:pwpolicy_state/macos-def:requiresAlpha">
                                                                  <sch:assert test="not(@datatype) or @datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the requiresAlpha entity of a pwpolicy_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:macos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#macos" id="pwpsterequiresNumeric">
                                                            <sch:rule context="macos-def:pwpolicy_state/macos-def:requiresNumeric">
                                                                  <sch:assert test="not(@datatype) or @datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the requiresNumeric entity of a pwpolicy_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:pixos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#pixos" id="pixlinetst">
                              <sch:rule context="pixos-def:line_test/pixos-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/pixos-def:line_object/@id"><sch:value-of select="../@id"/> - the object child element of a line_test must reference a line_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="pixos-def:line_test/pixos-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/pixos-def:line_state/@id"><sch:value-of select="../@id"/> - the state child element of a line_test must reference a line_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:pixos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#pixos" id="pixlineobjshow_subcommand">
                                                                        <sch:rule context="pixos-def:line_object/pixos-def:show_subcommand">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the show_subcommand entity of a line_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:pixos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#pixos" id="pixlinesteshow_subcommand">
                                                            <sch:rule context="pixos-def:line_state/pixos-def:show_subcommand">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the show_subcommand entity of a line_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:pixos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#pixos" id="pixlinesteconfig_line">
                                                            <sch:rule context="pixos-def:line_state/pixos-def:config_line">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the config_line entity of a line_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:pixos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#pixos" id="pixvertst">
                              <sch:rule context="pixos-def:version_test/pixos-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/pixos-def:version_object/@id"><sch:value-of select="../@id"/> - the object child element of a version_test must reference a version_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="pixos-def:version_test/pixos-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/pixos-def:version_state/@id"><sch:value-of select="../@id"/> - the state child element of a version_test must reference a version_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:pixos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#pixos" id="pixverstepix_release">
                                                            <sch:rule context="pixos-def:version_state/pixos-def:pix_release">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the pix_release entity of a version_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:pixos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#pixos" id="pixverstepix_major_release">
                                                            <sch:rule context="pixos-def:version_state/pixos-def:pix_major_release">
                                                                  <sch:assert test="@datatype='version'"><sch:value-of select="../@id"/> - datatype attribute for the pix_major_release entity of a version_state should be 'version'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:pixos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#pixos" id="pixverstepix_minor_release">
                                                            <sch:rule context="pixos-def:version_state/pixos-def:pix_minor_release">
                                                                  <sch:assert test="@datatype='version'"><sch:value-of select="../@id"/> - datatype attribute for the pix_minor_release entity of a version_state should be 'version'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:pixos-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#pixos" id="pixverstepix_build">
                                                            <sch:rule context="pixos-def:version_state/pixos-def:pix_build">
                                                                  <sch:assert test="@datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the pix_build entity of a version_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:sol-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris" id="isainfotst">
                              <sch:rule context="sol-def:isainfo_test/sol-def:object">
                                  <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/sol-def:isainfo_object/@id">
                                          <sch:value-of select="../@id"/> - the object child element of an isainfo_test must reference an isainfo_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="sol-def:isainfo_test/sol-def:state">
                                  <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/sol-def:isainfo_state/@id">
                                          <sch:value-of select="../@id"/> - the state child element of an isainfo_test must reference an isainfo_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:sol-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris" id="isastebits">
                                                            <sch:rule context="sol-def:isainfo_state/sol-def:bits">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the bits entity of an isainfo_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:sol-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris" id="isastekernel_isa">
                                                            <sch:rule context="sol-def:isainfo_state/sol-def:kernel_isa">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the kernel_isa entity of an isainfo_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:sol-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris" id="isasteapplication_isa">
                                                            <sch:rule context="sol-def:isainfo_state/sol-def:application_isa">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the application_isa entity of an isainfo_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:sol-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris" id="packagetst">
                              <sch:rule context="sol-def:package_test/sol-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/sol-def:package_object/@id">
                                          <sch:value-of select="../@id"/> - the object child element of a package_test must reference a package_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="sol-def:package_test/sol-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/sol-def:package_state/@id">
                                          <sch:value-of select="../@id"/> - the state child element of a package_test must reference a package_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:sol-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris" id="packageobjpkginst">
                                                                        <sch:rule context="sol-def:package_object/sol-def:pkginst">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the pkginst entity of a package_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:sol-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris" id="packagestepkginst">
                                                            <sch:rule context="sol-def:package_state/sol-def:pkginst">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the pkginst entity of a package_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:sol-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris" id="packagestename">
                                                            <sch:rule context="sol-def:package_state/sol-def:name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the name entity of a package_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:sol-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris" id="packagestecategory">
                                                            <sch:rule context="sol-def:package_state/sol-def:category">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the category entity of a package_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:sol-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris" id="packagesteversion">
                                                            <sch:rule context="sol-def:package_state/sol-def:version">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the version entity of a package_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:sol-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris" id="packagestevendor">
                                                            <sch:rule context="sol-def:package_state/sol-def:vendor">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the vendor entity of a package_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:sol-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris" id="packagestedescription">
                                                            <sch:rule context="sol-def:package_state/sol-def:description">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the description entity of a package_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:sol-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris" id="patch54tst">
                              <sch:rule context="sol-def:patch54_test/sol-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/sol-def:patch54_object/@id">
                                          <sch:value-of select="../@id"/> - the object child element of a patch54_test must reference a patch54_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="sol-def:patch54_test/sol-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/sol-def:patch_state/@id">
                                          <sch:value-of select="../@id"/> - the state child element of a patch54_test must reference a patch_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:sol-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris" id="patchtst">
                              <sch:rule context="sol-def:patch_test/sol-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/sol-def:patch_object/@id">
                                          <sch:value-of select="../@id"/> - the object child element of a patch_test must reference a patch_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="sol-def:patch_test/sol-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/sol-def:patch_state/@id">
                                          <sch:value-of select="../@id"/> - the state child element of a patch_test must reference a patch_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:sol-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris" id="patch54objbase">
                                                                        <sch:rule context="sol-def:patch54_object/sol-def:base">
                                                                              <sch:assert test="@datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the base entity of a patch54_object should be 'int'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:sol-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris" id="patch54objversion">
                                                                        <sch:rule context="sol-def:patch54_object/sol-def:version">
                                                                              <sch:assert test="@datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the version entity of a patch54_object should be 'int'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:sol-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris" id="patchobjbase">
                                                                        <sch:rule context="sol-def:patch_object/sol-def:base">
                                                                              <sch:assert test="@datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the base entity of a patch_object should be 'int'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:sol-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris" id="patchstebase">
                                                            <sch:rule context="sol-def:patch_state/sol-def:base">
                                                                  <sch:assert test="@datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the base entity of a patch_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:sol-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris" id="patchsteversion">
                                                            <sch:rule context="sol-def:patch_state/sol-def:version">
                                                                  <sch:assert test="@datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the version entity of a patch_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:sol-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris" id="smftst">
                              <sch:rule context="sol-def:smf_test/sol-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/sol-def:smf_object/@id">
                                          <sch:value-of select="../@id"/> - the object child element of a smf_test must reference a smf_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="sol-def:smf_test/sol-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/sol-def:smf_state/@id">
                                          <sch:value-of select="../@id"/> - the state child element of a smf_test must reference a smf_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:sol-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris" id="fmriobjbase">
                                                                        <sch:rule context="sol-def:smf_object/sol-def:fmri">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the fmri entity of a smf_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:sol-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris" id="fmristebase">
                                                            <sch:rule context="sol-def:smf_state/sol-def:fmri">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the fmri entity of a smf_object should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:sol-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris" id="srvnamestebase">
                                                            <sch:rule context="sol-def:smf_state/sol-def:service_name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the service_name entity of a smf_object should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:sol-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris" id="srvstatestebase">
                                                            <sch:rule context="sol-def:smf_state/sol-def:service_state">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the service_state entity of a smf_object should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:sol-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris" id="protocolstebase">
                                                            <sch:rule context="sol-def:smf_state/sol-def:protocol">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the protocol entity of a smf_object should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:sol-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris" id="srvexestebase">
                                                            <sch:rule context="sol-def:smf_state/sol-def:server_executable">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the server_executable entity of a smf_object should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:sol-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris" id="srvargsstebase">
                                                            <sch:rule context="sol-def:smf_state/sol-def:server_arguements">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the server_arguements entity of a smf_object should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:sol-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#solaris" id="execasuserstebase">
                                                            <sch:rule context="sol-def:smf_state/sol-def:exec_as_user">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the exec_as_user entity of a smf_object should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unixfileobjpath">
                                                                        <sch:rule context="unix-def:file_object/unix-def:path">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the path entity of a file_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unixfileobjfilename">
                                                                        <sch:rule context="unix-def:file_object/unix-def:filename">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the filename entity of a file_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unixfilestepath">
                                                            <sch:rule context="unix-def:file_state/unix-def:path">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the path entity of a file_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unixfilestefilename">
                                                            <sch:rule context="unix-def:file_state/unix-def:filename">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the filename entity of a file_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unixfilestetype">
                                                            <sch:rule context="unix-def:file_state/unix-def:type">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the type entity of a file_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unixfilestegroup_id">
                                                            <sch:rule context="unix-def:file_state/unix-def:group_id">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the group_id entity of a file_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unixfilesteuser_id">
                                                            <sch:rule context="unix-def:file_state/unix-def:user_id">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the user_id entity of a file_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unixfilestea_time">
                                                            <sch:rule context="unix-def:file_state/unix-def:a_time">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the a_time entity of a file_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unixfilestec_time">
                                                            <sch:rule context="unix-def:file_state/unix-def:c_time">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the c_time entity of a file_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unixfilestem_time">
                                                            <sch:rule context="unix-def:file_state/unix-def:m_time">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the m_time entity of a file_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unixfilestesize">
                                                            <sch:rule context="unix-def:file_state/unix-def:size">
                                                                  <sch:assert test="not(@datatype) or @datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the size entity of a file_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unixfilestesuid">
                                                            <sch:rule context="unix-def:file_state/unix-def:suid">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the suid entity of a file_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unixfilestesgid">
                                                            <sch:rule context="unix-def:file_state/unix-def:sgid">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the sgid entity of a file_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unixfilestesticky">
                                                            <sch:rule context="unix-def:file_state/unix-def:sticky">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the sticky entity of a file_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unixfilesteuread">
                                                            <sch:rule context="unix-def:file_state/unix-def:uread">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the uread entity of a file_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unixfilesteuwrite">
                                                            <sch:rule context="unix-def:file_state/unix-def:uwrite">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the uwrite entity of a file_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unixfilesteuexec">
                                                            <sch:rule context="unix-def:file_state/unix-def:uexec">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the uexec entity of a file_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unixfilestegread">
                                                            <sch:rule context="unix-def:file_state/unix-def:gread">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the gread entity of a file_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unixfilestegwrite">
                                                            <sch:rule context="unix-def:file_state/unix-def:gwrite">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the gwrite entity of a file_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unixfilestegexec">
                                                            <sch:rule context="unix-def:file_state/unix-def:gexec">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the gexec entity of a file_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unixfilesteoread">
                                                            <sch:rule context="unix-def:file_state/unix-def:oread">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the oread entity of a file_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unixfilesteowrite">
                                                            <sch:rule context="unix-def:file_state/unix-def:owrite">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the owrite entity of a file_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unixfilesteoexec">
                                                            <sch:rule context="unix-def:file_state/unix-def:oexec">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the oexec entity of a file_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="inetdobjprotocol">
                                                                        <sch:rule context="unix-def:inetd_object/unix-def:protocol">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the protocol entity of an inetd_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="inetdobjservice_name">
                                                                        <sch:rule context="unix-def:inetd_object/unix-def:service_name">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the service_name entity of an inetd_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="inetdsteprotocol">
                                                            <sch:rule context="unix-def:inetd_state/unix-def:protocol">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the protocol entity of an inetd_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="inetdsteservice_name">
                                                            <sch:rule context="unix-def:inetd_state/unix-def:service_name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the service_name entity of an inetd_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="inetdsteserver_program">
                                                            <sch:rule context="unix-def:inetd_state/unix-def:server_program">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the server_program entity of an inetd_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="inetdsteserver_arguments">
                                                            <sch:rule context="unix-def:inetd_state/unix-def:server_arguments">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the server_arguments entity of an inetd_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="inetdsteendpoint_type">
                                                            <sch:rule context="unix-def:inetd_state/unix-def:endpoint_type">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the endpoint_type entity of an inetd_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="inetdsteexec_as_user">
                                                            <sch:rule context="unix-def:inetd_state/unix-def:exec_as_user">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the exec_as_user entity of an inetd_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="inetdstewait_status">
                                                            <sch:rule context="unix-def:inetd_state/unix-def:wait_status">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the wait_status entity of an inetd_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unixinterfaceobjname">
                                                                        <sch:rule context="unix-def:interface_object/unix-def:name">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the name entity of an interface_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unixinterfacestename">
                                                            <sch:rule context="unix-def:interface_state/unix-def:name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the name entity of an interface_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unixinterfacestehardware_addr">
                                                            <sch:rule context="unix-def:interface_state/unix-def:hardware_addr">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the hardware_addr entity of an interface_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unixinterfacesteinet_addr">
                                                            <sch:rule context="unix-def:interface_state/unix-def:inet_addr">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the inet_addr entity of an interface_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unixinterfacestebroadcast_addr">
                                                            <sch:rule context="unix-def:interface_state/unix-def:broadcast_addr">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the broadcast_addr entity of an interface_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unixinterfacestenetmask">
                                                            <sch:rule context="unix-def:interface_state/unix-def:netmask">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the netmask entity of an interface_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unixinterfacesteflag">
                                                            <sch:rule context="unix-def:interface_state/unix-def:flag">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for a flag entity of an interface_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="passwordobjusername">
                                                                        <sch:rule context="unix-def:password_object/unix-def:username">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the username entity of a password_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="passwordsteusername">
                                                            <sch:rule context="unix-def:package_state/unix-def:username">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the username entity of a password_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="passwordstepassword">
                                                            <sch:rule context="unix-def:package_state/unix-def:password">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the password entity of a password_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="passwordsteuser_id">
                                                            <sch:rule context="unix-def:package_state/unix-def:user_id">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the user_id entity of a password_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="passwordstegroup_id">
                                                            <sch:rule context="unix-def:package_state/unix-def:group_id">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the group_id entity of a password_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="passwordstegcos">
                                                            <sch:rule context="unix-def:package_state/unix-def:gcos">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the gcos entity of a password_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="passwordstehome_dir">
                                                            <sch:rule context="unix-def:package_state/unix-def:home_dir">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the home_dir entity of a password_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="passwordstelogin_shell">
                                                            <sch:rule context="unix-def:package_state/unix-def:login_shell">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the login_shell entity of a password_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unixprocessobjcommand">
                                                                        <sch:rule context="unix-def:process_object/unix-def:command">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the command entity of a process_object be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unixprocessstecommand">
                                                            <sch:rule context="unix-def:process_state/unix-def:command">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the command entity of a process_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unixprocesssteexec_time">
                                                            <sch:rule context="unix-def:process_state/unix-def:exec_time">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the exec_time entity of a process_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unixprocessstepid">
                                                            <sch:rule context="unix-def:process_state/unix-def:pid">
                                                                  <sch:assert test="not(@datatype) or @datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the pid entity of a process_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unixprocesssteppid">
                                                            <sch:rule context="unix-def:process_state/unix-def:ppid">
                                                                  <sch:assert test="not(@datatype) or @datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the ppid entity of a process_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unixprocessstepriority">
                                                            <sch:rule context="unix-def:process_state/unix-def:priority">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the priority entity of a process_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unixprocessstescheduling_class">
                                                            <sch:rule context="unix-def:process_state/unix-def:scheduling_class">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the scheduling_class entity of a process_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unixprocessstestart_time">
                                                            <sch:rule context="unix-def:process_state/unix-def:start_time">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the start_time entity of a process_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unixprocessstetty">
                                                            <sch:rule context="unix-def:process_state/unix-def:tty">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the tty entity of a process_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unixprocesssteuser_id">
                                                            <sch:rule context="unix-def:process_state/unix-def:user_id">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the user_id entity of a process_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unixrlobjservice_name">
                                                                        <sch:rule context="unix-def:runlevel_object/unix-def:service_name">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the service_name entity of a runlevel_object be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unixrlobjrunlevel">
                                                                        <sch:rule context="unix-def:runlevel_object/unix-def:runlevel">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the runlevel entity of a runlevel_object be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unixrlsteservice_name">
                                                            <sch:rule context="unix-def:runlevel_state/unix-def:service_name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the service_name entity of a runlevel_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unixrlsterunlevel">
                                                            <sch:rule context="unix-def:runlevel_state/unix-def:runlevel">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the runlevel entity of a runlevel_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unixrlstestart">
                                                            <sch:rule context="unix-def:runlevel_state/unix-def:start">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the start entity of a runlevel_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unixrlstekill">
                                                            <sch:rule context="unix-def:runlevel_state/unix-def:kill">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the kill entity of a runlevel_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="sccsobjpath">
                                                                        <sch:rule context="unix-def:file_object/unix-def:path">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the path entity of a sccs_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="sccsobjfilename">
                                                                        <sch:rule context="unix-def:file_object/unix-def:filename">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the filename entity of a sccs_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="sccsstepath">
                                                            <sch:rule context="unix-def:sccs_state/unix-def:path">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the path entity of a sccs_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="sccsstefilename">
                                                            <sch:rule context="unix-def:sccs_state/unix-def:filename">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the filename entity of a sccs_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="sccsstemodule_name">
                                                            <sch:rule context="unix-def:sccs_state/unix-def:module_name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the module_name entity of a sccs_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="sccsstemodule_type">
                                                            <sch:rule context="unix-def:sccs_state/unix-def:module_type">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the module_type entity of a sccs_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="sccssterelease">
                                                            <sch:rule context="unix-def:sccs_state/unix-def:release">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the release entity of a sccs_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="sccsstelevel">
                                                            <sch:rule context="unix-def:sccs_state/unix-def:level">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the level entity of a sccs_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="sccsstebranch">
                                                            <sch:rule context="unix-def:sccs_state/unix-def:branch">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the branch entity of a sccs_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="sccsstesequence">
                                                            <sch:rule context="unix-def:sccs_state/unix-def:sequence">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the sequence entity of a sccs_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="sccsstewhat_string">
                                                            <sch:rule context="unix-def:sccs_state/unix-def:what_string">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the what_string entity of a sccs_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="shadowobjusername">
                                                                        <sch:rule context="unix-def:shadow_object/unix-def:username">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the username entity of a shadow_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="shadowsteusername">
                                                            <sch:rule context="unix-def:shadow_state/unix-def:username">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the username entity of a shadow_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="shadowstepassword">
                                                            <sch:rule context="unix-def:shadow_state/unix-def:password">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the password entity of a shadow_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="shadowstechg_lst">
                                                            <sch:rule context="unix-def:shadow_state/unix-def:chg_lst">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the chg_lst entity of a shadow_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="shadowstechg_allow">
                                                            <sch:rule context="unix-def:shadow_state/unix-def:chg_allow">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the chg_allow entity of a shadow_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="shadowstechg_req">
                                                            <sch:rule context="unix-def:shadow_state/unix-def:chg_req">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the chg_req entity of a shadow_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="shadowsteexp_warn">
                                                            <sch:rule context="unix-def:shadow_state/unix-def:exp_warn">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the exp_warn entity of a shadow_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="shadowsteexp_inact">
                                                            <sch:rule context="unix-def:shadow_state/unix-def:exp_inact">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the exp_inact entity of a shadow_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="shadowsteexp_date">
                                                            <sch:rule context="unix-def:shadow_state/unix-def:exp_date">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the exp_date entity of a shadow_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="shadowsteflag">
                                                            <sch:rule context="unix-def:shadow_state/unix-def:flag">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the flag entity of a shadow_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unamestemachine_class">
                                                            <sch:rule context="unix-def:uname_state/unix-def:machine_class">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the machine_class entity of a uname_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unamestenode_name">
                                                            <sch:rule context="unix-def:uname_state/unix-def:node_name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the node_name entity of a uname_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unamesteos_name">
                                                            <sch:rule context="unix-def:uname_state/unix-def:os_name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the os_name entity of a uname_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unamesteos_release">
                                                            <sch:rule context="unix-def:uname_state/unix-def:os_release">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the os_release entity of a uname_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unamesteos_version">
                                                            <sch:rule context="unix-def:uname_state/unix-def:os_version">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the os_version entity of a uname_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="unamesteprocessor_type">
                                                            <sch:rule context="unix-def:uname_state/unix-def:processor_type">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the processor_type entity of a uname_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="xinetdobjprotocol">
                                                                        <sch:rule context="unix-def:xinetd_object/unix-def:protocol">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the protocol entity of an xinetd_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="xinetdobjservice_name">
                                                                        <sch:rule context="unix-def:xinetd_object/unix-def:service_name">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the service_name entity of an xinetd_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="xinetdsteprotocol">
                                                            <sch:rule context="unix-def:xinetd_state/unix-def:protocol">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the protocol entity of an xinetd_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="xinetdsteservice_name">
                                                            <sch:rule context="unix-def:xinetd_state/unix-def:service_name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the service_name entity of an xinetd_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="xinetdsteflags">
                                                            <sch:rule context="unix-def:xinetd_state/unix-def:flags">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the flags entity of an xinetd_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="xinetdstenoaccess">
                                                            <sch:rule context="unix-def:xinetd_state/unix-def:no_access">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the no_access entity of an xinetd_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="xinetdsteonlyfrom">
                                                            <sch:rule context="unix-def:xinetd_state/unix-def:only_from">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the only_from entity of an xinetd_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="xinetdsteport">
                                                            <sch:rule context="unix-def:xinetd_state/unix-def:port">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the port entity of an xinetd_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="xinetdsteserver">
                                                            <sch:rule context="unix-def:xinetd_state/unix-def:server">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the server entity of an xinetd_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="xinetdsteserverarguments">
                                                            <sch:rule context="unix-def:xinetd_state/unix-def:server_arguments">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the server_arguments entity of an xinetd_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="xinetdstesockettype">
                                                            <sch:rule context="unix-def:xinetd_state/unix-def:socket_type">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the socket_type entity of an xinetd_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="xinetdstetype">
                                                            <sch:rule context="unix-def:xinetd_state/unix-def:type">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the type entity of an xinetd_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="xinetdsteuser">
                                                            <sch:rule context="unix-def:xinetd_state/unix-def:user">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the user entity of an xinetd_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="xinetdstewait">
                                                            <sch:rule context="unix-def:xinetd_state/unix-def:wait">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the wait entity of an xinetd_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:unix-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#unix" id="xinetdstedisabled">
                                                            <sch:rule context="unix-def:xinetd_state/unix-def:disabled">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the disabled entity of an xinetd_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="affected_platform">
                        <sch:rule context="oval-def:affected[@family='windows']">
                              <sch:assert test="not(oval-def:platform) or oval-def:platform='Microsoft Windows 95' or oval-def:platform='Microsoft Windows 98' or oval-def:platform='Microsoft Windows ME' or oval-def:platform='Microsoft Windows NT' or oval-def:platform='Microsoft Windows 2000' or oval-def:platform='Microsoft Windows XP' or oval-def:platform='Microsoft Windows Server 2003' or oval-def:platform='Microsoft Windows Vista' or oval-def:platform='Microsoft Windows Server 2008'">
                                    <sch:value-of select="../../@id"/> - the value "<sch:value-of select="oval-def:platform"/>" found in platform element as part of the affected element is not a valid windows platform.</sch:assert>
                        </sch:rule>
                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="attst">
                              <sch:rule context="win-def:accesstoken_test/win-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:accesstoken_object/@id"><sch:value-of select="../@id"/> - the object child element of an accesstoken_test must reference an accesstoken_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:accesstoken_test/win-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:accesstoken_state/@id"><sch:value-of select="../@id"/> - the state child element of an accesstoken_test must reference an accesstoken_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="atobjsecurity_principle">
                                                                        <sch:rule context="win-def:accesstoken_object/win-def:security_principle">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the security_principle entity of an accesstoken_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="atstesecurity_principle">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:security_principle">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the security_principle entity of an accesstoken_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="atsteseassignprimarytokenprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:seassignprimarytokenprivilege">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the seassignprimarytokenprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="atsteseauditprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:seauditprivilege">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the seauditprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="atstesebackupprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:sebackupprivilege">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the sebackupprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="atstesechangenotifyprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:sechangenotifyprivilege">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the sechangenotifyprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="atstesecreateglobalprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:secreateglobalprivilege">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the secreateglobalprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="atstesecreatepagefileprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:secreatepagefileprivilege">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the secreatepagefileprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="atstesecreatepermanentprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:secreatepermanentprivilege">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the secreatepermanentprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="atstesecreatesymboliclinkprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:secreatesymboliclinkprivilege">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the secreatesymboliclinkprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="atstesecreatetokenprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:secreatetokenprivilege">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the secreatetokenprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="atstesedebugprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:sedebugprivilege">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the sedebugprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="atsteseenabledelegationprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:seenabledelegationprivilege">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the seenabledelegationprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="atsteseimpersonateprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:seimpersonateprivilege">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the seimpersonateprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="atsteseincreasebasepriorityprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:seincreasebasepriorityprivilege">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the seincreasebasepriorityprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="atsteseincreasequotaprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:seincreasequotaprivilege">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the seincreasequotaprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="atsteseincreaseworkingsetprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:seincreaseworkingsetprivilege">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the seincreaseworkingsetprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="atsteseloaddriverprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:seloaddriverprivilege">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the seloaddriverprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="atsteselockmemoryprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:selockmemoryprivilege">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the selockmemoryprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="atstesemachineaccountprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:semachineaccountprivilege">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the semachineaccountprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="atstesemanagevolumeprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:semanagevolumeprivilege">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the semanagevolumeprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="atsteseprofilesingleprocessprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:seprofilesingleprocessprivilege">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the seprofilesingleprocessprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="atsteserelabelprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:serelabelprivilege">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the serelabelprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="atsteseremoteshutdownprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:seremoteshutdownprivilege">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the seremoteshutdownprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="atsteserestoreprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:serestoreprivilege">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the serestoreprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="atstesesecurityprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:sesecurityprivilege">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the sesecurityprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="atsteseshutdownprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:seshutdownprivilege">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the seshutdownprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="atstesesyncagentprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:sesyncagentprivilege">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the sesyncagentprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="atstesesystemenvironmentprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:sesystemenvironmentprivilege">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the sesystemenvironmentprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="atstesesystemprofileprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:sesystemprofileprivilege">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the sesystemprofileprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="atstesesystemtimeprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:sesystemtimeprivilege">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the sesystemtimeprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="atstesetakeownershipprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:setakeownershipprivilege">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the setakeownershipprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="atstesetcbprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:setcbprivilege">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the setcbprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="atstesetimezoneprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:setimezoneprivilege">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the setimezoneprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="atsteseundockprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:seundockprivilege">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the seundockprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="atsteseunsolicitedinputprivilege">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:seunsolicitedinputprivilege">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the seunsolicitedinputprivilege entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="atstesebatchlogonright">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:sebatchlogonright">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the sebatchlogonright entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="atsteseinteractivelogonright">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:seinteractivelogonright">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the seinteractivelogonright entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="atstesenetworklogonright">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:senetworklogonright">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the senetworklogonright entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="atsteseremoteinteractivelogonright">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:seremoteinteractivelogonright">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the seremoteinteractivelogonright entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="atsteseservicelogonright">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:seservicelogonright">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the seservicelogonright entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="atstesedenybatchLogonright">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:sedenybatchLogonright">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the sedenybatchLogonright entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="atstesedenyinteractivelogonright">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:sedenyinteractivelogonright">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the sedenyinteractivelogonright entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="atstesedenynetworklogonright">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:sedenynetworklogonright">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the sedenynetworklogonright entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="atstesedenyremoteInteractivelogonright">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:sedenyremoteInteractivelogonright">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the sedenyremoteInteractivelogonright entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="atstesedenyservicelogonright">
                                                            <sch:rule context="win-def:accesstoken_state/win-def:sedenyservicelogonright">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the sedenyservicelogonright entity of an accesstoken_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="adtst">
                              <sch:rule context="win-def:activedirectory_test/win-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:activedirectory_object/@id"><sch:value-of select="../@id"/> - the object child element of an activedirectory_test must reference an activedirectory_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:activedirectory_test/win-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:activedirectory_state/@id"><sch:value-of select="../@id"/> - the state child element of an activedirectory_test must reference an activedirectory_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="adobjnaming_context">
                                                                        <sch:rule context="win-def:activedirectory_object/win-def:naming_context">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the naming_context entity of an activedirectory_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="adobjrelative_dn">
                                                                        <sch:rule context="win-def:activedirectory_object/win-def:relative_dn">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the relative_dn entity of an activedirectory_object should be 'string'</sch:assert>
                                                                              <sch:assert test="not(@xsi:nil='true') or ../win-def:attribute/@xsi:nil='true'"><sch:value-of select="../@id"/> - attribute entity must be nil when relative_dn is nil</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="adobjattribute">
                                                                        <sch:rule context="win-def:activedirectory_object/win-def:attribute">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the attribute entity of an activedirectory_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="adstenaming_context">
                                                            <sch:rule context="win-def:activedirectory_state/win-def:naming_context">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the naming_context entity of an activedirectory_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="adsterelative_dn">
                                                            <sch:rule context="win-def:activedirectory_state/win-def:relative_dn">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the relative_dn entity of an activedirectory_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="adsteattribute">
                                                            <sch:rule context="win-def:activedirectory_state/win-def:attribute">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the attribute entity of an activedirectory_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="adsteobject_class">
                                                            <sch:rule context="win-def:activedirectory_state/win-def:object_class">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the object_class entity of an activedirectory_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="adsteadstype">
                                                            <sch:rule context="win-def:activedirectory_state/win-def:adstype">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the adstype entity of an activedirectory_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="adstevalue">
                                                            <sch:rule context="win-def:activedirectory_state/win-def:value">
                                                                  <sch:assert test="(@datatype='int' and (floor(.) = number(.))) or not(@datatype='int') or not(node())"><sch:value-of select="../@id"/> - The datatype has been set to 'int' but the value is not an integer.</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aeptst">
                              <sch:rule context="win-def:auditeventpolicy_test/win-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:auditeventpolicy_object/@id"><sch:value-of select="../@id"/> - the object child element of an auditeventpolicy_test must reference an auditeventpolicy_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:auditeventpolicy_test/win-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:auditeventpolicy_state/@id"><sch:value-of select="../@id"/> - the state child element of an auditeventpolicy_test must reference an auditeventpolicy_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepsteaccount_logon">
                                                            <sch:rule context="win-def:auditeventpolicy_state/win-def:account_logon">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the account_logon entity of an auditeventpolicy_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepsteaccount_management">
                                                            <sch:rule context="win-def:auditeventpolicy_state/win-def:account_management">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the account_management entity of an auditeventpolicy_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepstedetailed_tracking">
                                                            <sch:rule context="win-def:auditeventpolicy_state/win-def:detailed_tracking">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the detailed_tracking entity of an auditeventpolicy_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepstedirectory_service_access">
                                                            <sch:rule context="win-def:auditeventpolicy_state/win-def:directory_service_access">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the directory_service_access entity of an auditeventpolicy_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepstelogon">
                                                            <sch:rule context="win-def:auditeventpolicy_state/win-def:logon">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the logon entity of an auditeventpolicy_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepsteobject_access">
                                                            <sch:rule context="win-def:auditeventpolicy_state/win-def:object_access">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the object_access entity of an auditeventpolicy_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepstepolicy_change">
                                                            <sch:rule context="win-def:auditeventpolicy_state/win-def:policy_change">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the policy_change entity of an auditeventpolicy_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepsteprivilege_use">
                                                            <sch:rule context="win-def:auditeventpolicy_state/win-def:privilege_use">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the privilege_use entity of an auditeventpolicy_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepstesystem">
                                                            <sch:rule context="win-def:auditeventpolicy_state/win-def:system">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the system entity of an auditeventpolicy_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepstst">
                              <sch:rule context="win-def:auditeventpolicysubcategories_test/win-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:auditeventpolicysubcategories_object/@id"><sch:value-of select="../@id"/> - the object child element of an auditeventpolicysubcategories_test must reference an auditeventpolicysubcategories_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:auditeventpolicysubcategories_test/win-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:auditeventpolicysubcategories_state/@id"><sch:value-of select="../@id"/> - the state child element of an auditeventpolicysubcategories_test must reference an auditeventpolicysubcategories_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepsstecredentialvalidation">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:credential_validation">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the credential_validation entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepsstekerberosticketevents">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:kerberos_ticket_events">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the kerberos_ticket_events entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepssteotheraccountlogonevents">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:other_account_logon_events">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the other_account_logon_events entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepssteapplicationgroupmanagement">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:application_group_management">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the application_group_management entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepsstecomputeraccountmanagement">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:computer_account_management">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the computer_account_management entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepsstedistributiongroupmanagement">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:distribution_group_management">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the distribution_group_management entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepssteotheraccountmanagementevents">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:other_account_management_events">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the other_account_management_events entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepsstesecuritygroupmanagement">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:security_group_management">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the security_group_management entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepssteuseraccountmanagement">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:user_account_management">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the user_account_management entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepsstedpapiactivity">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:dpapi_activity">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the dpapi_activity entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepssteprocesscreation">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:process_creation">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the process_creation entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepssteprocesstermination">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:process_termination">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the process_termination entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepssterpcevents">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:rpc_events">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the rpc_events entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepsstedirectoryserviceaccess">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:directory_service_access">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the directory_service_access entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepsstedirectoryservicechanges">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:directory_service_changes">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the directory_service_changes entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepsstedirectoryservicereplication">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:directory_service_replication">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the directory_service_replication entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepsstedetaileddirectoryservicereplication">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:detailed_directory_service_replication">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the detailed_directory_service_replication entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepssteaccountlockout">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:account_lockout">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the account_lockout entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepssteipsecextendedmode">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:ipsec_extended_mode">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the ipsec_extended_mode entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepssteipsecmainmode">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:ipsec_main_mode">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the ipsec_main_mode entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepssteipsec_quick_mode">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:ipsec_quick_mode">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the ipsec_quick_mode entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepsstelogoff">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:logoff">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the logoff entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepsstelogon">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:logon">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the logon entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepssteotherlogonlogoffevents">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:other_logon_logoff_events">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the other_logon_logoff_events entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepsstespeciallogon">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:special_logon">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the special_logon entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepssteapplicationgenerated">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:application_generated">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the application_generated entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepsstecertificationservices">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:certification_services">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the certification_services entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepsstefileshare">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:file_share">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the file_share entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepsstefilesystem">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:file_system">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the file_system entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepsstefilteringplatformconnection">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:filtering_platform_connection">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the filtering_platform_connection entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepsstefilteringplatformpacketdrop">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:filtering_platform_packet_drop">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the filtering_platform_packet_drop entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepsstehandlemanipulation">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:handle_manipulation">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the handle_manipulation entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepsstekernelobject">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:kernel_object">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the kernel_object entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepssteotherobjectaccessevents">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:other_object_access_events">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the other_object_access_events entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepssteregistry">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:registry">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the registry entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepsstesam">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:sam">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the sam entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepssteauditpolicychange">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:audit_policy_change">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the audit_policy_change entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepssteauthenticationpolicychange">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:authentication_policy_change">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the authentication_policy_change entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepssteauthorizationpolicychange">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:authorization_policy_change">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the authorization_policy_change entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepsstefilteringplatformpolicychange">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:filtering_platform_policy_change">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the filtering_platform_policy_change entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepsstempssvcrulelevelpolicychange">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:mpssvc_rule_level_policy_change">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the mpssvc_rule_level_policy_change entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepssteotherpolicychangeevents">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:other_policy_change_events">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the other_policy_change_events entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepsstenonsensitiveprivilegeuse">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:non_sensitive_privilege_use">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the non_sensitive_privilege_use entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepssteotherprivilegeuseevents">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:other_privilege_use_events">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the other_privilege_use_events entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepsstesensitive_privilege_use">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:sensitive_privilege_use">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the sensitive_privilege_use entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepssteipsecdriver">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:ipsec_driver">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the ipsec_driver entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepssteothersystemevents">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:other_system_events">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the other_system_events entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepsstesecuritystatechange">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:security_state_change">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the security_state_change entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepsstesecuritysystemextension">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:security_system_extension">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the security_system_extension entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="aepsstesystemintegrity">
                                                            <sch:rule context="win-def:auditeventpolicysubcategories_state/win-def:system_integrity">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the system_integrity entity of an auditeventpolicysubcategories_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="filetst">
                              <sch:rule context="win-def:file_test/win-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:file_object/@id"><sch:value-of select="../@id"/> - the object child element of a file_test must reference a file_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:file_test/win-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:file_state/@id"><sch:value-of select="../@id"/> - the state child element of a file_test must reference a file_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fileobjpath">
                                                                        <sch:rule context="win-def:file_object/win-def:path">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the path entity of a file_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fileobjfilename">
                                                                        <sch:rule context="win-def:file_object/win-def:filename">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the filename entity of a file_object should be 'string'</sch:assert>
                                                                            <sch:assert test="(not(contains(.,'\') or contains(.,'/') or contains(.,':') or contains(.,'*') or contains(.,'?') or contains(.,'&gt;') or contains(.,'|'))) or (@operation='pattern match')"><sch:value-of select="../@id"/> - filename entity can not contain the characters / \ : * ? &gt; | </sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="filestepath">
                                                            <sch:rule context="win-def:file_state/win-def:path">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the path entity of a file_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="filestefilename">
                                                            <sch:rule context="win-def:file_state/win-def:filename">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the filename entity of a file_state should be 'string'</sch:assert>
                                                                <sch:assert test="(not(contains(.,'\') or contains(.,'/') or contains(.,':') or contains(.,'*') or contains(.,'?') or contains(.,'&gt;') or contains(.,'|'))) or (@operation='pattern match')"><sch:value-of select="../@id"/> - filename entity can not contain the characters / \ : * ? &gt; | </sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="filesteowner">
                                                            <sch:rule context="win-def:file_state/win-def:owner">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the owner entity of a file_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="filestesize">
                                                            <sch:rule context="win-def:file_state/win-def:size">
                                                                  <sch:assert test="@datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the size entity of a file_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="filestea_time">
                                                            <sch:rule context="win-def:file_state/win-def:a_time">
                                                                  <sch:assert test="@datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the a_time entity of a file_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="filestec_time">
                                                            <sch:rule context="win-def:file_state/win-def:c_time">
                                                                  <sch:assert test="@datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the c_time entity of a file_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="filestem_time">
                                                            <sch:rule context="win-def:file_state/win-def:m_time">
                                                                  <sch:assert test="@datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the m_time entity of a file_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="filestems_checksum">
                                                            <sch:rule context="win-def:file_state/win-def:ms_checksum">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the ms_checksum entity of a file_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="filesteversion">
                                                            <sch:rule context="win-def:file_state/win-def:version">
                                                                  <sch:assert test="@datatype='version'"><sch:value-of select="../@id"/> - datatype attribute for the version entity of a file_state should be 'version'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="filestetype">
                                                            <sch:rule context="win-def:file_state/win-def:type">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the type entity of a file_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="filestedevelopment_class">
                                                            <sch:rule context="win-def:file_state/win-def:development_class">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the development_class entity of a file_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="filestecompany">
                                                            <sch:rule context="win-def:file_state/win-def:company">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the company entity of a file_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="filesteinternalname">
                                                            <sch:rule context="win-def:file_state/win-def:internal_name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the internal_name entity of a file_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="filestelanguage">
                                                            <sch:rule context="win-def:file_state/win-def:language">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the language entity of a file_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="filesteoriginalfilename">
                                                            <sch:rule context="win-def:file_state/win-def:original_filename">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the original_filename entity of a file_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="filesteproductname">
                                                            <sch:rule context="win-def:file_state/win-def:product_name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the product_name entity of a file_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="filesteproductversion">
                                                            <sch:rule context="win-def:file_state/win-def:product_version">
                                                                  <sch:assert test="@datatype='version'"><sch:value-of select="../@id"/> - datatype attribute for the product_version entity of a file_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fap53tst">
                              <sch:rule context="win-def:fileauditedpermissions53_test/win-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:fileauditedpermissions53_object/@id"><sch:value-of select="../@id"/> - the object child element of a fileauditedpermissions53_test must reference a fileauditedpermissions53_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:fileauditedpermissions53_test/win-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:fileauditedpermissions53_state/@id"><sch:value-of select="../@id"/> - the state child element of a fileauditedpermissions53_test must reference a fileauditedpermissions53_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fap53objpath">
                                                                        <sch:rule context="win-def:fileauditedpermissions53_object/win-def:path">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the path entity of a fileauditedpermissions53_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fap53objfilename">
                                                                        <sch:rule context="win-def:fileauditedpermissions53_object/win-def:filename">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the filename entity of a fileauditedpermissions53_object should be 'string'</sch:assert>
                                                                            <sch:assert test="(not(contains(.,'\') or contains(.,'/') or contains(.,':') or contains(.,'*') or contains(.,'?') or contains(.,'&gt;') or contains(.,'|'))) or (@operation='pattern match')"><sch:value-of select="../@id"/> - filename entity can not contain the characters / \ : * ? &gt; | </sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fap53objtrustee_sid">
                                                                        <sch:rule context="win-def:fileauditedpermissions53_object/win-def:trustee_sid">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the trustee_sid entity of a fileauditedpermissions53_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fap53stepath">
                                                            <sch:rule context="win-def:fileauditedpermissions53_state/win-def:path">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the path entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fap53stefilename">
                                                            <sch:rule context="win-def:fileauditedpermissions53_state/win-def:filename">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the filename entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
                                                                <sch:assert test="(not(contains(.,'\') or contains(.,'/') or contains(.,':') or contains(.,'*') or contains(.,'?') or contains(.,'&gt;') or contains(.,'|'))) or (@operation='pattern match')"><sch:value-of select="../@id"/> - filename entity can not contain the characters / \ : * ? &gt; | </sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fap53stetrustee_sid">
                                                            <sch:rule context="win-def:fileauditedpermissions53_state/win-def:trustee_sid">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the trustee_sid entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fap53stestandard_delete">
                                                            <sch:rule context="win-def:fileauditedpermissions53_state/win-def:standard_delete">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the standard_delete entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fap53stestandard_read_control">
                                                            <sch:rule context="win-def:fileauditedpermissions53_state/win-def:standard_read_control">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the standard_read_control entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fap53stestandard_write_dac">
                                                            <sch:rule context="win-def:fileauditedpermissions53_state/win-def:standard_write_dac">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the standard_write_dac entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fap53stestandard_write_owner">
                                                            <sch:rule context="win-def:fileauditedpermissions53_state/win-def:standard_write_owner">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the standard_write_owner entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fap53stestandard_synchronize">
                                                            <sch:rule context="win-def:fileauditedpermissions53_state/win-def:standard_synchronize">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the standard_synchronize entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fap53steaccess_system_security">
                                                            <sch:rule context="win-def:fileauditedpermissions53_state/win-def:access_system_security">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the access_system_security entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fap53stegeneric_read">
                                                            <sch:rule context="win-def:fileauditedpermissions53_state/win-def:generic_read">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the generic_read entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fap53stegeneric_write">
                                                            <sch:rule context="win-def:fileauditedpermissions53_state/win-def:generic_write">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the generic_write entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fap53stegeneric_execute">
                                                            <sch:rule context="win-def:fileauditedpermissions53_state/win-def:generic_execute">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the generic_execute entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fap53stegeneric_all">
                                                            <sch:rule context="win-def:fileauditedpermissions53_state/win-def:generic_all">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the generic_all entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fap53stefile_read_data">
                                                            <sch:rule context="win-def:fileauditedpermissions53_state/win-def:file_read_data">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the file_read_data entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fap53stefile_write_data">
                                                            <sch:rule context="win-def:fileauditedpermissions53_state/win-def:file_write_data">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the file_write_data entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fap53stefile_append_data">
                                                            <sch:rule context="win-def:fileauditedpermissions53_state/win-def:file_append_data">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the file_append_data entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fap53stefile_read_ea">
                                                            <sch:rule context="win-def:fileauditedpermissions53_state/win-def:file_read_ea">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the file_read_ea entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fap53stefile_write_ea">
                                                            <sch:rule context="win-def:fileauditedpermissions53_state/win-def:file_write_ea">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the file_write_ea entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fap53stefile_execute">
                                                            <sch:rule context="win-def:fileauditedpermissions53_state/win-def:file_execute">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the file_execute entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fap53stefile_delete_child">
                                                            <sch:rule context="win-def:fileauditedpermissions53_state/win-def:file_delete_child">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the file_delete_child entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fap53stefile_read_attributes">
                                                            <sch:rule context="win-def:fileauditedpermissions53_state/win-def:file_read_attributes">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the file_read_attributes entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fap53stefile_write_attributes">
                                                            <sch:rule context="win-def:fileauditedpermissions53_state/win-def:file_write_attributes">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the file_write_attributes entity of a fileauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="faptst">
                              <sch:rule context="win-def:fileauditedpermissions_test/win-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:fileauditedpermissions_object/@id"><sch:value-of select="../@id"/> - the object child element of a fileauditedpermissions_test must reference a fileauditedpermissions_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:fileauditedpermissions_test/win-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:fileauditedpermissions_state/@id"><sch:value-of select="../@id"/> - the state child element of a fileauditedpermissions_test must reference a fileauditedpermissions_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fapobjpath">
                                                                        <sch:rule context="win-def:fileauditedpermissions_object/win-def:path">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the path entity of a fileauditedpermissions_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fapobjfilename">
                                                                        <sch:rule context="win-def:fileauditedpermissions_object/win-def:filename">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the filename entity of a fileauditedpermissions_object should be 'string'</sch:assert>
                                                                            <sch:assert test="(not(contains(.,'\') or contains(.,'/') or contains(.,':') or contains(.,'*') or contains(.,'?') or contains(.,'&gt;') or contains(.,'|'))) or (@operation='pattern match')"><sch:value-of select="../@id"/> - filename entity can not contain the characters / \ : * ? &gt; | </sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fapobjtrustee_name">
                                                                        <sch:rule context="win-def:fileauditedpermissions_object/win-def:trustee_name">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the trustee_name entity of a fileauditedpermissions_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fapstepath">
                                                            <sch:rule context="win-def:fileauditedpermissions_state/win-def:path">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the path entity of a fileauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fapstefilename">
                                                            <sch:rule context="win-def:fileauditedpermissions_state/win-def:filename">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the filename entity of a fileauditedpermissions_state should be 'string'</sch:assert>
                                                                <sch:assert test="(not(contains(.,'\') or contains(.,'/') or contains(.,':') or contains(.,'*') or contains(.,'?') or contains(.,'&gt;') or contains(.,'|'))) or (@operation='pattern match')"><sch:value-of select="../@id"/> - filename entity can not contain the characters / \ : * ? &gt; | </sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fapstetrustee_name">
                                                            <sch:rule context="win-def:fileauditedpermissions_state/win-def:trustee_name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the trustee_name entity of a fileauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fapstestandard_delete">
                                                            <sch:rule context="win-def:fileauditedpermissions_state/win-def:standard_delete">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the standard_delete entity of a fileauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fapstestandard_read_control">
                                                            <sch:rule context="win-def:fileauditedpermissions_state/win-def:standard_read_control">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the standard_read_control entity of a fileauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fapstestandard_write_dac">
                                                            <sch:rule context="win-def:fileauditedpermissions_state/win-def:standard_write_dac">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the standard_write_dac entity of a fileauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fapstestandard_write_owner">
                                                            <sch:rule context="win-def:fileauditedpermissions_state/win-def:standard_write_owner">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the standard_write_owner entity of a fileauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fapstestandard_synchronize">
                                                            <sch:rule context="win-def:fileauditedpermissions_state/win-def:standard_synchronize">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the standard_synchronize entity of a fileauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fapsteaccess_system_security">
                                                            <sch:rule context="win-def:fileauditedpermissions_state/win-def:access_system_security">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the access_system_security entity of a fileauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fapstegeneric_read">
                                                            <sch:rule context="win-def:fileauditedpermissions_state/win-def:generic_read">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the generic_read entity of a fileauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fapstegeneric_write">
                                                            <sch:rule context="win-def:fileauditedpermissions_state/win-def:generic_write">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the generic_write entity of a fileauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fapstegeneric_execute">
                                                            <sch:rule context="win-def:fileauditedpermissions_state/win-def:generic_execute">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the generic_execute entity of a fileauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fapstegeneric_all">
                                                            <sch:rule context="win-def:fileauditedpermissions_state/win-def:generic_all">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the generic_all entity of a fileauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fapstefile_read_data">
                                                            <sch:rule context="win-def:fileauditedpermissions_state/win-def:file_read_data">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the file_read_data entity of a fileauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fapstefile_write_data">
                                                            <sch:rule context="win-def:fileauditedpermissions_state/win-def:file_write_data">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the file_write_data entity of a fileauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fapstefile_append_data">
                                                            <sch:rule context="win-def:fileauditedpermissions_state/win-def:file_append_data">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the file_append_data entity of a fileauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fapstefile_read_ea">
                                                            <sch:rule context="win-def:fileauditedpermissions_state/win-def:file_read_ea">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the file_read_ea entity of a fileauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fapstefile_write_ea">
                                                            <sch:rule context="win-def:fileauditedpermissions_state/win-def:file_write_ea">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the file_write_ea entity of a fileauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fapstefile_execute">
                                                            <sch:rule context="win-def:fileauditedpermissions_state/win-def:file_execute">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the file_execute entity of a fileauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fapstefile_delete_child">
                                                            <sch:rule context="win-def:fileauditedpermissions_state/win-def:file_delete_child">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the file_delete_child entity of a fileauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fapstefile_read_attributes">
                                                            <sch:rule context="win-def:fileauditedpermissions_state/win-def:file_read_attributes">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the file_read_attributes entity of a fileauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fapstefile_write_attributes">
                                                            <sch:rule context="win-def:fileauditedpermissions_state/win-def:file_write_attributes">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the file_write_attributes entity of a fileauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fer53tst">
                              <sch:rule context="win-def:fileeffectiverights53_test/win-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:fileeffectiverights53_object/@id"><sch:value-of select="../@id"/> - the object child element of a fileeffectiverights53_test must reference a fileeffectiverights53_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:fileeffectiverights53_test/win-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:fileeffectiverights53_state/@id"><sch:value-of select="../@id"/> - the state child element of a fileeffectiverights53_test must reference a fileeffectiverights53_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fer53objpath">
                                                                        <sch:rule context="win-def:fileeffectiverights53_object/win-def:path">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the path entity of a fileeffectiverights53_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fer53objfilename">
                                                                        <sch:rule context="win-def:fileeffectiverights53_object/win-def:filename">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the filename entity of a fileeffectiverights53_object should be 'string'</sch:assert>
                                                                            <sch:assert test="(not(contains(.,'\') or contains(.,'/') or contains(.,':') or contains(.,'*') or contains(.,'?') or contains(.,'&gt;') or contains(.,'|'))) or (@operation='pattern match')"><sch:value-of select="../@id"/> - filename entity can not contain the characters / \ : * ? &gt; | </sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fer53objtrustee_sid">
                                                                        <sch:rule context="win-def:fileeffectiverights53_object/win-def:trustee_sid">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the trustee_sid entity of a fileeffectiverights53_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fer53stepath">
                                                            <sch:rule context="win-def:fileeffectiverights53_state/win-def:path">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the path entity of a fileeffectiverights53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fer53stefilename">
                                                            <sch:rule context="win-def:fileeffectiverights53_state/win-def:filename">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the filename entity of a fileeffectiverights53_state should be 'string'</sch:assert>
                                                                <sch:assert test="(not(contains(.,'\') or contains(.,'/') or contains(.,':') or contains(.,'*') or contains(.,'?') or contains(.,'&gt;') or contains(.,'|'))) or (@operation='pattern match')"><sch:value-of select="../@id"/> - filename entity can not contain the characters / \ : * ? &gt; | </sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fer53stetrustee_sid">
                                                            <sch:rule context="win-def:fileeffectiverights53_state/win-def:trustee_sid">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the trustee_sid entity of a fileeffectiverights53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fer53stestandard_delete">
                                                            <sch:rule context="win-def:fileeffectiverights53_state/win-def:standard_delete">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the standard_delete entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fer53stestandard_read_control">
                                                            <sch:rule context="win-def:fileeffectiverights53_state/win-def:standard_read_control">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the standard_read_control entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fer53stestandard_write_dac">
                                                            <sch:rule context="win-def:fileeffectiverights53_state/win-def:standard_write_dac">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the standard_write_dac entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fer53stestandard_write_owner">
                                                            <sch:rule context="win-def:fileeffectiverights53_state/win-def:standard_write_owner">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the standard_write_owner entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fer53stestandard_synchronize">
                                                            <sch:rule context="win-def:fileeffectiverights53_state/win-def:standard_synchronize">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the standard_synchronize entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fer53steaccess_system_security">
                                                            <sch:rule context="win-def:fileeffectiverights53_state/win-def:access_system_security">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the access_system_security entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fer53stegeneric_read">
                                                            <sch:rule context="win-def:fileeffectiverights53_state/win-def:generic_read">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the generic_read entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fer53stegeneric_write">
                                                            <sch:rule context="win-def:fileeffectiverights53_state/win-def:generic_write">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the generic_write entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fer53stegeneric_execute">
                                                            <sch:rule context="win-def:fileeffectiverights53_state/win-def:generic_execute">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the generic_execute entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fer53stegeneric_all">
                                                            <sch:rule context="win-def:fileeffectiverights53_state/win-def:generic_all">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the generic_all entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fer53stefile_read_data">
                                                            <sch:rule context="win-def:fileeffectiverights53_state/win-def:file_read_data">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the file_read_data entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fer53stefile_write_data">
                                                            <sch:rule context="win-def:fileeffectiverights53_state/win-def:file_write_data">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the file_write_data entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fer53stefile_append_data">
                                                            <sch:rule context="win-def:fileeffectiverights53_state/win-def:file_append_data">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the file_append_data entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fer53stefile_read_ea">
                                                            <sch:rule context="win-def:fileeffectiverights53_state/win-def:file_read_ea">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the file_read_ea entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fer53stefile_write_ea">
                                                            <sch:rule context="win-def:fileeffectiverights53_state/win-def:file_write_ea">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the file_write_ea entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fer53stefile_execute">
                                                            <sch:rule context="win-def:fileeffectiverights53_state/win-def:file_execute">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the file_execute entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fer53stefile_delete_child">
                                                            <sch:rule context="win-def:fileeffectiverights53_state/win-def:file_delete_child">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the file_delete_child entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fer53stefile_read_attributes">
                                                            <sch:rule context="win-def:fileeffectiverights53_state/win-def:file_read_attributes">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the file_read_attributes entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fer53stefile_write_attributes">
                                                            <sch:rule context="win-def:fileeffectiverights53_state/win-def:file_write_attributes">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the file_write_attributes entity of a fileeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fertst">
                              <sch:rule context="win-def:fileeffectiverights_test/win-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:fileeffectiverights_object/@id"><sch:value-of select="../@id"/> - the object child element of a fileeffectiverights_test must reference a fileeffectiverights_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:fileeffectiverights_test/win-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:fileeffectiverights_state/@id"><sch:value-of select="../@id"/> - the state child element of a fileeffectiverights_test must reference a fileeffectiverights_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fefobjpath">
                                                                        <sch:rule context="win-def:fileeffectiverights_object/win-def:path">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the path entity of a fileeffectiverights_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fefobjfilename">
                                                                        <sch:rule context="win-def:fileeffectiverights_object/win-def:filename">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the filename entity of a fileeffectiverights_object should be 'string'</sch:assert>
                                                                            <sch:assert test="(not(contains(.,'\') or contains(.,'/') or contains(.,':') or contains(.,'*') or contains(.,'?') or contains(.,'&gt;') or contains(.,'|'))) or (@operation='pattern match')"><sch:value-of select="../@id"/> - filename entity can not contain the characters / \ : * ? &gt; | </sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fefobjtrustee_name">
                                                                        <sch:rule context="win-def:fileeffectiverights_object/win-def:trustee_name">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the trustee_name entity of a fileeffectiverights_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="ferstepath">
                                                            <sch:rule context="win-def:fileeffectiverights_state/win-def:path">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the path entity of a fileeffectiverights_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="ferstefilename">
                                                            <sch:rule context="win-def:fileeffectiverights_state/win-def:filename">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the filename entity of a fileeffectiverights_state should be 'string'</sch:assert>
                                                                <sch:assert test="(not(contains(.,'\') or contains(.,'/') or contains(.,':') or contains(.,'*') or contains(.,'?') or contains(.,'&gt;') or contains(.,'|'))) or (@operation='pattern match')"><sch:value-of select="../@id"/> - filename entity can not contain the characters / \ : * ? &gt; | </sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="ferstetrustee_name">
                                                            <sch:rule context="win-def:fileeffectiverights_state/win-def:trustee_name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the trustee_name entity of a fileeffectiverights_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="ferstestandard_delete">
                                                            <sch:rule context="win-def:fileeffectiverights_state/win-def:standard_delete">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the standard_delete entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="ferstestandard_read_control">
                                                            <sch:rule context="win-def:fileeffectiverights_state/win-def:standard_read_control">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the standard_read_control entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="ferstestandard_write_dac">
                                                            <sch:rule context="win-def:fileeffectiverights_state/win-def:standard_write_dac">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the standard_write_dac entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="ferstestandard_write_owner">
                                                            <sch:rule context="win-def:fileeffectiverights_state/win-def:standard_write_owner">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the standard_write_owner entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="ferstestandard_synchronize">
                                                            <sch:rule context="win-def:fileeffectiverights_state/win-def:standard_synchronize">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the standard_synchronize entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="fersteaccess_system_security">
                                                            <sch:rule context="win-def:fileeffectiverights_state/win-def:access_system_security">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the access_system_security entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="ferstegeneric_read">
                                                            <sch:rule context="win-def:fileeffectiverights_state/win-def:generic_read">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the generic_read entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="ferstegeneric_write">
                                                            <sch:rule context="win-def:fileeffectiverights_state/win-def:generic_write">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the generic_write entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="ferstegeneric_execute">
                                                            <sch:rule context="win-def:fileeffectiverights_state/win-def:generic_execute">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the generic_execute entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="ferstegeneric_all">
                                                            <sch:rule context="win-def:fileeffectiverights_state/win-def:generic_all">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the generic_all entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="ferstefile_read_data">
                                                            <sch:rule context="win-def:fileeffectiverights_state/win-def:file_read_data">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the file_read_data entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="ferstefile_write_data">
                                                            <sch:rule context="win-def:fileeffectiverights_state/win-def:file_write_data">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the file_write_data entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="ferstefile_append_data">
                                                            <sch:rule context="win-def:fileeffectiverights_state/win-def:file_append_data">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the file_append_data entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="ferstefile_read_ea">
                                                            <sch:rule context="win-def:fileeffectiverights_state/win-def:file_read_ea">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the file_read_ea entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="ferstefile_write_ea">
                                                            <sch:rule context="win-def:fileeffectiverights_state/win-def:file_write_ea">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the file_write_ea entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="ferstefile_execute">
                                                            <sch:rule context="win-def:fileeffectiverights_state/win-def:file_execute">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the file_execute entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="ferstefile_delete_child">
                                                            <sch:rule context="win-def:fileeffectiverights_state/win-def:file_delete_child">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the file_delete_child entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="ferstefile_read_attributes">
                                                            <sch:rule context="win-def:fileeffectiverights_state/win-def:file_read_attributes">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the file_read_attributes entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="ferstefile_write_attributes">
                                                            <sch:rule context="win-def:fileeffectiverights_state/win-def:file_write_attributes">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the file_write_attributes entity of a fileeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="grouptst">
                              <sch:rule context="win-def:group_test/win-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:group_object/@id"><sch:value-of select="../@id"/> - the object child element of a group_test must reference a group_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:group_test/win-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:group_state/@id"><sch:value-of select="../@id"/> - the state child element of a group_test must reference a group_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="groupobjgroup">
                                                                        <sch:rule context="win-def:group_object/win-def:group">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the group entity of a group_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="groupstegroup">
                                                            <sch:rule context="win-def:group_state/win-def:group">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the group entity of a group_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="groupsteuser">
                                                            <sch:rule context="win-def:group_state/win-def:user">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the user entity of a group_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="groupsidtst">
                              <sch:rule context="win-def:group_sid_test/win-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:group_sid_object/@id"><sch:value-of select="../@id"/> - the object child element of a group_sid_test must reference a group_sid_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:group_sid_test/win-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:group_sid_state/@id"><sch:value-of select="../@id"/> - the state child element of a group_sid_test must reference a group_sid_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="groupsidobjgroup">
                                                                        <sch:rule context="win-def:group_sid_object/win-def:group_sid">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the group_sid entity of a group_sid_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="groupsidstegroup">
                                                            <sch:rule context="win-def:group_sid_state/win-def:group_sid">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the group_sid entity of a group_sid_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="groupsidsteuser">
                                                            <sch:rule context="win-def:group_sid_state/win-def:user_sid">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the user_sid entity of a group_sid_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="wininterfacetst">
                              <sch:rule context="win-def:interface_test/win-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:interface_object/@id"><sch:value-of select="../@id"/> - the object child element of an interface_test must reference an interface_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:interface_test/win-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:interface_state/@id"><sch:value-of select="../@id"/> - the state child element of an interface_test must reference an interface_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="wininterfaceobjname">
                                                                        <sch:rule context="win-def:interface_object/win-def:name">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the name entity of a interface_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="wininterfacestename">
                                                            <sch:rule context="win-def:interface_state/win-def:name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the name entity of an interface_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="wininterfacesteindex">
                                                            <sch:rule context="win-def:interface_state/win-def:index">
                                                                  <sch:assert test="@datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the index entity of an interface_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="wininterfacestetype">
                                                            <sch:rule context="win-def:interface_state/win-def:type">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the type entity of an interface_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="wininterfacestehardware_addr">
                                                            <sch:rule context="win-def:interface_state/win-def:hardware_addr">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the hardware_addr entity of an interface_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="wininterfacesteinet_addr">
                                                            <sch:rule context="win-def:interface_state/win-def:inet_addr">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the inet_addr entity of an interface_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="wininterfacestebroadcast_addr">
                                                            <sch:rule context="win-def:interface_state/win-def:broadcast_addr">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the broadcast_addr entity of an interface_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="wininterfacestenetmask">
                                                            <sch:rule context="win-def:interface_state/win-def:netmask">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the netmask entity of an interface_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="wininterfacesteaddr_type">
                                                            <sch:rule context="win-def:interface_state/win-def:addr_type">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the addr_type entity of an interface_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="lptst">
                              <sch:rule context="win-def:lockoutpolicy_test/win-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:lockoutpolicy_object/@id"><sch:value-of select="../@id"/> - the object child element of a lockoutpolicy_test must reference a lockoutpolicy_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:lockoutpolicy_test/win-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:lockoutpolicy_state/@id"><sch:value-of select="../@id"/> - the state child element of a lockoutpolicy_test must reference a lockoutpolicy_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="lpsteforce_logoff">
                                                            <sch:rule context="win-def:lockoutpolicy_state/win-def:force_logoff">
                                                                  <sch:assert test="@datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the force_logoff entity of a lockoutpolicy_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="lpstelockout_duration">
                                                            <sch:rule context="win-def:lockoutpolicy_state/win-def:lockout_duration">
                                                                  <sch:assert test="@datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the lockout_duration entity of a lockoutpolicy_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="lpstelockout_observation_window">
                                                            <sch:rule context="win-def:lockoutpolicy_state/win-def:lockout_observation_window">
                                                                  <sch:assert test="@datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the lockout_observation_window entity of a lockoutpolicy_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="lpstelockout_threshold">
                                                            <sch:rule context="win-def:lockoutpolicy_state/win-def:lockout_threshold">
                                                                  <sch:assert test="@datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the lockout_threshold entity of a lockoutpolicy_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="metabasetst">
                              <sch:rule context="win-def:metabase_test/win-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:metabase_object/@id"><sch:value-of select="../@id"/> - the object child element of a metabase_test must reference a metabase_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:metabase_test/win-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:metabase_state/@id"><sch:value-of select="../@id"/> - the state child element of a metabase_test must reference a metabase_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="metabaseobjkey">
                                                                        <sch:rule context="win-def:metabase_object/win-def:key">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the key entity of a metabase_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="metabaseobjid">
                                                                        <sch:rule context="win-def:metabase_object/win-def:id">
                                                                              <sch:assert test="@datatype='int'">
                                                                                    <sch:value-of select="../@id"/> - datatype attribute for the id entity of a metabase_object should be 'int'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="metabasestekey">
                                                            <sch:rule context="win-def:metabase_state/win-def:key">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the key entity of a metabase_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="metabasesteid">
                                                            <sch:rule context="win-def:metabase_state/win-def:id">
                                                                  <sch:assert test="@datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the id entity of a metabase_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="metabasestename">
                                                            <sch:rule context="win-def:metabase_state/win-def:name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the name entity of a metabase_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="metabasesteuser_type">
                                                            <sch:rule context="win-def:metabase_state/win-def:user_type">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the user_type entity of a metabase_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="metabasestedata_type">
                                                            <sch:rule context="win-def:metabase_state/win-def:data_type">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the data_type entity of a metabase_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="metabasestedata">
                                                            <sch:rule context="win-def:metabase_state/win-def:data">
                                                                  <sch:assert test="(@datatype='int' and (floor(.) = number(.))) or not(@datatype='int') or not(node())"><sch:value-of select="../@id"/> - The datatype has been set to 'int' but the value is not an integer.</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="pptst">
                              <sch:rule context="win-def:passwordpolicy_test/win-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:passwordpolicy_object/@id"><sch:value-of select="../@id"/> - the object child element of a passwordpolicy_test must reference a passwordpolicy_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:passwordpolicy_test/win-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:passwordpolicy_state/@id"><sch:value-of select="../@id"/> - the state child element of a passwordpolicy_test must reference a passwordpolicy_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="ppstemax_passwd_age">
                                                            <sch:rule context="win-def:passwordpolicy_state/win-def:max_passwd_age">
                                                                  <sch:assert test="@datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the max_passwd_age entity of a passwordpolicy_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="ppstemin_passwd_age">
                                                            <sch:rule context="win-def:passwordpolicy_state/win-def:min_passwd_age">
                                                                  <sch:assert test="@datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the min_passwd_age entity of a passwordpolicy_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="ppstemin_passwd_len">
                                                            <sch:rule context="win-def:passwordpolicy_state/win-def:min_passwd_len">
                                                                  <sch:assert test="@datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the min_passwd_len entity of a passwordpolicy_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="ppstepassword_hist_len">
                                                            <sch:rule context="win-def:passwordpolicy_state/win-def:password_hist_len">
                                                                  <sch:assert test="@datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the password_hist_len entity of a passwordpolicy_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="ppstepassword_complexity">
                                                            <sch:rule context="win-def:passwordpolicy_state/win-def:password_complexity">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the password_complexity entity of an passwordpolicy_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="ppstereversible_encryption">
                                                            <sch:rule context="win-def:passwordpolicy_state/win-def:reversible_encryption">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the reversible_encryption entity of an passwordpolicy_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="winporttst">
                              <sch:rule context="win-def:port_test/win-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:port_object/@id"><sch:value-of select="../@id"/> - the object child element of a port_test must reference a port_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:port_test/win-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:port_state/@id"><sch:value-of select="../@id"/> - the state child element of a port_test must reference a port_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="winportobjlocal_address">
                                                                        <sch:rule context="win-def:port_object/win-def:local_address">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the local_address entity of a port_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="winportobjlocal_port">
                                                                        <sch:rule context="win-def:port_object/win-def:local_port">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the local_port entity of a port_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="winportobjprotocol">
                                                                        <sch:rule context="win-def:port_object/win-def:protocol">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the protocol entity of a port_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="winportstelocal_address">
                                                            <sch:rule context="win-def:port_state/win-def:local_address">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the local_address entity of a port_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="winportstelocal_port">
                                                            <sch:rule context="win-def:port_state/win-def:local_port">
                                                                  <sch:assert test="@datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the local_port entity of a port_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="winportsteprotocol">
                                                            <sch:rule context="win-def:port_state/win-def:protocol">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the protocol entity of a port_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="winportstepid">
                                                            <sch:rule context="win-def:port_state/win-def:pid">
                                                                  <sch:assert test="@datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the pid entity of a port_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="pertst">
                              <sch:rule context="win-def:printereffectiverights_test/win-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:printereffectiverights_object/@id"><sch:value-of select="../@id"/> - the object child element of a printereffectiverights_test must reference a printereffectiverights_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:printereffectiverights_test/win-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:printereffectiverights_state/@id"><sch:value-of select="../@id"/> - the state child element of a printereffectiverights_test must reference a printereffectiverights_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="perobjprinter_name">
                                                                        <sch:rule context="win-def:printereffectiverights_object/win-def:printer_name">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the kprinter_nameey entity of a printereffectiverights_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="perobjtrustee_sid">
                                                                        <sch:rule context="win-def:printereffectiverights_object/win-def:trustee_sid">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the trustee_sid entity of a printereffectiverights_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rersteprinter_name">
                                                            <sch:rule context="win-def:regkeyeffectiverights_state/win-def:printer_name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the printer_name entity of a printereffectiverights_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="perstetrustee_sid">
                                                            <sch:rule context="win-def:printereffectiverights_state/win-def:trustee_sid">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the trustee_sid entity of a printereffectiverights_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="perstestandard_delete">
                                                            <sch:rule context="win-def:printereffectiverights_state/win-def:standard_delete">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the standard_delete entity of a printereffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="perstestandard_read_control">
                                                            <sch:rule context="win-def:printereffectiverights_state/win-def:standard_read_control">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the standard_read_control entity of a printereffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="perstestandard_write_dac">
                                                            <sch:rule context="win-def:printereffectiverights_state/win-def:standard_write_dac">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the standard_write_dac entity of a printereffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="perstestandard_write_owner">
                                                            <sch:rule context="win-def:printereffectiverights_state/win-def:standard_write_owner">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the standard_write_owner entity of a printereffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="perstestandard_synchronize">
                                                            <sch:rule context="win-def:printereffectiverights_state/win-def:standard_synchronize">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the standard_synchronize entity of a printereffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="persteaccess_system_security">
                                                            <sch:rule context="win-def:printereffectiverights_state/win-def:access_system_security">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the access_system_security entity of a printereffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="perstegeneric_read">
                                                            <sch:rule context="win-def:printereffectiverights_state/win-def:generic_read">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the generic_read entity of a printereffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="perstegeneric_write">
                                                            <sch:rule context="win-def:printereffectiverights_state/win-def:generic_write">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the generic_write entity of a printereffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="perstegeneric_execute">
                                                            <sch:rule context="win-def:printereffectiverights_state/win-def:generic_execute">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the generic_execute entity of a printereffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="perstegeneric_all">
                                                            <sch:rule context="win-def:printereffectiverights_state/win-def:generic_all">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the generic_all entity of a printereffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="persteprinter_access_administer">
                                                            <sch:rule context="win-def:printereffectiverights_state/win-def:printer_access_administer">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the printer_access_administer entity of a printereffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="persteprinter_access_use">
                                                            <sch:rule context="win-def:printereffectiverights_state/win-def:printer_access_use">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the printer_access_use entity of a printereffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="perstejob_access_administer">
                                                            <sch:rule context="win-def:printereffectiverights_state/win-def:job_access_administer">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the job_access_administer entity of a printereffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="perstejob_access_read">
                                                            <sch:rule context="win-def:printereffectiverights_state/win-def:job_access_read">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the job_access_read entity of a printereffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="processtst">
                              <sch:rule context="win-def:process_test/win-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:process_object/@id"><sch:value-of select="../@id"/> - the object child element of a process_test must reference a process_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:process_test/win-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:process_state/@id"><sch:value-of select="../@id"/> - the state child element of a process_test must reference a process_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="processobjcommand_line">
                                                                        <sch:rule context="win-def:process_object/win-def:command_line">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the command_line entity of a process_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="processstecommand_line">
                                                            <sch:rule context="win-def:process_state/win-def:command_line">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the command_line entity of a process_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="processstepid">
                                                            <sch:rule context="win-def:port_state/win-def:pid">
                                                                  <sch:assert test="@datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the pid entity of a port_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="processsteppid">
                                                            <sch:rule context="win-def:port_state/win-def:ppid">
                                                                  <sch:assert test="@datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the ppid entity of a port_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="processstepriority">
                                                            <sch:rule context="win-def:process_state/win-def:priority">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the priority entity of a process_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="processsteimage_path">
                                                            <sch:rule context="win-def:process_state/win-def:image_path">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the image_path entity of a process_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="processstecurrent_dir">
                                                            <sch:rule context="win-def:process_state/win-def:current_dir">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the current_dir entity of a process_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="regtst">
                              <sch:rule context="win-def:registry_test/win-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:registry_object/@id"><sch:value-of select="../@id"/> - the object child element of a registry_test must reference a registry_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:registry_test/win-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:registry_state/@id"><sch:value-of select="../@id"/> - the state child element of a registry_test must reference a registry_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="regobjhive">
                                                                        <sch:rule context="win-def:registry_object/win-def:hive">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the hive entity of a registry_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="regobjkey">
                                                                        <sch:rule context="win-def:registry_object/win-def:key">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the key entity of a registry_object should be 'string'</sch:assert>
                                                                              <sch:assert test="not(@xsi:nil='true') or ../win-def:name/@xsi:nil='true'"><sch:value-of select="../@id"/> - name entity must be nil when key is nil</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="regobjname">
                                                                        <sch:rule context="win-def:registry_object/win-def:name">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the name entity of a registry_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="regstehive">
                                                            <sch:rule context="win-def:registry_state/win-def:hive">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the hive entity of a registry_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="regstekey">
                                                            <sch:rule context="win-def:registry_state/win-def:key">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the key entity of a registry_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="regstename">
                                                            <sch:rule context="win-def:registry_state/win-def:name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the name entity of a registry_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="regstetype">
                                                            <sch:rule context="win-def:registry_state/win-def:type">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the type entity of a registry_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="regstevalue">
                                                            <sch:rule context="win-def:registry_state/win-def:value">
                                                                  <sch:assert test="(@datatype='int' and (floor(.) = number(.))) or not(@datatype='int') or not(node())"><sch:value-of select="../@id"/> - The datatype has been set to 'int' but the value is not an integer.</sch:assert>
                                                                  <!-- we can use the xpath 2.0 function matches() to define assertions for other datatypes -->
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rap53tst">
                              <sch:rule context="win-def:regkeyauditedpermissions53_test/win-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:regkeyauditedpermissions53_object/@id"><sch:value-of select="../@id"/> - the object child element of a regkeyauditedpermissions53_test must reference a regkeyauditedpermissions53_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:regkeyauditedpermissions53_test/win-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:regkeyauditedpermissions53_state/@id"><sch:value-of select="../@id"/> - the state child element of a regkeyauditedpermissions53_test must reference a regkeyauditedpermissions53_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rap53objhive">
                                                                        <sch:rule context="win-def:regkeyauditedpermissions53_object/win-def:hive">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the hive entity of a regkeyauditedpermissions53_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rap53objkey">
                                                                        <sch:rule context="win-def:regkeyauditedpermissions53_object/win-def:key">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the key entity of a regkeyauditedpermissions53_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rap53objtrustee_sid">
                                                                        <sch:rule context="win-def:regkeyauditedpermissions53_object/win-def:trustee_sid">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the trustee_sid entity of a regkeyauditedpermissions53_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rap53stehive">
                                                            <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:hive">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the hive entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rap53stekey">
                                                            <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:key">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the key entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rap53stetrustee_sid">
                                                            <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:trustee_sid">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the trustee_sid entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rap53stestandard_delete">
                                                            <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:standard_delete">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the standard_delete entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rap53stestandard_read_control">
                                                            <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:standard_read_control">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the standard_read_control entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rap53stestandard_write_dac">
                                                            <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:standard_write_dac">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the standard_write_dac entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rap53stestandard_write_owner">
                                                            <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:standard_write_owner">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the standard_write_owner entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rap53stestandard_synchronize">
                                                            <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:standard_synchronize">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the standard_synchronize entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rap53steaccess_system_security">
                                                            <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:access_system_security">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the access_system_security entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rap53stegeneric_read">
                                                            <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:generic_read">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the generic_read entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rap53stegeneric_write">
                                                            <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:generic_write">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the generic_write entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rap53stegeneric_execute">
                                                            <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:generic_execute">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the generic_execute entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rap53stegeneric_all">
                                                            <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:generic_all">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the generic_all entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rap53stekey_query_value">
                                                            <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:key_query_value">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the key_query_value entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rap53stekey_set_value">
                                                            <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:key_set_value">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the key_set_value entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rap53stekey_create_sub_key">
                                                            <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:key_create_sub_key">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the key_create_sub_key entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rap53stekey_enumerate_sub_keys">
                                                            <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:key_enumerate_sub_keys">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the key_enumerate_sub_keys entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rap53stekey_notify">
                                                            <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:key_notify">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the key_notify entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rap53stekey_create_link">
                                                            <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:key_create_link">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the key_create_link entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rap53stekey_wow64_64key">
                                                            <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:key_wow64_64key">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the key_wow64_64key entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rap53stekey_wow64_32key">
                                                            <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:key_wow64_32key">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the key_wow64_32key entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rap53stekey_wow64_res">
                                                            <sch:rule context="win-def:regkeyauditedpermissions53_state/win-def:key_wow64_res">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the key_wow64_res entity of a regkeyauditedpermissions53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="raptst">
                              <sch:rule context="win-def:regkeyauditedpermissions_test/win-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:regkeyauditedpermissions_object/@id"><sch:value-of select="../@id"/> - the object child element of a regkeyauditedpermissions_test must reference a regkeyauditedpermissions_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:regkeyauditedpermissions_test/win-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:regkeyauditedpermissions_state/@id"><sch:value-of select="../@id"/> - the state child element of a regkeyauditedpermissions_test must reference a regkeyauditedpermissions_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rapobjhive">
                                                                        <sch:rule context="win-def:regkeyauditedpermissions_object/win-def:hive">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the hive entity of a regkeyauditedpermissions_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rapobjkey">
                                                                        <sch:rule context="win-def:regkeyauditedpermissions_object/win-def:key">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the key entity of a regkeyauditedpermissions_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rapobjtrustee_name">
                                                                        <sch:rule context="win-def:regkeyauditedpermissions_object/win-def:trustee_name">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the trustee_name entity of a regkeyauditedpermissions_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rapstehive">
                                                            <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:hive">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the hive entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rapstekey">
                                                            <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:key">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the key entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rapstetrustee_name">
                                                            <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:trustee_name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the trustee_name entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rapstestandard_delete">
                                                            <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:standard_delete">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the standard_delete entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rapstestandard_read_control">
                                                            <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:standard_read_control">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the standard_read_control entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rapstestandard_write_dac">
                                                            <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:standard_write_dac">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the standard_write_dac entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rapstestandard_write_owner">
                                                            <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:standard_write_owner">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the standard_write_owner entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rapstestandard_synchronize">
                                                            <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:standard_synchronize">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the standard_synchronize entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rapsteaccess_system_security">
                                                            <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:access_system_security">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the access_system_security entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rapstegeneric_read">
                                                            <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:generic_read">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the generic_read entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rapstegeneric_write">
                                                            <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:generic_write">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the generic_write entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rapstegeneric_execute">
                                                            <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:generic_execute">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the generic_execute entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rapstegeneric_all">
                                                            <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:generic_all">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the generic_all entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rapstekey_query_value">
                                                            <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:key_query_value">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the key_query_value entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rapstekey_set_value">
                                                            <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:key_set_value">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the key_set_value entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rapstekey_create_sub_key">
                                                            <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:key_create_sub_key">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the key_create_sub_key entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rapstekey_enumerate_sub_keys">
                                                            <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:key_enumerate_sub_keys">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the key_enumerate_sub_keys entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rapstekey_notify">
                                                            <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:key_notify">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the key_notify entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rapstekey_create_link">
                                                            <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:key_create_link">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the key_create_link entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rapstekey_wow64_64key">
                                                            <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:key_wow64_64key">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the key_wow64_64key entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rapstekey_wow64_32key">
                                                            <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:key_wow64_32key">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the key_wow64_32key entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rapstekey_wow64_res">
                                                            <sch:rule context="win-def:regkeyauditedpermissions_state/win-def:key_wow64_res">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the key_wow64_res entity of a regkeyauditedpermissions_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rer53tst">
                              <sch:rule context="win-def:regkeyeffectiverights53_test/win-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:regkeyeffectiverights53_object/@id"><sch:value-of select="../@id"/> - the object child element of a regkeyeffectiverights53_test must reference a regkeyeffectiverights53_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:regkeyeffectiverights53_test/win-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:regkeyeffectiverights53_state/@id"><sch:value-of select="../@id"/> - the state child element of a regkeyeffectiverights53_test must reference a regkeyeffectiverights53_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rer53objhive">
                                                                        <sch:rule context="win-def:regkeyeffectiverights53_object/win-def:hive">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the hive entity of a regkeyeffectiverights53_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rer53objkey">
                                                                        <sch:rule context="win-def:regkeyeffectiverights53_object/win-def:key">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the key entity of a regkeyeffectiverights53_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rer53objtrustee_sid">
                                                                        <sch:rule context="win-def:regkeyeffectiverights53_object/win-def:trustee_sid">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the trustee_sid entity of a regkeyeffectiverights53_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rer53stehive">
                                                            <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:hive">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the hive entity of a regkeyeffectiverights53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rer53stekey">
                                                            <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:key">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the key entity of a regkeyeffectiverights53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rer53stetrustee_sid">
                                                            <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:trustee_sid">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the trustee_sid entity of a regkeyeffectiverights53_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rer53stestandard_delete">
                                                            <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:standard_delete">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the standard_delete entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rer53stestandard_read_control">
                                                            <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:standard_read_control">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the standard_read_control entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rer53stestandard_write_dac">
                                                            <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:standard_write_dac">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the standard_write_dac entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rer53stestandard_write_owner">
                                                            <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:standard_write_owner">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the standard_write_owner entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rer53stestandard_synchronize">
                                                            <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:standard_synchronize">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the standard_synchronize entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rer53steaccess_system_security">
                                                            <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:access_system_security">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the access_system_security entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rer53stegeneric_read">
                                                            <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:generic_read">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the generic_read entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rer53stegeneric_write">
                                                            <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:generic_write">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the generic_write entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rer53stegeneric_execute">
                                                            <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:generic_execute">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the generic_execute entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rer53stegeneric_all">
                                                            <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:generic_all">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the generic_all entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rer53stekey_query_value">
                                                            <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:key_query_value">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the key_query_value entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rer53stekey_set_value">
                                                            <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:key_set_value">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the key_set_value entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rer53stekey_create_sub_key">
                                                            <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:key_create_sub_key">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the key_create_sub_key entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rer53stekey_enumerate_sub_keys">
                                                            <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:key_enumerate_sub_keys">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the key_enumerate_sub_keys entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rer53stekey_notify">
                                                            <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:key_notify">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the key_notify entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rer53stekey_create_link">
                                                            <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:key_create_link">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the key_create_link entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rer53stekey_wow64_64key">
                                                            <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:key_wow64_64key">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the key_wow64_64key entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rer53stekey_wow64_32key">
                                                            <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:key_wow64_32key">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the key_wow64_32key entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rer53stekey_wow64_res">
                                                            <sch:rule context="win-def:regkeyeffectiverights53_state/win-def:key_wow64_res">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the key_wow64_res entity of a regkeyeffectiverights53_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rertst">
                              <sch:rule context="win-def:regkeyeffectiverights_test/win-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:regkeyeffectiverights_object/@id"><sch:value-of select="../@id"/> - the object child element of a regkeyeffectiverights_test must reference a regkeyeffectiverights_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:regkeyeffectiverights_test/win-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:regkeyeffectiverights_state/@id"><sch:value-of select="../@id"/> - the state child element of a regkeyeffectiverights_test must reference a regkeyeffectiverights_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rerobjhive">
                                                                        <sch:rule context="win-def:regkeyeffectiverights_object/win-def:hive">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the hive entity of a regkeyeffectiverights_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rerobjkey">
                                                                        <sch:rule context="win-def:regkeyeffectiverights_object/win-def:key">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the key entity of a regkeyeffectiverights_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rerobjtrustee_name">
                                                                        <sch:rule context="win-def:regkeyeffectiverights_object/win-def:trustee_name">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the trustee_name entity of a regkeyeffectiverights_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rerstehive">
                                                            <sch:rule context="win-def:regkeyeffectiverights_state/win-def:hive">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the hive entity of a regkeyeffectiverights_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rerstekey">
                                                            <sch:rule context="win-def:regkeyeffectiverights_state/win-def:key">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the key entity of a regkeyeffectiverights_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rerstetrustee_name">
                                                            <sch:rule context="win-def:regkeyeffectiverights_state/win-def:trustee_name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the trustee_name entity of a regkeyeffectiverights_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rerstestandard_delete">
                                                            <sch:rule context="win-def:regkeyeffectiverights_state/win-def:standard_delete">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the standard_delete entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rerstestandard_read_control">
                                                            <sch:rule context="win-def:regkeyeffectiverights_state/win-def:standard_read_control">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the standard_read_control entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rerstestandard_write_dac">
                                                            <sch:rule context="win-def:regkeyeffectiverights_state/win-def:standard_write_dac">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the standard_write_dac entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rerstestandard_write_owner">
                                                            <sch:rule context="win-def:regkeyeffectiverights_state/win-def:standard_write_owner">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the standard_write_owner entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rerstestandard_synchronize">
                                                            <sch:rule context="win-def:regkeyeffectiverights_state/win-def:standard_synchronize">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the standard_synchronize entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rersteaccess_system_security">
                                                            <sch:rule context="win-def:regkeyeffectiverights_state/win-def:access_system_security">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the access_system_security entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rerstegeneric_read">
                                                            <sch:rule context="win-def:regkeyeffectiverights_state/win-def:generic_read">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the generic_read entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rerstegeneric_write">
                                                            <sch:rule context="win-def:regkeyeffectiverights_state/win-def:generic_write">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the generic_write entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rerstegeneric_execute">
                                                            <sch:rule context="win-def:regkeyeffectiverights_state/win-def:generic_execute">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the generic_execute entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rerstegeneric_all">
                                                            <sch:rule context="win-def:regkeyeffectiverights_state/win-def:generic_all">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the generic_all entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rerstekey_query_value">
                                                            <sch:rule context="win-def:regkeyeffectiverights_state/win-def:key_query_value">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the key_query_value entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rerstekey_set_value">
                                                            <sch:rule context="win-def:regkeyeffectiverights_state/win-def:key_set_value">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the key_set_value entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rerstekey_create_sub_key">
                                                            <sch:rule context="win-def:regkeyeffectiverights_state/win-def:key_create_sub_key">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the key_create_sub_key entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rerstekey_enumerate_sub_keys">
                                                            <sch:rule context="win-def:regkeyeffectiverights_state/win-def:key_enumerate_sub_keys">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the key_enumerate_sub_keys entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rerstekey_notify">
                                                            <sch:rule context="win-def:regkeyeffectiverights_state/win-def:key_notify">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the key_notify entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rerstekey_create_link">
                                                            <sch:rule context="win-def:regkeyeffectiverights_state/win-def:key_create_link">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the key_create_link entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rerstekey_wow64_64key">
                                                            <sch:rule context="win-def:regkeyeffectiverights_state/win-def:key_wow64_64key">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the key_wow64_64key entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rerstekey_wow64_32key">
                                                            <sch:rule context="win-def:regkeyeffectiverights_state/win-def:key_wow64_32key">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the key_wow64_32key entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="rerstekey_wow64_res">
                                                            <sch:rule context="win-def:regkeyeffectiverights_state/win-def:key_wow64_res">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the key_wow64_res entity of a regkeyeffectiverights_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="srtst">
                              <sch:rule context="win-def:sharedresource_test/win-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:sharedresource_object/@id"><sch:value-of select="../@id"/> - the object child element of a sharedresource_test must reference a sharedresource_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:sharedresource_test/win-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:sharedresource_state/@id"><sch:value-of select="../@id"/> - the state child element of a sharedresource_test must reference a sharedresource_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="srobjnetname">
                                                                        <sch:rule context="win-def:sharedresource_object/win-def:netname">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the netname entity of a sharedresource_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="srstenetname">
                                                            <sch:rule context="win-def:sharedresource_state/win-def:netname">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the netname entity of a sharedresource_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="srsteshared_type">
                                                            <sch:rule context="win-def:sharedresource_state/win-def:shared_type">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the shared_type entity of a sharedresource_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="srstemax_uses">
                                                            <sch:rule context="win-def:sharedresource_state/win-def:max_uses">
                                                                  <sch:assert test="@datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the max_uses entity of a sharedresource_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="srstecurrent_uses">
                                                            <sch:rule context="win-def:sharedresource_state/win-def:current_uses">
                                                                  <sch:assert test="@datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the current_uses entity of a sharedresource_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="srstelocal_path">
                                                            <sch:rule context="win-def:sharedresource_state/win-def:local_path">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the local_path entity of a sharedresource_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="srsteaccess_read_permission">
                                                            <sch:rule context="win-def:sharedresource_state/win-def:access_read_permission">
                                                                  <sch:assert test="@datatype='boolean'">
                                                                        <sch:value-of select="../@id"/> - datatype attribute for the access_read_permission entity of a sharedresource_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="srsteaccess_write_permission">
                                                            <sch:rule context="win-def:sharedresource_state/win-def:access_write_permission">
                                                                  <sch:assert test="@datatype='boolean'">
                                                                        <sch:value-of select="../@id"/> - datatype attribute for the access_write_permission entity of a sharedresource_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="srsteaccess_create_permission">
                                                            <sch:rule context="win-def:sharedresource_state/win-def:access_create_permission">
                                                                  <sch:assert test="@datatype='boolean'">
                                                                        <sch:value-of select="../@id"/> - datatype attribute for the access_create_permission entity of a sharedresource_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="srsteaccess_exec_permission">
                                                            <sch:rule context="win-def:sharedresource_state/win-def:access_exec_permission">
                                                                  <sch:assert test="@datatype='boolean'">
                                                                        <sch:value-of select="../@id"/> - datatype attribute for the access_exec_permission entity of a sharedresource_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="srsteaccess_delete_permission">
                                                            <sch:rule context="win-def:sharedresource_state/win-def:access_delete_permission">
                                                                  <sch:assert test="@datatype='boolean'">
                                                                        <sch:value-of select="../@id"/> - datatype attribute for the access_delete_permission entity of a sharedresource_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="srsteaccess_atrib_permission">
                                                            <sch:rule context="win-def:sharedresource_state/win-def:access_atrib_permission">
                                                                  <sch:assert test="@datatype='boolean'">
                                                                        <sch:value-of select="../@id"/> - datatype attribute for the access_atrib_permission entity of a sharedresource_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="srsteaccess_perm_permission">
                                                            <sch:rule context="win-def:sharedresource_state/win-def:access_perm_permission">
                                                                  <sch:assert test="@datatype='boolean'">
                                                                        <sch:value-of select="../@id"/> - datatype attribute for the access_perm_permission entity of a sharedresource_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="srsteaccess_all_permission">
                                                            <sch:rule context="win-def:sharedresource_state/win-def:access_all_permission">
                                                                  <sch:assert test="@datatype='boolean'">
                                                                        <sch:value-of select="../@id"/> - datatype attribute for the access_all_permission entity of a sharedresource_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="sidtst">
                              <sch:rule context="win-def:sid_test/win-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:sid_object/@id"><sch:value-of select="../@id"/> - the object child element of a sid_test must reference a sid_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:sid_test/win-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:sid_state/@id"><sch:value-of select="../@id"/> - the state child element of a sid_test must reference a sid_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="sidobjtrustee_name">
                                                                        <sch:rule context="win-def:sid_object/win-def:trustee_name">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the trustee_name entity of a sid_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="sidstetrustee_name">
                                                            <sch:rule context="win-def:sid_state/win-def:trustee_name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the trustee_name entity of a sid_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="sidstetrustee_sid">
                                                            <sch:rule context="win-def:sid_state/win-def:trustee_sid">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the trustee_sid entity of a sid_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="sidstetrustee_domain">
                                                            <sch:rule context="win-def:sid_state/win-def:trustee_domain">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the trustee_domain entity of a sid_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="sidsidtst">
                              <sch:rule context="win-def:sid_sid_test/win-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:sid_sid_object/@id"><sch:value-of select="../@id"/> - the object child element of a sid_sid_test must reference a sid_sid_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:sid_sid_test/win-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:sid_sid_state/@id"><sch:value-of select="../@id"/> - the state child element of a sid_sid_test must reference a sid_sid_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="sidsidobjtrustee_name">
                                                                        <sch:rule context="win-def:sid_sid_object/win-def:trustee_sid">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the trustee_sid entity of a sid_sid_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="sidsidstetrustee_sid">
                                                            <sch:rule context="win-def:sid_sid_state/win-def:trustee_sid">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the trustee_sid entity of a sid_sid_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="sidsidstetrustee_name">
                                                            <sch:rule context="win-def:sid_sid_state/win-def:trustee_name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the trustee_name entity of a sid_sid_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="sidsidstetrustee_domain">
                                                            <sch:rule context="win-def:sid_sid_state/win-def:trustee_domain">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the trustee_domain entity of a sid_sid_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="uactst">
                              <sch:rule context="win-def:uac_test/win-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:uac_object/@id"><sch:value-of select="../@id"/> - the object child element of a uac_test must reference a uac_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:uac_test/win-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:uac_state/@id"><sch:value-of select="../@id"/> - the state child element of a uac_test must reference a uac_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="uacsteadminapprovalmode">
                                                            <sch:rule context="win-def:uac_state/win-def:admin_approval_mode">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the admin_approval_mode entity of a uac_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="uacstebehaviorelevationadmin">
                                                            <sch:rule context="win-def:uac_state/win-def:elevation_prompt_admin">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the elevation_prompt_admin entity of a uac_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="uacsteelevationpromptstandard">
                                                            <sch:rule context="win-def:uac_state/win-def:elevation_prompt_standard">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the elevation_prompt_standard entity of a uac_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="uacstedetectinstallations">
                                                            <sch:rule context="win-def:uac_state/win-def:detect_installations">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the detect_installations entity of a uac_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="uacsteelevatesignedexecutables">
                                                            <sch:rule context="win-def:uac_state/win-def:elevate_signed_executables">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the elevate_signed_executables entity of a uac_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="uacsteelevateuiaccess">
                                                            <sch:rule context="win-def:uac_state/win-def:elevate_uiaccess">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the elevate_uiaccess entity of a uac_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="uacsterunadminsaam">
                                                            <sch:rule context="win-def:uac_state/win-def:run_admins_aam">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the run_admins_aam entity of a uac_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="uacstesecuredesktop">
                                                            <sch:rule context="win-def:uac_state/win-def:secure_desktop">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the secure_desktop entity of a uac_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="uacstevirtualizewritefailures">
                                                            <sch:rule context="win-def:uac_state/win-def:virtualize_write_failures">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the virtualize_write_failures entity of a uac_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="usertst">
                              <sch:rule context="win-def:user_test/win-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:user_object/@id"><sch:value-of select="../@id"/> - the object child element of a user_test must reference a user_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:user_test/win-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:user_state/@id"><sch:value-of select="../@id"/> - the state child element of a user_test must reference a user_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="userobjuser">
                                                                        <sch:rule context="win-def:user_object/win-def:user">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the user entity of a user_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="usersteuser">
                                                            <sch:rule context="win-def:user_state/win-def:user">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the user entity of a user_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="usersteenabled">
                                                            <sch:rule context="win-def:user_state/win-def:enabled">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the enabled entity of a user_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="userstegroup">
                                                            <sch:rule context="win-def:user_state/win-def:group">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the group entity of a user_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="usersid55tst">
                    <sch:rule context="win-def:user_sid55_test/win-def:object">
                        <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:user_sid55_object/@id"><sch:value-of select="../@id"/> - the object child element of a user_sid55_test must reference a user_sid55_object</sch:assert>
                    </sch:rule>
                    <sch:rule context="win-def:user_sid55_test/win-def:state">
                        <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:user_sid55_state/@id"><sch:value-of select="../@id"/> - the state child element of a user_sid55_test must reference a user_sid55_state</sch:assert>
                    </sch:rule>
                </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="usersid55objuser">
                                                <sch:rule context="win-def:user_sid55_object/win-def:user_sid">
                                                    <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the user_sid entity of a user_sid55_object should be 'string'</sch:assert>
                                                </sch:rule>
                                            </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="usersid55steuser">
                                        <sch:rule context="win-def:user_sid55_state/win-def:user_sid">
                                            <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the user_sid entity of a user_sid55_state should be 'string'</sch:assert>
                                        </sch:rule>
                                    </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="usersid55steenabled">
                                        <sch:rule context="win-def:user_sid55_state/win-def:enabled">
                                            <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the enabled entity of a user_sid55_state should be 'boolean'</sch:assert>
                                        </sch:rule>
                                    </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="usersid55stegroup">
                                        <sch:rule context="win-def:user_sid_55state/win-def:group_sid">
                                            <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the group_sid entity of a user_sid55_state should be 'string'</sch:assert>
                                        </sch:rule>
                                    </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="usersidtst">
                              <sch:rule context="win-def:user_sid_test/win-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:user_sid_object/@id"><sch:value-of select="../@id"/> - the object child element of a user_sid_test must reference a user_sid_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:user_sid_test/win-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:user_sid_state/@id"><sch:value-of select="../@id"/> - the state child element of a user_sid_test must reference a user_sid_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="usersidobjuser">
                                                                        <sch:rule context="win-def:user_sid_object/win-def:user_sid">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the user_sid entity of a user_sid_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="usersidsteuser">
                                                            <sch:rule context="win-def:user_sid_state/win-def:user_sid">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the user_sid entity of a user_sid_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="usersidsteenabled">
                                                            <sch:rule context="win-def:user_sid_state/win-def:enabled">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the enabled entity of a user_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="usersidstegroup">
                                                            <sch:rule context="win-def:user_sid_state/win-def:group_sid">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the group_sid entity of a user_sid_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="volumetst">
                              <sch:rule context="win-def:volume_test/win-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:volume_object/@id"><sch:value-of select="../@id"/> - the object child element of a volume_test must reference a volume_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:volume_test/win-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:volume_state/@id"><sch:value-of select="../@id"/> - the state child element of a volume_test must reference a volume_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="volobjrootpath">
                                                                        <sch:rule context="win-def:volume_object/win-def:rootpath">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the rootpath entity of a volume_object should be 'string'</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="volumesterootpath">
                                                            <sch:rule context="win-def:volume_state/win-def:rootpath">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the rootpath entity of a volume_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="volumestefile_system">
                                                            <sch:rule context="win-def:volume_state/win-def:file_system">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the file_system entity of a volume_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="volumestename">
                                                            <sch:rule context="win-def:volume_state/win-def:name">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the name entity of a volume_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="volstevolume_max_component_length">
                                                            <sch:rule context="win-def:volume_state/win-def:volume_max_component_length">
                                                                  <sch:assert test="@datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the volume_max_component_length entity of a volume_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="volsteserial_number">
                                                            <sch:rule context="win-def:volume_state/win-def:serial_number">
                                                                  <sch:assert test="@datatype='int'"><sch:value-of select="../@id"/> - datatype attribute for the serial_number entity of a volume_state should be 'int'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="volstefile_case_sensitive_search">
                                                            <sch:rule context="win-def:volume_state/win-def:file_case_sensitive_search">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the file_case_sensitive_search entity of a volume_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="volstefile_case_preserved_names">
                                                            <sch:rule context="win-def:volume_state/win-def:file_case_preserved_names">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the file_case_preserved_names entity of a volume_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="volstefile_unicode_on_disk">
                                                            <sch:rule context="win-def:volume_state/win-def:file_unicode_on_disk">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the file_unicode_on_disk entity of a volume_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="volstefile_persistent_acls">
                                                            <sch:rule context="win-def:volume_state/win-def:file_persistent_acls">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the file_persistent_acls entity of a volume_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="volstefile_file_compression">
                                                            <sch:rule context="win-def:volume_state/win-def:file_file_compression">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the file_file_compression entity of a volume_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="volstefile_volume_quotas">
                                                            <sch:rule context="win-def:volume_state/win-def:file_volume_quotas">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the file_volume_quotas entity of a volume_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="volstefile_supports_sparse_files">
                                                            <sch:rule context="win-def:volume_state/win-def:file_supports_sparse_files">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the file_supports_sparse_files entity of a volume_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="volstefile_supports_reparse_points">
                                                            <sch:rule context="win-def:volume_state/win-def:file_supports_reparse_points">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the file_supports_reparse_points entity of a volume_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="volstefile_supports_remote_storage">
                                                            <sch:rule context="win-def:volume_state/win-def:file_supports_remote_storage">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the file_supports_remote_storage entity of a volume_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="volstefile_volume_is_compressed">
                                                            <sch:rule context="win-def:volume_state/win-def:file_volume_is_compressed">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the file_volume_is_compressed entity of a volume_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="volstefile_supports_object_ids">
                                                            <sch:rule context="win-def:volume_state/win-def:file_supports_object_ids">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the file_supports_object_ids entity of a volume_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="volstefile_supports_encryption">
                                                            <sch:rule context="win-def:volume_state/win-def:file_supports_encryption">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the file_supports_encryption entity of a volume_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="volstefile_named_streams">
                                                            <sch:rule context="win-def:volume_state/win-def:file_named_streams">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the file_named_streams entity of a volume_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="volstefile_read_only_volume">
                                                            <sch:rule context="win-def:volume_state/win-def:file_read_only_volume">
                                                                  <sch:assert test="@datatype='boolean'"><sch:value-of select="../@id"/> - datatype attribute for the file_read_only_volume entity of a volume_state should be 'boolean'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="wmitst">
                              <sch:rule context="win-def:wmi_test/win-def:object">
                                    <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:wmi_object/@id"><sch:value-of select="../@id"/> - the object child element of a wmi_test must reference a wmi_object</sch:assert>
                              </sch:rule>
                              <sch:rule context="win-def:wmi_test/win-def:state">
                                    <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:wmi_state/@id"><sch:value-of select="../@id"/> - the state child element of a wmi_test must reference a wmi_state</sch:assert>
                              </sch:rule>
                        </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="wmiobjnamespace">
                                                                        <sch:rule context="win-def:wmi_object/win-def:namespace">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the namespace entity of a wmi_object should be 'string'</sch:assert>
                                                                            <sch:assert test="not(@operation) or @operation='equals'"><sch:value-of select="../@id"/> - operation attribute for the namespace entity of a wmi_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="wmiobjwql">
                                                                        <sch:rule context="win-def:wmi_object/win-def:wql">
                                                                              <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the wql entity of a wmi_object should be 'string'</sch:assert>
                                                                            <sch:assert test="not(@operation) or @operation='equals'"><sch:value-of select="../@id"/> - operation attribute for the wql entity of a wmi_object should be 'equals', note that this overrules the general operation attribute validation (i.e. follow this one)</sch:assert>
                                                                        </sch:rule>
                                                                  </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="wmistenamespace">
                                                            <sch:rule context="win-def:wmi_state/win-def:namespace">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the namespace entity of a wmi_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="wmistewql">
                                                            <sch:rule context="win-def:wmi_state/win-def:wql">
                                                                  <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the wql entity of a wmi_state should be 'string'</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="wmisteresult">
                                                            <sch:rule context="win-def:wmi_state/win-def:result">
                                                                  <sch:assert test="(@datatype='int' and (floor(.) = number(.))) or not(@datatype='int') or not(node())"><sch:value-of select="../@id"/> - The datatype has been set to 'int' but the value is not an integer.</sch:assert>
                                                            </sch:rule>
                                                      </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="wuaupdatesearchertst">
                    <sch:rule context="win-def:wuaupdatesearcher_test/win-def:object">
                        <sch:assert test="@object_ref=/oval-def:oval_definitions/oval-def:objects/win-def:wuasearch_object/@id">
                            <sch:value-of select="../@id"/> - the object child element of a wuaupdatesearcher_test must reference a wuaupdatesearcher_object
                        </sch:assert>
                    </sch:rule>
                    <sch:rule context="win-def:wuaupdatesearcher_test/win-def:state">
                        <sch:assert test="@state_ref=/oval-def:oval_definitions/oval-def:states/win-def:wuasearch_state/@id">
                            <sch:value-of select="../@id"/> - the state child element of a wuaupdatesearcher_test must reference a wuaupdatesearcher_state
                        </sch:assert>
                    </sch:rule>
                </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="wuaupdatesearcherobjsearchcriteria">
                                                <sch:rule context="win-def:wuaupdatesearcher_object/win-def:search_criteria">
                                                    <sch:assert test="not(@datatype) or @datatype='string'">
                                                        <sch:value-of select="../@id"/> - datatype attribute for the search_criteria entity of a wuaupdatesearcher_object should be 'string'
                                                    </sch:assert>
                                                    <sch:assert test="not(@operation) or @operation='equals'">
                                                        <sch:value-of select="../@id"/> - operation attribute for the search_criteria entity of a wuaupdatesearcher_object should be 'equals'
                                                    </sch:assert>
                                                </sch:rule>
                                            </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="wuaupdatesearcherstesearchcriteria">
                                        <sch:rule context="win-def:wuaupdatesearcher_state/win-def:search_criteria">
                                            <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the search_criteria entity of a wuaupdatesearcher_state should be 'string'</sch:assert>
                                        </sch:rule>
                                    </sch:pattern>
  <sch:pattern xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:oval="http://oval.mitre.org/XMLSchema/oval-common-5" xmlns:oval-def="http://oval.mitre.org/XMLSchema/oval-definitions-5" xmlns:win-def="http://oval.mitre.org/XMLSchema/oval-definitions-5#windows" id="wuaupdatesearchersteupdateid">
                                        <sch:rule context="win-def:wuaupdatesearcher_state/win-def:update_id">
                                            <sch:assert test="not(@datatype) or @datatype='string'"><sch:value-of select="../@id"/> - datatype attribute for the update_id entity of a wuaupdatesearcher_state should be 'string'</sch:assert>
                                        </sch:rule>
                                    </sch:pattern>
  <sch:diagnostics/>
</sch:schema>
