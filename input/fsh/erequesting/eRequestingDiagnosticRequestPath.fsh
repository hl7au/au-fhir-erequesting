Profile: ERequestingDiagnosticRequestPathology
Parent: ERequestingDiagnosticRequestBase
Id: erequesting-diagnosticrequest-pathology
Title: "Diagnostic Service Requesting Pathology"
Description: "Diagnositic Service requesting for pathology."

* extension contains ERequestingServiceRequestRule3Exemption named requestingRule3exemption 0..1 MS

* code 1.. MS
* code ^short = "Pathology test code or free text test name"
* code from $RCPA-SPIA (extensible)
* code.coding ^short = "Ideally a value set from SNOMED-CT such as RCPA SPIA request codes, but may need to support lab maintained test codes."
* code.text 1..1
* code.text ^short = "Test name selected or free text entered by the user"

* quantityQuantity MS
  * ^short = "Allows provide quantity of a test (normally 1)"
* occurrencePeriod MS
  * ^short = "Period over which the service should occur independent of regulatory obligation"

Extension: ERequestingServiceRequestRule3Exemption
Id: erequesting-servicerequest-rule3exemption
Title: "Diagnostic Request Rule 3 Exemption"
Description: "Extension to request rule 3 exemption"
Context: ServiceRequest

* valueBoolean MS
