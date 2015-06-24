/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.cisecurity.sca;

import java.util.HashMap;

/**
 *
 * @author wmunyan
 */
public class Constants {
    // OVAL
    public static final String OVALDEF_NAMESPACE = "http://oval.mitre.org/XMLSchema/oval-definitions-5";
    
    // SCAP 1.2-specific constants...
    public static final String SCAP12_NAMESPACE         = "http://scap.nist.gov/schema/scap/source/1.2";
    public static final String SCAP12_STYLE             = "SCAP_1.2";
    public static final String SCAP12_BMK_TITLE_XPATH   = "//xccdf:Benchmark/xccdf:title";
    public static final String SCAP12_BMK_ID_XPATH      = "/data-stream-collection/@id";
    public static final String SCAP12_VERSION           = "1.2";
    public static final String SCAP12_SCHEMATRON        = "/data-stream-collection/@schematron-version";
    public static final String SCAP12_USE_CASE          = "/data-stream-collection/@use-case";
    public static final String SCAP12_RESULT_XPATH_BASE = "/execute-result/out";

    // XCCDF 1.2-specific constants...
    public static final String XCCDF12_NAMESPACE                = "http://checklists.nist.gov/xccdf/1.2";
    public static final String XCCDF12_STYLE                    = "SCAP_1.2";
    public static final String XCCDF12_BMK_TITLE_XPATH          = "/xccdf:Benchmark/xccdf:title";
    public static final String XCCDF12_BMK_ID_XPATH             = "/xccdf:Benchmark/@id";
    public static final String XCCDF12_GET_PROFILES_XPATH       = "//xccdf:Profile[@abstract != 'true' or not(@abstract)]";
    public static final String XCCDF12_CURR_PROFILE_ID_XPATH    = "@id";
    public static final String XCCDF12_CURR_PROFILE_TITLE_XPATH = "xccdf:title";
    public static final String XCCDF12_VERSION                  = "1.2";
    public static final String XCCDF12_SCHEMATRON               = "";
    public static final String XCCDF12_USE_CASE                 = "CONFIGURATION";
    public static final String XCCDF12_GET_CHECKLIST_CPE        = "/xccdf:Benchmark/xccdf:platform/@idref";
    public static final String XCCDF12_HREF_XPATH               = "//xccdf:Rule/xccdf:check/xccdf:check-content-ref";

    // constants defined for Asset Reporting Format (ARF)...
    public static final String ARF_XSI_NAMESPACE      = "http://www.w3.org/2001/XMLSchema-instance";
    public static final String ARF_AI_NAMESPACE       = "http://scap.nist.gov/schema/asset-identification/1.1";
    public static final String ARF_ARF_NAMESPACE      = "http://scap.nist.gov/schema/asset-reporting-format/1.1";
    public static final String ARF_ARCREL_NAMESPACE   = "http://scap.nist.gov/schema/reporting-core/1.1";
    public static final String ARF_ARFREL_NAMESPACE   = "http://scap.nist.gov/vocabulary/arf/relationships/1.0#";
    public static final String ARF_CAT_NAMESPACE      = "urn:oasis:names:tc:entity:xmlns:xml:catalog";
    public static final String ARF_CON_NAMESPACE      = "http://scap.nist.gov/schema/scap/constructs/1.2";
    public static final String ARF_CPE2_NAMESPACE     = "http://cpe.mitre.org/language/2.0";
    public static final String ARF_CPE2DICT_NAMESPACE = "http://cpe.mitre.org/dictionary/2.0";
    public static final String ARF_CVE_NAMESPACE      = "http://scap.nist.gov/schema/vulnerability/0.4";
    public static final String ARF_CVSS_NAMESPACE     = "http://scap.nist.gov/schema/cvss-v2/0.2";
    public static final String ARF_DC_NAMESPACE       = "http://purl.org/dc/elements/1.1/";
    public static final String ARF_DS_NAMESPACE       = "http://scap.nist.gov/schema/scap/source/1.2";
    public static final String ARF_DT_NAMESPACE       = "http://scap.nist.gov/schema/xml-dsig/1.0";
    public static final String ARF_NVD_NAMESPACE      = "http://scap.nist.gov/schema/feed/vulnerability/2.0";
    public static final String ARF_OCIL_NAMESPACE     = "http://scap.nist.gov/schema/ocil/2.0";
    public static final String ARF_OVAL_NAMESPACE     = "http://oval.mitre.org/XMLSchema/oval-common-5";

    public static final String ARF_OVALDEF_NAMESPACE       = "http://oval.mitre.org/XMLSchema/oval-definitions-5";
    public static final String ARF_OVALDEF_IND_NAMESPACE   = ARF_OVALDEF_NAMESPACE + "#independent";
    public static final String ARF_OVALDEF_WIN_NAMESPACE   = ARF_OVALDEF_NAMESPACE + "#windows";
    public static final String ARF_OVALDEF_UNIX_NAMESPACE  = ARF_OVALDEF_NAMESPACE + "#unix";
    public static final String ARF_OVALDEF_LINUX_NAMESPACE = ARF_OVALDEF_NAMESPACE + "#linux";

    public static final String ARF_OVALRES_NAMESPACE       = "http://oval.mitre.org/XMLSchema/oval-results-5";
    public static final String ARF_OVALRES_IND_NAMESPACE   = ARF_OVALRES_NAMESPACE + "#independent";
    public static final String ARF_OVALRES_WIN_NAMESPACE   = ARF_OVALRES_NAMESPACE + "#windows";
    public static final String ARF_OVALRES_UNIX_NAMESPACE  = ARF_OVALRES_NAMESPACE + "#unix";
    public static final String ARF_OVALRES_LINUX_NAMESPACE = ARF_OVALRES_NAMESPACE + "#linux";

    public static final String ARF_OVALSC_NAMESPACE   = "http://oval.mitre.org/XMLSchema/oval-system-characteristics-5";
    public static final String ARF_OVALVAR_NAMESPACE  = "http://oval.mitre.org/XMLSchema/oval-variables-5";
    public static final String ARF_SCAPREL_NAMESPACE  = "http://scap.nist.gov/vocabulary/scap/relationships/1.0#";
    public static final String ARF_SCH_NAMESPACE      = "http://purl.oclc.org/dsdl/schematron";
    public static final String ARF_XCCDF_NAMESPACE    = "http://checklists.nist.gov/xccdf/1.2";
    public static final String ARF_XLINK_NAMESPACE    = "http://www.w3.org/1999/xlink";
    public static final String ARF_XML_NAMESPACE      = "http://www.w3.org/XML/1998/namespace";

    public static HashMap NS_PREFIXES = new HashMap();
    static {
        NS_PREFIXES.put(ARF_ARF_NAMESPACE, "arf");
	NS_PREFIXES.put(ARF_AI_NAMESPACE, "ai");
	NS_PREFIXES.put(ARF_ARCREL_NAMESPACE, "arc");
	NS_PREFIXES.put(ARF_ARFREL_NAMESPACE, "arf-rel");
	NS_PREFIXES.put(ARF_CAT_NAMESPACE, "cat");
	NS_PREFIXES.put(ARF_CON_NAMESPACE, "scap-con");
	NS_PREFIXES.put(ARF_CPE2_NAMESPACE, "cpe-lang");
	NS_PREFIXES.put(ARF_CPE2DICT_NAMESPACE, "cpe-dict");
	NS_PREFIXES.put(ARF_CVE_NAMESPACE, "cve");
	NS_PREFIXES.put(ARF_CVSS_NAMESPACE, "cvss");
	NS_PREFIXES.put(ARF_DC_NAMESPACE, "dc");
	NS_PREFIXES.put(ARF_DS_NAMESPACE, "ds");
	NS_PREFIXES.put(ARF_DT_NAMESPACE, "dsig");
	NS_PREFIXES.put(ARF_NVD_NAMESPACE, "nvd");
	NS_PREFIXES.put(ARF_OCIL_NAMESPACE, "ocil");
	NS_PREFIXES.put(ARF_OVAL_NAMESPACE, "oval");
	NS_PREFIXES.put(ARF_OVALDEF_NAMESPACE, "oval-def");
	NS_PREFIXES.put(ARF_OVALDEF_IND_NAMESPACE, "ind-def");
	NS_PREFIXES.put(ARF_OVALDEF_WIN_NAMESPACE, "win-def");
	NS_PREFIXES.put(ARF_OVALDEF_UNIX_NAMESPACE, "unix-def");
	NS_PREFIXES.put(ARF_OVALDEF_LINUX_NAMESPACE, "linux-def");
	NS_PREFIXES.put(ARF_OVALRES_NAMESPACE, "oval-res");
	NS_PREFIXES.put(ARF_OVALRES_IND_NAMESPACE, "ind-res");
	NS_PREFIXES.put(ARF_OVALRES_WIN_NAMESPACE, "win-res");
	NS_PREFIXES.put(ARF_OVALRES_UNIX_NAMESPACE, "unix-res");
	NS_PREFIXES.put(ARF_OVALRES_LINUX_NAMESPACE, "linux-res");
	NS_PREFIXES.put(ARF_OVALSC_NAMESPACE, "oval-sc");
	NS_PREFIXES.put(ARF_OVALVAR_NAMESPACE, "oval-var");
	NS_PREFIXES.put(ARF_SCAPREL_NAMESPACE, "scap-rel");
	NS_PREFIXES.put(ARF_SCH_NAMESPACE, "sch");
	NS_PREFIXES.put(ARF_XCCDF_NAMESPACE, "xccdf");
	NS_PREFIXES.put(ARF_XLINK_NAMESPACE, "xlink");
	NS_PREFIXES.put(ARF_XML_NAMESPACE, "xml");
    };
}
