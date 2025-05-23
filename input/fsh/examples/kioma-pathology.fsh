Instance: kioma-pathology
InstanceOf: Organization
Usage: #example
* meta.profile = "http://hl7.org.au/fhir/core/StructureDefinition/au-core-organization"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-name"
* extension[=].valueString = "Organization - Kioma Pathology Laboratory"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-description"
* extension[=].valueMarkdown = "Shows an example of an organisation, Kioma Pathology Laboratory, for the *AU Core Organization* profile, with HPI-O, type as a pathology laboratory, contact information and physical address."
* identifier.type = $v2-0203_1#NOI "National Organisation Identifier"
* identifier.type.text = "HPI-O"
* identifier.system = "http://ns.electronichealth.net.au/id/hi/hpio/1.0"
* identifier.value = "8003621566705995"
* type = $1292.0#8520 "Pathology and Diagnostic Imaging Services"
* type.text = "Pathology laboratory"
* name = "Kioma Pathology"
* telecom[0].system = #email
* telecom[=].value = "info@kiomapathology.example.net"
* telecom[=].use = #work
* telecom[+].system = #phone
* telecom[=].value = "(07) 5550 5000"
* telecom[=].use = #work
* address.use = #work
* address.type = #physical
* address.line = "15 Hazlett Est"
* address.city = "Kioma"
* address.state = "QLD"
* address.postalCode = "4498"
* address.country = "AU"