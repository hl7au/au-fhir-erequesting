Instance: ServiceRequestCopiesTo
InstanceOf: SearchParameter
Title: "Diagnostic Request CopiesTo SearchParameter"
Usage: #definition
Description: "Search parameter for ServiceRequest by copiesTo reference."
* url = "http://hl7.org.au/fhir/erequesting/SearchParameter/ServiceRequestCopiesTo"
* version = "1.0"
* name = "Diagnostic Request Copies To"
* status = #active
* code = #copiesTo
* base = #ServiceRequest
* target[0] = #PractitionerRole
* target[+] = #Practitioner
* target[+] = #Device
* target[+] = #Patient
* target[+] = #RelatedPerson
* target[+] = #Organization
* target[+] = #Location
* target[+] = #HealthcareService
* target[+] = #CareTeam
* target[+] = #Endpoint
* type = #reference
* expression = "ServiceRequest.extension('http://hl7.org.au/fhir/StructureDefinition/result-copies-to').value"
