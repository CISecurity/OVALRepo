/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.cisecurity.sca;

import org.apache.commons.cli.BasicParser;
import org.apache.commons.cli.CommandLine;
import org.apache.commons.cli.Option;
import org.apache.commons.cli.OptionBuilder;
import org.apache.commons.cli.Options;
import org.apache.commons.cli.ParseException;
import org.apache.commons.cli.UnrecognizedOptionException;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;
import org.apache.log4j.helpers.Loader;

/**
 *
 * @author wmunyan
 */
public class OvalRepository {
    private Logger  logger = LogManager.getLogger("org.cisecurity.sca");
    
    private Options     commandLineOptions = new Options();
    private CommandLine commandLine        = null;
    
    public OvalRepository() {
        // Configure Logging...
        System.setProperty(
            "log4j.configuration",
            "log4j.properties");

        PropertyConfigurator.configure(Loader.getResource("org/cisecurity/sca/log4j.properties"));

        // Suppress any old non-log4j logging...
        System.setProperty(
            "org.apache.commons.logging.Log",
            "org.apache.commons.logging.impl.Log4JLogger");
        
        // Set up command-line options...
        initializeOptions();
    }
    
    /**
     * set up the command-line options
     */
    private void initializeOptions() {
        logger.info("Initializing Command-Line Options...");

        //commandLineOptions.addOption("a", "accept-terms", false, "Accepts terms of use");
        //commandLineOptions.addOption("aa", "auto-assess", false, "Perform auto-assessment of all applicable benchmarks");
        
        commandLineOptions.addOption("s", "serialize", false, "Serialize an OVAL Definitions file [Must also use -f to specify file to serialize]");

        Option file =
            OptionBuilder.withArgName("FILE")
                         .hasArg()
                         .withDescription("The OVAL Repo bulk download XML file")
                         .withLongOpt("repo-file")
                         .create("f");

        commandLineOptions.addOption(file);
        
        Option target =
            OptionBuilder.withArgName("TARGET_DIR")
                         .hasArg()
                         .withDescription("The top-level directory to which serialization will occur")
                         .withLongOpt("target-dir")
                         .create("t");

        commandLineOptions.addOption(target);
    }
    
    /**
     * Parse the incoming command-line options
     * @param args 
     */
    public void parse(String[] args) {
        BasicParser basicParser = new BasicParser();
        try {
            commandLine = basicParser.parse(commandLineOptions, args);
        } catch (UnrecognizedOptionException uoe) {
            logger.error("UnrecognizedOptionException", uoe);
        } catch (ParseException pe) {
            logger.error("ParseException", pe);
        }
    }
    
    public static void main(String[] args) {
        OvalRepository or = new OvalRepository();
        
        or.parse(args);
        or.execute();
    }
    
    public void execute() {
        // SERIALIZE
        if (commandLine.hasOption("s")) {
            if (!commandLine.hasOption("f")) {
                System.out.println("An OVAL definitions file must be specified in order to serialize it...");
                System.exit(1);
            } else {
                String repositorySource = commandLine.getOptionValue("f");
                String repositoryTarget = 
                    commandLine.hasOption("t") ? commandLine.getOptionValue("t") : null;
                new OvalRepoSerializer().serialize(repositorySource, repositoryTarget);
            }
        }
        
        // DOWNLOADS
    }
}
