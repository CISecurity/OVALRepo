/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.cisecurity.sca;

import java.io.File;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.mitre.oval.xmlSchema.ovalDefinitions5.TestType;
import org.mitre.oval.xmlSchema.ovalDefinitions5.TestsType;

/**
 *
 * @author wmunyan
 */
public class TestSerializer extends Thread {
    private Logger    _logger = LogManager.getLogger("org.cisecurity.sca");
    private TestsType _tests;
    private File      _targetDir;

    public TestSerializer(TestsType tests, File targetDir) {
        _tests     = tests;
        _targetDir = targetDir;
    }

    public void serialize() {
        int numberOfTests = _tests.sizeOfTestArray();

        for (int count = 0; count < numberOfTests; count++) {
            TestType test = _tests.getTestArray(count);

            _logger.info("Current testId = '" + test.getId() + "'");
            String targetFilename = test.getId().replaceAll("\\:", "_");
            String targetPath = _targetDir.getPath() + File.separator + targetFilename + ".xml";
            File targetFile = new File(targetPath);

            _logger.info("Saving test to target file --> " + targetPath);
            XmlFileSaver.saveXml(test, targetFile);
        }
    }
}
