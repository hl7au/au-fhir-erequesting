Instance: diagnostic-mclaughlin-kimberlee
InstanceOf: PractitionerRole
Usage: #example
* meta.profile = "http://hl7.org.au/fhir/core/StructureDefinition/au-core-practitionerrole"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-name"
* extension[=].valueString = "PractitionerRole - Radiologist"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-description"
* extension[=].valueMarkdown = "Shows an example of a Radiologist role for the *AU Core PractitionerRole* profile, including Medicare Provider Number, role, telecom and references to the associated Practitioner and Organization."
* identifier.type = $v2-0203_1#UPIN "Medicare Provider Number"
* identifier.type.text = "Medicare Provider Number"
* identifier.system = "http://ns.electronichealth.net.au/id/medicare-provider-number"
* identifier.value = "2448501H"
* practitioner = Reference(mclaughlin-kimberlee)
* organization = Reference(mount-charlton-radiology)
* code = $sct#66862007 "Radiologist"
* code.text = "Radiologist"
* telecom[0].system = #phone
* telecom[=].value = "(07) 701 07257"
* telecom[+].system = #email
* telecom[=].value = "kimberlee.mclaughlin@mouncharltonradiology.example.net"