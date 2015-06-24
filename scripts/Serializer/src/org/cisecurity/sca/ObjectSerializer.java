/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.cisecurity.sca;

import java.io.File;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.mitre.oval.xmlSchema.ovalDefinitions5.ObjectType;
import org.mitre.oval.xmlSchema.ovalDefinitions5.ObjectsType;

/**
 *
 * @author wmunyan
 */
public class ObjectSerializer {
    private Logger      _logger = LogManager.getLogger("org.cisecurity.sca");
    private ObjectsType _objects;
    private File        _targetDir;

    public ObjectSerializer(ObjectsType objects, File targetDir) {
        _objects   = objects;
        _targetDir = targetDir;
    }

    public void serialize() {
        int numberOfObjects = _objects.sizeOfObjectArray();

        for (int count = 0; count < numberOfObjects; count++) {
            ObjectType object = _objects.getObjectArray(count);

            _logger.info("Current objectId = '" + object.getId() + "'");
            String targetFilename = object.getId().replaceAll("\\:", "_");
            String targetPath = _targetDir.getPath() + File.separator + targetFilename + ".xml";
            File targetFile = new File(targetPath);

            _logger.info("Saving object to target file --> " + targetPath);
            XmlFileSaver.saveXml(object, targetFile);
        }
    }
}