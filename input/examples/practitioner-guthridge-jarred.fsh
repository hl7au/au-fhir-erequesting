Instance: practitioner-guthridge-jarred
InstanceOf: Practitioner
Usage: #example
* meta.profile = "http://hl7.org.au/fhir/core/StructureDefinition/au-core-practitioner"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-name"
* extension[=].valueString = "Practitioner - Dr. Jarred Guthridge"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-description"
* extension[=].valueMarkdown = "Shows an example of a practitioner, Jarred Guthridge, for the *AU Core Practitioner* profile, including HPI-I and name information."
* identifier.type = $v2-0203#NPI "National provider identifier"
* identifier.type.text = "HPI-I"
* identifier.system = "http://ns.electronichealth.net.au/id/hi/hpii/1.0"
* identifier.value = "8003611566718288"
* name.family = "Guthridge"
* name.given = "Jarred"
* name.prefix = "Dr."