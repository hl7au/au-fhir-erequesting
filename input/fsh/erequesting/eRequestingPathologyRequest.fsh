Profile: ERequestingPathologyRequest
Parent: ERequestingPathologyRequestBase
Id: erequesting-pathology-request
Title: "Pathology Request"
Description: "Pathology request."

* extension contains ERequestingPathologyRule3Exemption named requestRule3exemption 0..1 MS

* code 1.. MS
* code ^short = "Pathology test code or free text test name"
* code from $RCPA-SPIA (extensible)
* code.coding ^short = "Ideally a value set from SNOMED-CT such as RCPA SPIA request codes, but may need to support lab maintained test codes."
* code.text 1..1
* code.text ^short = "Test name selected or free text entered by the user"

* category 1..1 MS
* category = $sct#108252007 "Laboratory procedure" (exactly)

* quantityQuantity 1..1 MS
  * ^short = "Allows provide quantity of a test (normally 1)"

* specimen MS
* specimen only Reference(ERequestingSpecimen)

* basedOn 1..1
* basedOn only Reference(ERequestingPathologyRequestGroup)

Extension: ERequestingPathologyRule3Exemption
Id: erequesting-pathology-rule3exemption
Title: "Rule 3 Exemption"
Description: "Extension to request rule 3 exemption"
Context: ServiceRequest

* valueBoolean MS
