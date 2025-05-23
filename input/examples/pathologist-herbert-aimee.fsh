Instance: pathologist-herbert-aimee
InstanceOf: PractitionerRole
Usage: #example
* meta.profile = "http://hl7.org.au/fhir/core/StructureDefinition/au-core-practitionerrole"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-name"
* extension[=].valueString = "PractitionerRole - Pathologist"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-description"
* extension[=].valueMarkdown = "Shows an example of a Pathologist role for the *AU Core PractitionerRole* profile, including Medicare Provider Number, role, telecom and references to the associated Practitioner and Organization."
* identifier.type = $v2-0203_1#UPIN "Medicare Provider Number"
* identifier.type.text = "Medicare Provider Number"
* identifier.system = "http://ns.electronichealth.net.au/id/medicare-provider-number"
* identifier.value = "2448391X"
* practitioner = Reference(herbert-aimee)
* organization = Reference(kioma-pathology)
* code = $sct#61207006 "Medical pathologist"
* code.text = "Pathologist"
* telecom[0].system = #phone
* telecom[=].value = "(07) 7010 37 53"
* telecom[+].system = #email
* telecom[=].value = "aimee.herbert@kiomapathology.example.net"