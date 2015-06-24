/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.cisecurity.sca;

import java.io.File;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.mitre.oval.xmlSchema.ovalDefinitions5.StateType;
import org.mitre.oval.xmlSchema.ovalDefinitions5.StatesType;

/**
 *
 * @author wmunyan
 */
public class StateSerializer {
    private Logger     _logger = LogManager.getLogger("org.cisecurity.sca");
    private StatesType _states;
    private File       _targetDir;

    public StateSerializer(StatesType states, File targetDir) {
        _states    = states;
        _targetDir = targetDir;
    }

    public void serialize() {
        int numberOfStates = _states.sizeOfStateArray();

        for (int count = 0; count < numberOfStates; count++) {
            StateType state = _states.getStateArray(count);

            _logger.info("Current stateId = '" + state.getId() + "'");
            String targetFilename = state.getId().replaceAll("\\:", "_");
            String targetPath = _targetDir.getPath() + File.separator + targetFilename + ".xml";
            File targetFile = new File(targetPath);

            _logger.info("Saving state to target file --> " + targetPath);
            XmlFileSaver.saveXml(state, targetFile);
        }
    }
}