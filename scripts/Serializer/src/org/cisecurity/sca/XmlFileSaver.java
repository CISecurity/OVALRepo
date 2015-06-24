/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.cisecurity.sca;

import java.io.File;
import java.io.IOException;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlOptions;

/**
 *
 * @author wmunyan
 */
public class XmlFileSaver {
    private static Logger _logger = LogManager.getLogger("org.cisecurity.sca");

    /**
     * <b>Description</b>: Save the XMLbeans representation to the target file
     * @param object the XML to save
     * @param resultFile the target file
     * <table border="1" width="70%">
     * <tr><th>Name</th><th>Date</th><th>Description</th></tr>
     * <tr><td>Bill Munyan</td><td>Jan 1, 2014</td><td>Original Author</td></tr>
     * </table>
     */
    public static void saveXml(XmlObject object, File resultFile) {
        _logger.info("XmlFileSaver::saveXml -- START");

        XmlOptions xo = new XmlOptions();

        xo.setSavePrettyPrint();
        xo.setSaveOuter();
        xo.setUseDefaultNamespace();
        xo.setSaveSuggestedPrefixes(Constants.NS_PREFIXES);

        try {
            _logger.info(" [[START]] Saving to " + resultFile.getAbsolutePath());
            object.save(resultFile, xo);
            _logger.info(" [[ END ]] Saving to " + resultFile.getAbsolutePath());
        } catch (IOException ioe) {
            _logger.warn("XmlFileSaver::saveXml -- IOException: ", ioe);
        }
    }
}
