Instance: roberts-fred
InstanceOf: Patient
Usage: #example
* meta.profile = "http://hl7.org.au/fhir/core/StructureDefinition/au-core-patient"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-name"
* extension[=].valueString = "Patient - Fred Roberts"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-description"
* extension[=].valueMarkdown = "Shows an example of a patient, Fred Roberts, for the *AU Core Patient* profile, with an IHI, contact details, gender, birth date, address, and Indigenous status."
* extension[+].url = "http://hl7.org.au/fhir/StructureDefinition/indigenous-status"
* extension[=].valueCoding = $australian-indigenous-status-1#4 "Neither Aboriginal nor Torres Strait Islander origin"
* identifier.extension[0].url = "http://hl7.org.au/fhir/StructureDefinition/ihi-status"
* identifier.extension[=].valueCoding = $ihi-status-1#active
* identifier.extension[+].url = "http://hl7.org.au/fhir/StructureDefinition/ihi-record-status"
* identifier.extension[=].valueCoding = $ihi-record-status-1#verified "verified"
* identifier.extension[+].url = "http://hl7.org.au/fhir/StructureDefinition/ihi-verified-date"
* identifier.extension[=].valueDateTime = "2024-02-13"
* identifier.type = $v2-0203#NI
* identifier.type.text = "IHI"
* identifier.system = "http://ns.electronichealth.net.au/id/hi/ihi/1.0"
* identifier.value = "8003608500314661"
* name.use = #usual
* name.family = "Roberts"
* name.given = "Fred"
* telecom[0].system = #phone
* telecom[=].value = "0491570158"
* telecom[=].use = #mobile
* telecom[+].system = #phone
* telecom[=].value = "0770109298"
* telecom[=].use = #home
* telecom[+].system = #email
* telecom[=].value = "fred.roberts@myownpersonaldomain.com"
* gender = #male
* birthDate = "1961-06-16"
* address.line = "33 Southern Cl"
* address.city = "Westbrook"
* address.state = "QLD"
* address.postalCode = "4350"
* address.country = "AU"