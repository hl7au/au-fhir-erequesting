Instance: obstetrician-losch-sallie
InstanceOf: PractitionerRole
Usage: #example
* meta.profile = "http://hl7.org.au/fhir/core/StructureDefinition/au-core-practitionerrole"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-name"
* extension[=].valueString = "PractitionerRole - Obstetrician and gynaecologist"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-description"
* extension[=].valueMarkdown = "Shows an example of an obstetrician and gynaecologist, Sallie Losch, for the *AU Core PractitionerRole* profile, including Medicare Provider Number, associated organisation, role, and contact details."
* identifier.type = $v2-0203_1#UPIN
* identifier.type.text = "Medicare Provider Number"
* identifier.system = "http://ns.electronichealth.net.au/id/medicare-provider-number"
* identifier.value = "2448931H"
* practitioner = Reference(losch-sallie)
* code.coding[0] = $1220.0#253913 "Obstetrician and Gynaecologist"
* code.coding[+] = $sct#309367003 "Obstetrician and gynaecologist"
* specialty = $sct#394585009 "Obstetrics and gynaecology"
* telecom[0].system = #phone
* telecom[=].value = "0270104128"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "sallie.losch@example.com.au"
* telecom[=].use = #work