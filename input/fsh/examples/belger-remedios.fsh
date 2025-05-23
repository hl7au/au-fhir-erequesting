Instance: belger-remedios
InstanceOf: Patient
Usage: #example
* meta.profile = "http://hl7.org.au/fhir/core/StructureDefinition/au-core-patient"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-name"
* extension[=].valueString = "Patient - Remedios Belger"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-description"
* extension[=].valueMarkdown = "Shows an example of a patient, Remedios Belger, for the *AU Core Patient* profile with IHI, medicare number, contact details, gender, birth date, address, and Indigenous status."
* extension[+].url = "http://hl7.org.au/fhir/StructureDefinition/indigenous-status"
* extension[=].valueCoding = $australian-indigenous-status-1#3 "Both Aboriginal and Torres Strait Islander origin"
* identifier[0].extension[0].url = "http://hl7.org.au/fhir/StructureDefinition/ihi-status"
* identifier[=].extension[=].valueCoding = $ihi-status-1#active
* identifier[=].extension[+].url = "http://hl7.org.au/fhir/StructureDefinition/ihi-record-status"
* identifier[=].extension[=].valueCoding = $ihi-record-status-1#verified "verified"
* identifier[=].type = $v2-0203#NI
* identifier[=].type.text = "IHI"
* identifier[=].system = "http://ns.electronichealth.net.au/id/hi/ihi/1.0"
* identifier[=].value = "8003608666976378"
* identifier[+].type = $v2-0203#MC
* identifier[=].type.text = "Medicare Number"
* identifier[=].system = "http://ns.electronichealth.net.au/id/medicare-number"
* identifier[=].value = "49516515811"
* name.use = #official
* name.family = "BELGER"
* name.given = "Remedios"
* telecom[0].system = #phone
* telecom[=].value = "0770109100"
* telecom[=].use = #home
* telecom[+].system = #phone
* telecom[=].value = "0491570159"
* telecom[=].use = #mobile
* telecom[+].system = #phone
* telecom[=].value = "0770103121"
* telecom[=].use = #work
* gender = #female
* birthDate = "1989-01-04"
* address.line = "200 Ocean Pl"
* address.city = "Logan Reserve"
* address.state = "QLD"
* address.postalCode = "4133"
* address.country = "AU"