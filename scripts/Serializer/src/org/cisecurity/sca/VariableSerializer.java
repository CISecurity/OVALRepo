/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.cisecurity.sca;

import java.io.File;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.mitre.oval.xmlSchema.ovalDefinitions5.VariableType;
import org.mitre.oval.xmlSchema.ovalDefinitions5.VariablesType;

/**
 *
 * @author wmunyan
 */
public class VariableSerializer {
    private Logger        _logger = LogManager.getLogger("org.cisecurity.sca");
    private VariablesType _variables;
    private File          _targetDir;

    public VariableSerializer(VariablesType variables, File targetDir) {
        _variables = variables;
        _targetDir = targetDir;
    }

    public void serialize() {
        int numberOfVariables = _variables.sizeOfVariableArray();

        for (int count = 0; count < numberOfVariables; count++) {
            VariableType variable = _variables.getVariableArray(count);

            _logger.info("Current variableId = '" + variable.getId() + "'");
            String targetFilename = variable.getId().replaceAll("\\:", "_");
            String targetPath = _targetDir.getPath() + File.separator + targetFilename + ".xml";
            File targetFile = new File(targetPath);

            _logger.info("Saving variable to target file --> " + targetPath);
            XmlFileSaver.saveXml(variable, targetFile);
        }
    }
}
