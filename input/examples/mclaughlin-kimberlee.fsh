Instance: mclaughlin-kimberlee
InstanceOf: Practitioner
Usage: #example
* meta.profile = "http://hl7.org.au/fhir/core/StructureDefinition/au-core-practitioner"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-name"
* extension[=].valueString = "Practitioner - Kimberlee McLaughlin"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-description"
* extension[=].valueMarkdown = "Shows an example of a practitioner, Kimberlee McLaughlin, for the *AU Core Practitioner* profile, including HPI-I and name information."
* identifier.type = $v2-0203#NPI "National provider identifier"
* identifier.type.text = "HPI-I"
* identifier.system = "http://ns.electronichealth.net.au/id/hi/hpii/1.0"
* identifier.value = "8003611566718379"
* name.family = "McLaughlin"
* name.given = "Kimberlee"