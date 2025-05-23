Instance: elimbah-medical-center
InstanceOf: Organization
Usage: #example
* meta.profile = "http://hl7.org.au/fhir/core/StructureDefinition/au-core-organization"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-name"
* extension[=].valueString = "Organization - Elimbah Medical Center"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-description"
* extension[=].valueMarkdown = "Shows an example of an organisation, Elimbah Medical Center, for the *AU Core Organization* profile, with HPI-O and contact details."
* identifier.type = $v2-0203_1#NOI "National Organisation Identifier"
* identifier.type.text = "HPI-O"
* identifier.system = "http://ns.electronichealth.net.au/id/hi/hpio/1.0"
* identifier.value = "8003629900040359"
* type = $sct#288565001 "Medical centre"
* type.text = "Medical Center"
* name = "Elimbah Medical Center"
* telecom[0].system = #email
* telecom[=].value = "info@elimbahmedicalcentre.example.com.au"
* telecom[=].use = #work
* telecom[+].system = #phone
* telecom[=].value = "(07)555 03997"
* telecom[=].use = #work
* address.line = "199 Copper Esp"
* address.city = "Elimbah"
* address.state = "QLD"
* address.postalCode = "4516"
* address.country = "AU"