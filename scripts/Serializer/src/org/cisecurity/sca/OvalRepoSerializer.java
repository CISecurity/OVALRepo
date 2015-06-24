
package org.cisecurity.sca;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.apache.xmlbeans.XmlException;
import org.mitre.oval.xmlSchema.ovalCommon5.ClassEnumeration;
import org.mitre.oval.xmlSchema.ovalCommon5.FamilyEnumeration;
import org.mitre.oval.xmlSchema.ovalDefinitions5.AffectedType;
import org.mitre.oval.xmlSchema.ovalDefinitions5.DefinitionType;
import org.mitre.oval.xmlSchema.ovalDefinitions5.DefinitionsType;
import org.mitre.oval.xmlSchema.ovalDefinitions5.OvalDefinitionsDocument;
import org.mitre.oval.xmlSchema.ovalDefinitions5.OvalDefinitionsDocument.OvalDefinitions;

/**
 * Take an OVAL Repo file, be it lots of definitions, tests, objects, states, and variables, 
 * or just a single one, and process it into the serialized form.
 * @author wmunyan
 */
public class OvalRepoSerializer {
    private Logger  logger = LogManager.getLogger("org.cisecurity.sca");
    
    // values are paths to definition's generated xml file
    private ConcurrentHashMap<String, String> fullRepo = new ConcurrentHashMap<String, String>();
    
    // key is class
    // value is the list of paths to generated definition xml files
    private ConcurrentHashMap<String, ArrayList<String>> byClass = new ConcurrentHashMap<String, ArrayList<String>>();
    
    // "outer" key is class
    // "inner" key is platform
    // "inner" value is the list of paths to generated definition xml files
    private ConcurrentHashMap<String, ConcurrentHashMap<String, ArrayList<String>>> byClassAndPlatform = new ConcurrentHashMap<String, ConcurrentHashMap<String, ArrayList<String>>>();
    
    // "outer" key is class
    // "inner" key is family
    // "inner" value is the list of paths to generated definition xml files
    private ConcurrentHashMap<String, ConcurrentHashMap<String, ArrayList<String>>> byClassAndFamily   = new ConcurrentHashMap<String, ConcurrentHashMap<String, ArrayList<String>>>();
    
    // all the definition families
    private ArrayList<FamilyEnumeration.Enum> families = new ArrayList<FamilyEnumeration.Enum>();
    
    /**
     * Constructor
     */
    public OvalRepoSerializer() {
        // Enumerations...
        families.add(FamilyEnumeration.ANDROID);
        families.add(FamilyEnumeration.APPLE_IOS);
        families.add(FamilyEnumeration.ASA);
        families.add(FamilyEnumeration.CATOS);
        families.add(FamilyEnumeration.IOS);
        families.add(FamilyEnumeration.IOSXE);
        families.add(FamilyEnumeration.JUNOS);
        families.add(FamilyEnumeration.MACOS);
        families.add(FamilyEnumeration.PIXOS);
        families.add(FamilyEnumeration.UNDEFINED);
        families.add(FamilyEnumeration.UNIX);
        families.add(FamilyEnumeration.VMWARE_INFRASTRUCTURE);
        families.add(FamilyEnumeration.WINDOWS);
    }
    
    /**
     * Execute the bulk OVAL repo serialization process.
     */
    public void serialize(String ovalDefinitionsFilename, String repositoryTargetDir) {
        logger.info("[START] -- OVAL Repository Serialization");
        
        // The starting point is always the current working directory...
        if (repositoryTargetDir == null) {
            repositoryTargetDir = System.getProperty("user.dir");
        }
        File startingDir = new File(repositoryTargetDir);
        if (!startingDir.exists()) {
            logger.info("Creating Target Directory --> " + startingDir.getAbsolutePath());
            startingDir.mkdirs();
        } else {
            loadFullRepo(startingDir.getAbsolutePath());
        }
        
        // Create folders for storage of text files listing out the
        // definition id's in each class, class/family, and class/platform...
        initializeClassFolders(startingDir, ClassEnumeration.COMPLIANCE.toString());
        initializeClassFolders(startingDir, ClassEnumeration.INVENTORY.toString());
        initializeClassFolders(startingDir, ClassEnumeration.VULNERABILITY.toString());
        initializeClassFolders(startingDir, ClassEnumeration.PATCH.toString());
        initializeClassFolders(startingDir, ClassEnumeration.MISCELLANEOUS.toString());
        
        // The "repository" sub-folder will contain the individual definitions, 
        // tests, objects, states, and variables, each in their own XML files...
        String repoPath = startingDir.getPath() + File.separator + "repository";
        File repoDir = new File(repoPath);
        if (!repoDir.exists()) {repoDir.mkdirs();}
        
        String definitionsPath = repoDir.getPath() + File.separator + "definitions";
        File definitionsDir = new File(definitionsPath);
        if (!definitionsDir.exists()) {definitionsDir.mkdirs();}
        
        String testsPath = repoDir.getPath() + File.separator + "tests";
        File testsDir = new File(testsPath);
        if (!testsDir.exists()) {testsDir.mkdirs();}
        
        String objectsPath = repoDir.getPath() + File.separator + "objects";
        File objectsDir = new File(objectsPath);
        if (!objectsDir.exists()) {objectsDir.mkdirs();}
        
        String statesPath = repoDir.getPath() + File.separator + "states";
        File statesDir = new File(statesPath);
        if (!statesDir.exists()) {statesDir.mkdirs();}
        
        String variablesPath = repoDir.getPath() + File.separator + "variables";
        File variablesDir = new File(variablesPath);
        if (!variablesDir.exists()) {variablesDir.mkdirs();}
        
        try {
            // Parse the supplied OVAL Definitions XML file.  This will chew
            // up a lot of memory...
            OvalDefinitions repo = 
                OvalDefinitionsDocument.Factory.parse(
                    new File(ovalDefinitionsFilename)).getOvalDefinitions();
            
            //
            // Definitions
            //
            class DefinitionSerializer {
                DefinitionsType _defs;
                File            _targetDir;
                
                public DefinitionSerializer(DefinitionsType defs, File targetDir) {
                    _defs      = defs;
                    _targetDir = targetDir;
                }
                
                public void serialize() {
                    int numberOfDefinitions = _defs.sizeOfDefinitionArray();
                    
                    logger.info("***************************************************************************");
                    logger.info("There are " + numberOfDefinitions + " definitions in this OVAL Repo file...");
                    logger.info("***************************************************************************");
                    
                    for (int count = 0; count < numberOfDefinitions; count++) {
                        DefinitionType def = _defs.getDefinitionArray(count);

                        logger.info("Current definitionId = '" + def.getId() + "'");
                        
                        // You can't have a : in a file name, so replace them 
                        // with underscores...
                        String definitionXmlFilename = 
                            def.getId().replaceAll("\\:", "_") + ".xml";
                        
                        // [WorkingDirectory]/repository/definition/[definition_id].xml
                        String definitionXmlPath = 
                            _targetDir.getPath() + 
                            File.separator + 
                            definitionXmlFilename;
                        
                        logger.info("Saving definition to target file --> " + definitionXmlPath);
                        XmlFileSaver.saveXml(def, new File(definitionXmlPath));
                        
                        if (!fullRepo.containsKey(def.getId())) {
                            // FULL REPO
                            fullRepo.put(def.getId(), definitionXmlFilename);

                            // CLASS
                            String defClass = def.getClass1().toString();
                            if (byClass.containsKey(defClass)) {
                                byClass.get(defClass).add(definitionXmlFilename);
                            } else {
                                ArrayList<String> dl = new ArrayList<String>();
                                dl.add(definitionXmlFilename);
                                byClass.put(defClass, dl);
                            }

                            if (def.getMetadata().sizeOfAffectedArray() > 0) {
                                AffectedType[] affecteds = def.getMetadata().getAffectedArray();
                                for (AffectedType affected : affecteds) {

                                    // FAMILY
                                    String family = affected.getFamily().toString();

                                    addToClassAndFamily(defClass, family, definitionXmlFilename);

                                    String[] platforms = affected.getPlatformArray();
                                    for (String platform : platforms) {
                                        String modifiedPlatform = 
                                            platform.replaceAll("\\s", ".").replaceAll("/", ".").toLowerCase();

                                        addToClassAndPlatform(defClass, modifiedPlatform, definitionXmlFilename);
                                    }
                                }
                            }
                        } else {
                            logger.info("Definition ID " + def.getId() + " is already in the repository...");
                        }
                    }
                }
            }
            
            //
            // Tests
            //
            logger.info("OvalRepoSerializer::serialize -- [START] TESTS...");
            new TestSerializer(repo.getTests(), testsDir).serialize();
            logger.info("OvalRepoSerializer::serialize -- [ END ] TESTS...");
            
            //
            // Objects
            //
            logger.info("OvalRepoSerializer::serialize -- [START] OBJECTS...");
            new ObjectSerializer(repo.getObjects(), objectsDir).serialize();
            logger.info("OvalRepoSerializer::serialize -- [ END ] OBJECTS...");
            
            //
            // States
            //
            logger.info("OvalRepoSerializer::serialize -- [START] STATES...");
            new StateSerializer(repo.getStates(), statesDir).serialize();
            logger.info("OvalRepoSerializer::serialize -- [ END ] STATES...");
            
            //
            // Variables
            //
            logger.info("OvalRepoSerializer::serialize -- [START] VARIABLES...");
            new VariableSerializer(repo.getVariables(), variablesDir).serialize();
            logger.info("OvalRepoSerializer::serialize -- [ END ] VARIABLES...");
            
            logger.info("OvalRepoSerializer::serialize -- [START] DEFINITIONS...");
            new DefinitionSerializer(repo.getDefinitions(), definitionsDir).serialize();
            logger.info("OvalRepoSerializer::serialize -- [ END ] DEFINITIONS...");
                    
            // Write the fullRepo file...
            writeFullRepo(startingDir.getPath());
            // Write the byClass map arrays to files...
            writeByClass(startingDir.getPath());
            // Write the byClassAnbFamily map arrays tp files...
            writeByClassAndFamily(startingDir.getPath());
            // Write the byClassAndPlatform map arrays to files...
            writeByClassAndPlatform(startingDir.getPath());
            
        } catch (XmlException xe) {
            logger.warn("XmlException!", xe);
        } catch (IOException io) {
            logger.warn("IOException!", io);
        }
        logger.info("[ END ] -- OVAL Repository Serialization");
    }
    
    private void initializeClassFolders(File startingDir, String defClass) {
        File dir = new File(startingDir.getPath() + File.separator + defClass);
        if (!dir.exists()) {dir.mkdirs();}
        
        loadByClass(defClass, dir.getPath());
        loadByClassAndFamily(defClass, dir.getPath());
        
        File pDir = new File(dir.getPath() + File.separator + "platform");
        if (!pDir.exists()) {pDir.mkdirs();}
        
        loadByClassAndPlatform(defClass, pDir);
    }
    
    private void addToClassAndFamily(String defClass, String family, String definitionXmlFilename) {
        if (byClassAndFamily.containsKey(defClass)) {
            ConcurrentHashMap<String, ArrayList<String>> byFamily = byClassAndFamily.get(defClass);
            if (byFamily.containsKey(family)) {
                byFamily.get(family).add(definitionXmlFilename);
            } else {
                ArrayList<String> fp = new ArrayList<String>();
                fp.add(definitionXmlFilename);
                byFamily.put(family, fp);
            }
            byClassAndFamily.put(defClass, byFamily);
        } else {
            ArrayList<String> fp = new ArrayList<String>();
            fp.add(definitionXmlFilename);
            
            ConcurrentHashMap<String, ArrayList<String>> byFamily = new ConcurrentHashMap<String, ArrayList<String>>();
            byFamily.put(family, fp);
            
            byClassAndFamily.put(defClass, byFamily);
        }
    }
    
    private void addToClassAndPlatform(String defClass, String platform, String definitionXmlFilename) {
        if (byClassAndPlatform.containsKey(defClass)) {
            ConcurrentHashMap<String, ArrayList<String>> byPlatform = byClassAndPlatform.get(defClass);
            if (byPlatform.containsKey(platform)) {
                byPlatform.get(platform).add(definitionXmlFilename);
            } else {
                ArrayList<String> fp = new ArrayList<String>();
                fp.add(definitionXmlFilename);
                byPlatform.put(platform, fp);
            }
            byClassAndPlatform.put(defClass, byPlatform);
        } else {
            ArrayList<String> fp = new ArrayList<String>();
            fp.add(definitionXmlFilename);
            
            ConcurrentHashMap<String, ArrayList<String>> byPlatform = new ConcurrentHashMap<String, ArrayList<String>>();
            byPlatform.put(platform, fp);
            
            byClassAndPlatform.put(defClass, byPlatform);
        }
    }
    
    
    
    // [START] FULL REPO
    private void loadFullRepo(String targetPath) {
        String targetFilename = targetPath + File.separator + "full_repository.txt";
        File fullRepoFile = new File(targetFilename);
        
        if (fullRepoFile.exists()) {
            try {
                BufferedReader br = new BufferedReader(new FileReader(fullRepoFile));
                String line = br.readLine();
                while (line != null) {
                    // each line will look like "oval_org.mitre.oval_def_8083.xml"
                    //  - remove the .xml
                    //  - replace the underscores with colons, to convert back to the definition id...
                    String defId = line.substring(0, line.indexOf(".xml"));
                    defId = defId.replaceAll("_", ":");
                    
                    // add the definition to the map...
                    fullRepo.put(defId, line);
                    
                    // read the next line...
                    line = br.readLine();
                }
                
                br.close();
            } catch (IOException i) {
                logger.error("IOException!", i);
            }
            
            boolean ok = fullRepoFile.delete();
            logger.info("delete ok? " + ok);
        }
    }
    
    private void writeFullRepo(String targetPath) {
        String targetFilename = targetPath + File.separator + "full_repository.txt";
        
        try {
            PrintWriter pw = new PrintWriter(new FileWriter(new File(targetFilename)));
                
            for (String defId : fullRepo.keySet()) {
                String defPath = fullRepo.get(defId);
                logger.info("Full Repo --> " + defPath);
                pw.println(defPath);
            }
            pw.flush();
            pw.close();
        } catch (IOException i) {
            logger.error("IOException", i);
        }
    }
    // [ END ] FULL REPO
    
    // [START] BY CLASS
    private void writeByClass(String targetPath) {
        for (String defClass : byClass.keySet()) {
            String targetFilename = targetPath + File.separator + defClass + File.separator + defClass + ".txt";
            
            try {
                PrintWriter pw = new PrintWriter(new FileWriter(new File(targetFilename)));
                ArrayList<String> defs = byClass.get(defClass);
                for (String def : defs) {
                    pw.println(def);
                }
                pw.flush();
                pw.close();
            } catch (IOException i) {
                logger.error("IOException", i);
            }
        }
    }
    
    private void loadByClass(String defClass, String targetPath) {
        ArrayList<String> defList = new ArrayList<String>();
        
        targetPath = targetPath + File.separator + defClass + ".txt";
        
        File classFile = new File(targetPath);
        if (classFile.exists()) {
            try {
                BufferedReader br = new BufferedReader(new FileReader(classFile));
                String line = br.readLine();
                while (line != null) {
                    defList.add(line);
                    // read the next line...
                    line = br.readLine();
                }
                br.close();
            } catch (IOException i) {
                logger.error("IOException!", i);
            }
            classFile.delete();
        }
        byClass.put(defClass, defList);
    }
    // [ END ] BY CLASS
    
    // [START] BY CLASS AND FAMILY
    private void writeByClassAndFamily(String targetPath) {
        for (String defClass : byClassAndFamily.keySet()) {
            ConcurrentHashMap<String, ArrayList<String>> byFamily = byClassAndFamily.get(defClass);
            for (String family : byFamily.keySet()) {
                String targetFilename = 
                    targetPath + File.separator + 
                    defClass + File.separator + family + ".txt";

                try {
                    PrintWriter pw = new PrintWriter(new FileWriter(new File(targetFilename)));
                    ArrayList<String> defs = byFamily.get(family);
                    for (String def : defs) {
                        pw.println(def);
                    }
                    pw.flush();
                    pw.close();
                } catch (IOException i) {
                    logger.error("IOException", i);
                }
            }   
        }
    }
    
    private void loadByClassAndFamily(String defClass, String targetPath) {
        for (FamilyEnumeration.Enum family : families) {
            ConcurrentHashMap<String, ArrayList<String>> byFamily = new ConcurrentHashMap<String, ArrayList<String>>();
            ArrayList<String> defList = new ArrayList<String>();
            
            String defFamily = family.toString();

            targetPath = targetPath + File.separator + defClass + File.separator + defFamily + ".txt";

            File classFile = new File(targetPath);
            if (classFile.exists()) {
                try {
                    BufferedReader br = new BufferedReader(new FileReader(classFile));
                    String line = br.readLine();
                    while (line != null) {
                        defList.add(line);
                        // read the next line...
                        line = br.readLine();
                    }
                    br.close();
                } catch (IOException i) {
                    logger.error("IOException!", i);
                }
            }
            byFamily.put(defFamily, defList);
            byClassAndFamily.put(defClass, byFamily);
            
            classFile.delete();
        }
            
    }
    // [ END ] BY CLASS AND FAMILY
    
    // [START] BY CLASS AND PLATFORM
    private void writeByClassAndPlatform(String targetPath) {
        for (String defClass : byClassAndPlatform.keySet()) {
            ConcurrentHashMap<String, ArrayList<String>> byPlatform = byClassAndPlatform.get(defClass);
            for (String platform : byPlatform.keySet()) {
                String targetFilename = 
                    targetPath + File.separator + 
                    defClass   + File.separator + 
                    "platform" + File.separator + platform + ".txt";

                try {
                    PrintWriter pw = new PrintWriter(new FileWriter(new File(targetFilename)));
                    ArrayList<String> defs = byPlatform.get(platform);
                    for (String def : defs) {
                        pw.println(def);
                    }
                    pw.flush();
                    pw.close();
                } catch (IOException i) {
                    logger.error("IOException", i);
                }
            }   
        }
    }
    
    private void loadByClassAndPlatform(String defClass, File classPlatformDir) {
        File[] classPlatformFiles = classPlatformDir.listFiles();
        for (File classPlatformFile : classPlatformFiles) {
            ConcurrentHashMap<String, ArrayList<String>> byPlatform = new ConcurrentHashMap<String, ArrayList<String>>();
            ArrayList<String> defList = new ArrayList<String>();
            
            try {
                BufferedReader br = new BufferedReader(new FileReader(classPlatformFile));
                String line = br.readLine();
                while (line != null) {
                    defList.add(line);
                    // read the next line...
                    line = br.readLine();
                }
                br.close();
            } catch (IOException i) {
                logger.error("IOException!", i);
            }
            
            String filename = classPlatformFile.getName();
            if (filename.endsWith(".txt")) {
                filename = filename.substring(0, filename.indexOf(".txt"));
            }
            byPlatform.put(filename, defList);
            byClassAndFamily.put(defClass, byPlatform);
            
            classPlatformFile.delete();
        }
    }
    // [ END ] BY CLASS AND PLATFORM
}
