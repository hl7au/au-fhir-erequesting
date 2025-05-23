Instance: barney-view-private-hospital-of-Organization
InstanceOf: Organization
Usage: #example
* id = "barney-view-private-hospital"
* meta.profile = "http://hl7.org.au/fhir/core/StructureDefinition/au-core-organization"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-name"
* extension[=].valueString = "Organization - Barney View Private Hospital"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-description"
* extension[=].valueMarkdown = "Shows an example of an organisation, Barney View Private Hospital, for the *AU Core Organization* profile, with HPI-O and ABN, type as hospital, contact information and physical address."
* identifier[0].type = $v2-0203_1#NOI
* identifier[=].type.text = "HPI-O"
* identifier[=].system = "http://ns.electronichealth.net.au/id/hi/hpio/1.0"
* identifier[=].value = "8003626566706869"
* identifier[+].type = $v2-0203#XX
* identifier[=].type.text = "ABN"
* identifier[=].system = "http://hl7.org.au/id/abn"
* identifier[=].value = "81193972254"
* type.coding[0] = $1292.0#8401 "Hospitals (Except Psychiatric Hospitals)"
* type.coding[+] = $sct#2421000175108 "Acute care inpatient service"
* type.text = "Private acute care Hospital"
* name = "Barney View Private Hospital"
* telecom[0].system = #phone
* telecom[=].value = "0755507777"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "info@barneyviewph.example.net"
* address.line = "195 Maple Cct"
* address.city = "Barney View"
* address.state = "QLD"
* address.postalCode = "4287"