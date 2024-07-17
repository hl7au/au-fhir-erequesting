Profile: AUeRequestingServiceRequest
Parent: AUBaseDiagnosticRequest
Id: au-erequesting-servicerequest
Title: "AU eRequesting ServiceRequest"
Description: "This profile defines a service request structure to represent a request for a diagnostic investigation. It is based on the [AU Base Diagnostic Request](http://hl7.org.au/fhir/StructureDefinition/au-diagnosticrequest)."

* ^status = #draft

* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0

* . ^short = "A diagnostic service request"


* identifier MS 

* status MS

* intent 1..1 MS
* intent = #order

* code 1..1 MS
* code.text 1..1

* subject MS
* subject only Reference(AUCorePatient)

* authoredOn 1..1 MS
* authoredOn obeys au-ereq-srr-01

* requester 1..1 MS
* requester only Reference(AUCorePractitionerRole)

* requisition 1..1 MS
* requisition ^type.profile = "http://hl7.org.au/fhir/StructureDefinition/au-localorderidentifier"
* requisition.type.coding 1..1
* requisition.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* requisition.type.coding.code = #PGN

* category 1..* MS

* note MS

* insurance MS
* insurance only Reference(AUBaseCoverage)

* encounter MS
* encounter only Reference(AUCoreEncounter)
* encounter.reference 1..1

* reasonCode MS

Invariant: au-ereq-srr-01
Description: "Date must include at least year, month, and day"
Severity: #error
Expression: "$this.toString().matches('^[0-9]{4}-[0-9]{2}-[0-9]{2}$')"
