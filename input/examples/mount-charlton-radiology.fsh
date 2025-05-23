Instance: mount-charlton-radiology
InstanceOf: Organization
Usage: #example
* meta.profile = "http://hl7.org.au/fhir/core/StructureDefinition/au-core-organization"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-name"
* extension[=].valueString = "Organization - Mount Charlton Radiology"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-description"
* extension[=].valueMarkdown = "Shows an example of an organisation, Mount Charlton Radiology, for the *AU Core Organization* profile, with HPI-O, type as a radiology practice, contact information and physical address."
* identifier.type = $v2-0203_1#NOI "National Organisation Identifier"
* identifier.type.text = "HPI-O"
* identifier.system = "http://ns.electronichealth.net.au/id/hi/hpio/1.0"
* identifier.value = "8003623233373306"
* type = $1292.0#8520 "Pathology and Diagnostic Imaging Services"
* type.text = "Radiology practice"
* name = "Mount Charlton Radiology"
* telecom[0].system = #email
* telecom[=].value = "reception@mouncharltonradiology.example.net"
* telecom[=].use = #work
* telecom[+].system = #phone
* telecom[=].value = "(07) 555 02224"
* telecom[=].use = #work
* address.use = #work
* address.type = #physical
* address.line = "7 Desleigh Rdge"
* address.city = "Mount Charlton"
* address.state = "QLD"
* address.postalCode = "4741"
* address.country = "AU"