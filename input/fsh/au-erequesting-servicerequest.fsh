Profile: AUERequestingServiceRequest
Parent: AUBaseDiagnosticRequest
Id: au-erequesting-servicerequest
Title: "AU eRequesting ServiceRequest"
Description: "This profile defines a service request structure to represent a request for a diagnostic investigation. It is based on the [AU Base Diagnostic Request](http://hl7.org.au/fhir/StructureDefinition/au-diagnosticrequest)."

* ^status = #draft

* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension.valueInteger = 0
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension.valueCode = #draft

* . ^short = "A diagnostic service request"


* identifier MS 

* status MS

* intent 1..1
* intent MS

* code 1..1
* code MS

* subject MS
* subject MS

* authoredOn 1..1
* authoredOn MS 
* authoredOn obeys au-ereq-srr-00

* requester 1..1
* requester MS

* requisition 1..1
* requisition MS 

* category 1..*
* category MS
* category obeys au-ereq-srr-01

* note MS

* insurance MS

* encounter MS

* reasonCode MS

Invariant: au-ereq-srr-00
Description: "Date must include at least year, month, and day"
Severity: #error
Expression: "authoredOn.exists()"

Invariant: au-ereq-srr-01
Description: "Category shall be one of SNOMED CT 108252007 Laboratory procedure or SNOMED CT 363679005 Imaging"
Severity: #error
Expression: "category.exists()"
