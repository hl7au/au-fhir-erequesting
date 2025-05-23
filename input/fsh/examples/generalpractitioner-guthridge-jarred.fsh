Instance: generalpractitioner-guthridge-jarred
InstanceOf: PractitionerRole
Usage: #example
* meta.profile = "http://hl7.org.au/fhir/core/StructureDefinition/au-core-practitionerrole"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-name"
* extension[=].valueString = "PractitionerRole - General practitioner"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-description"
* extension[=].valueMarkdown = "Shows an example of a General Practitioner role for the *AU Core PractitionerRole* profile, using a Medicare Provider Number as the role identifier, and references to the associated Practitioner and Organization."
* identifier.type = $v2-0203_1#UPIN "Medicare Provider Number"
* identifier.type.text = "Medicare Provider Number"
* identifier.system = "http://ns.electronichealth.net.au/id/medicare-provider-number"
* identifier.value = "2448301T"
* practitioner = Reference(practitioner-guthridge-jarred)
* organization = Reference(elimbah-medical-center)
* code.coding[0] = $sct#62247001
* code.coding[+] = $1220.0#253111
* code.text = "General Practitioner"
* telecom[0].system = #phone
* telecom[=].value = "0770109540"
* telecom[+].system = #email
* telecom[=].value = "jarred.guthridge@elimbahmedicalcentre.example.com.au"