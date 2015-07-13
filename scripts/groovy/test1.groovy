def path = "C:\\Users\\Wil\\Documents\\GitHub\\OVALRepo\\oval_repository\\repository\\definitions\\"
def def1 = new XmlSlurper()
    .parse(new java.io.File(path.concat("oval_org.mitre.oval_def_6075.xml")))
    .declareNamespace([ovaldef:"http://oval.mitre.org/XMLSchema/oval-definitions-5"])
println def1.@id
def root_criteria = def1.criteria[0]
println root_criteria.@operator

// for each <extend_definition>, we'll need to get that and all it's tests too...
root_criteria.extend_definition.each {println it.@definition_ref}

// <criterion> are tests...
root_criteria.criterion.each {println it.@test_ref}

// <criteria> are just another level that can contain more <extend_definition>'s, <criterion> or more <criteria>
def subs = root_criteria.criteria.findAll()
if (subs)
    println "subs"
else
    println "no subs"

def mb = new groovy.xml.StreamingMarkupBuilder()
def out = mb.bind { 
  //namespaces << [name : "value"] Or mkp.declareNamespace('meta':'http://meta/book/info')
  namespaces << [ovaldef:"http://oval.mitre.org/XMLSchema/oval-definitions-5"]
  ovaldef.oval_definitions {
    ovaldef.definitions {
       mkp.yield def1
    }
  }
}

println groovy.xml.XmlUtil.serialize( out )

