Instance: losch-sallie
InstanceOf: Practitioner
Usage: #example
* meta.profile = "http://hl7.org.au/fhir/core/StructureDefinition/au-core-practitioner"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-name"
* extension[=].valueString = "Practitioner - Sallie Losch"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-description"
* extension[=].valueMarkdown = "Shows an example of a practitioner, Sallie Losch, for the *AU Core Practitioner* profile, including HPI-I, name and APHRA information."
* identifier.type = $v2-0203#NPI "National provider identifier"
* identifier.type.text = "HPI-I"
* identifier.system = "http://ns.electronichealth.net.au/id/hi/hpii/1.0"
* identifier.value = "8003613233384866"
* name.family = "LOSCH"
* name.given = "Sallie"
* telecom[0].system = #phone
* telecom[=].value = "0270104128"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "sallie.losch@example.com.au"
* address.line = "93 Elizabeth Cl"
* address.city = "Marlowe"
* address.state = "NSW"
* address.postalCode = "2622"
* gender = #female
* qualification.extension.extension.url = "ahpraProfession"
* qualification.extension.extension.valueCodeableConcept.text = "Other Medical Practitioners"
* qualification.extension.url = "http://hl7.org.au/fhir/StructureDefinition/ahpraprofession-details"
* qualification.identifier.type = $v2-0203_1#AHPRA "Australian Health Practitioner Regulation Agency Registration Number"
* qualification.identifier.type.text = "Ahpra Registration Number"
* qualification.identifier.system = "http://hl7.org.au/id/ahpra-registration-number"
* qualification.identifier.value = "HAC0000000068"
* qualification.code = $v2-0360#AUAHPRAProfession "AHPRA Profession"