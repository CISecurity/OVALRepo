
import groovy.xml.XmlUtil
import groovy.xml.MarkupBuilder
import java.io.FileInputStream
import java.text.SimpleDateFormat
import groovy.util.NodeBuilder
import groovy.xml.StreamingMarkupBuilder
import java.time.format.DateTimeFormatter
import java.time.ZonedDateTime
import groovy.time.TimeCategory
import java.io.File
import java.io.IOException
import java.nio.file.Files
import java.nio.file.Paths
import java.util.stream.Stream
import groovy.io.FileType
import groovy.util.Node
import org.codehaus.groovy.runtime.InvokerHelper
import groovy.lang.Script
import java.io.StringReader
import javax.xml.parsers.DocumentBuilder
import javax.xml.parsers.DocumentBuilderFactory
import org.w3c.dom.Document
import org.xml.sax.InputSource
import java.io.FileInputStream
import java.io.IOException
import java.io.InputStreamReader

class ovalStatusUpdates {

    static main(args) {
        def processStatus = new ovalStatusUpdates()
            processStatus.processInitial()
            processStatus.processDraft()
            processStatus.processInterim()
        }

    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss.SSSXXX")
    String formattedDate = ZonedDateTime.now().format(formatter)

    def processInitial() {
        File initialFile = new File("C:\\tmp\\initial.xml")
        def xml = parseXml(initialFile)
        removeTests(xml)
        removeObjects(xml)
        removeStates(xml)
        removeVariables(xml)
        Integer count = 0
        def draftStatusChange = new NodeBuilder().status_change(date: formattedDate, "DRAFT")
        def draftStatusChange2 = new NodeBuilder()."oval-def:status_change"(date: formattedDate, "DRAFT")
        xml."**".findAll { node ->
            node instanceof Node && getElementBasename(node.name().toString()) == "oval_repository" &&
                node."oval-def:status".text()  == "INITIAL SUBMISSION"  ||
                 node.status.text() == "INITIAL SUBMISSION" 
        }.each { n ->
            if (n.status) {
                count = count + 1
                println("INITIAL SUBMISSION -> DRAFT -  ${n} ${count} \n")
                n.dates[0].append(draftStatusChange)
                n.status[0].value = "DRAFT"
            } else {
                count = count + 1
                println("INITIAL SUBMISSION -> DRAFT -  ${n} ${count} \n")
                n."oval-def:dates"[0].append(draftStatusChange2)
                n."oval-def:status"[0].value = "DRAFT"
            }
        }
        def writer = new FileWriter(initialFile)
        XmlUtil.serialize(xml, writer)
        writer.close()
    }

    def processDraft() {
        File draftFile =  new File("C:\\tmp\\draft.xml")
        def xml = parseXml(draftFile)
        removeTests(xml)
        removeObjects(xml)
        removeStates(xml)
        removeVariables(xml)
        Integer count = 0
        def interimStatusChange = new NodeBuilder().status_change(date: formattedDate, "INTERIM")
        def interimStatusChange2 = new NodeBuilder()."oval-def:status_change"(date: formattedDate, "INTERIM")
        xml."**".findAll { node ->
            node instanceof Node && getElementBasename(node.name().toString()) == "oval_repository" &&
                node."oval-def:status".text()  == "DRAFT" ||
                node.status.text() == "DRAFT"
        }.each { n ->
            String draftStatusDateTime = ""
            if (n."oval-def:dates"."oval-def:status_change"[0] ) {
                draftStatusDateTime = n."oval-def:dates"."oval-def:status_change"[0]."@date"
            } else if (n.dates.status_change[0]) {
                draftStatusDateTime = n.dates.status_change[0]."@date"
            }
            if (draftStatusDateTime != "") {
                String draftDate = draftStatusDateTime.split('T').first()
                String currentDate = formattedDate.split('T').first()
                def dDate = Date.parse("yyyy-MM-dd", draftDate)
                def cDate = Date.parse("yyyy-MM-dd", currentDate)
                if (cDate - dDate >= 14 ) {
                    if (n.status) {
                        count = count + 1
                        println("DRAFT -> INTERIM - ${n} ${count} \n")
                        n.dates[0].append(interimStatusChange)
                        n.status[0].value = "INTERIM"
                    } else {
                        count = count + 1
                        println("DRAFT -> INTERIM - ${n} ${count} \n")
                        n."oval-def:dates"[0].append(interimStatusChange2)
                        n."oval-def:status"[0].value = "INTERIM" 
                    }
                }
            }
        }
        def writer = new FileWriter(interimFile)
        XmlUtil.serialize(xml, writer)
        writer.close()
    }

    def processInterim() {
        File interimFile = new File("C:\\tmp\\interim.xml")
        def xml = parseXml(interimFile)
        removeTests(xml)
        removeObjects(xml)
        removeStates(xml)
        removeVariables(xml)
        Integer count = 0
        def acceptedStatusChange = new NodeBuilder().status_change(date: formattedDate, "ACCEPTED")
        def acceptedStatusChange2 = new NodeBuilder()."oval-def:status_change"(date: formattedDate, "ACCEPTED")
        xml."**".findAll { node ->
            node instanceof Node && getElementBasename(node.name().toString()) == "oval_repository" &&
                node."oval-def:status".text()  == "INTERIM" ||
                node.status.text() == "INTERIM"
        }.each { n ->
            String interimStatusDateTime = ""
            if (n."oval-def:dates"."oval-def:status_change"[1] ) {
                interimStatusDateTime = n."oval-def:dates"."oval-def:status_change"[1]."@date"
            } else if (n.dates.status_change[1]) {
                interimStatusDateTime = n.dates.status_change[1]."@date"
            }
            if (interimStatusDateTime != "") {
                String interimDate = interimStatusDateTime.split('T').first()
                String currentDate = formattedDate.split('T').first()
                def iDate = Date.parse("yyyy-MM-dd", interimDate)
                def cDate = Date.parse("yyyy-MM-dd", currentDate)
                if (cDate - iDate >= 14 ) {
                    if (n.status) {
                        count = count + 1
                        println("INTERIM -> ACCEPTED - ${n} ${count} \n")
                        n.dates[0].append(acceptedStatusChange)
                        n.status[0].value = "ACCEPTED"
                    } else {
                        count = count + 1
                        println("INTERIM -> ACCEPTED - ${n} ${count} \n")
                        n."oval-def:dates"[0].append(acceptedStatusChange2)
                        n."oval-def:status"[0].value = "ACCEPTED"
                    }
                }
            }
        }
        def writer = new FileWriter(interimFile)
        XmlUtil.serialize(xml, writer)
        writer.close()
    }

    def removeTests(xml) {
        Node testsNode = xml.children().find { n ->
         n instanceof Node && getElementBasename(n.name()) == "tests" 
        }
        if (testsNode) {
         xml.remove(testsNode)
        }
    }

    def removeObjects(xml) {
        Node objectsNode = xml.children().find { n ->
         n instanceof Node && getElementBasename(n.name()) == "objects" 
        }
        if (objectsNode) {
         xml.remove(objectsNode)
        }
    }

    def removeStates(xml) {
        Node statesNode = xml.children().find { n ->
         n instanceof Node && getElementBasename(n.name()) == "states" 
        }
        if (statesNode) {
         xml.remove(statesNode)
        }
    }

    def removeVariables(xml) {
        Node variablesNode = xml.children().find { n ->
         n instanceof Node && getElementBasename(n.name()) == "variables" 
        }
        if (variablesNode) {
         xml.remove(variablesNode)
        }
    }
     
    static def getElementBasename(String elementName) {
        def basename = elementName
        def pos = elementName.indexOf(":")
        if (pos >= 0) {
            basename = elementName.substring(pos + 1)
        }
        return basename
    }

    static def parseXml(File xmlFile) {
        def parser = new XmlParser(false, false)
        parser.setFeature("http://xml.org/sax/features/external-general-entities", false)
        def xml = parser.parse(xmlFile)
        return xml
    }

}



