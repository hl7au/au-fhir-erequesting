Profile: ERequestingPathologyRequestBase
Parent: ERequestingDiagnosticRequestBase
Id: erequesting-pathology-request-base
Title: "Pathology Request Base"
Description: "Pathology request base profile used for both a pathology request and a group of pathology requests."

* . ^short = "Pathology Request Base"
* ^abstract = true

* extension contains ERequestingPathologyRule3Exemption named requestRule3exemption 0..1 MS

// * specimen MS
// * specimen only Reference(ERequestingSpecimen)

* category 1..1 MS
* category = $sct#108252007 "Laboratory procedure" (exactly)

Extension: ERequestingPathologyRule3Exemption
Id: erequesting-pathology-rule3exemption
Title: "Rule 3 Exemption"
Description: "Extension to request rule 3 exemption"
Context: ServiceRequest

* valueBoolean MS
