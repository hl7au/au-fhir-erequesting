Profile: ERequestingDiagnosticRequestBase
Parent: AUBaseDiagnosticRequest
Id: erequesting-diagnostic-request-base
Title: "Diagnostic Service Requesting Base"
Description: "Diagnostic Service Requesting Base used for Pathology and Radiology.  Carries all the common attributes for diagnostic requests.  Only put attributes here if not specific to pathology or radiology."
* . ^short = "Diagnostic Service Requesting Base"
* ^abstract = true

* extension contains ResultCopiesTo named copiesto 0..* MS

* category 1..1 MS
* category from ERequestingDiagnosticRequestCategory (required)

* reasonCode ..1 MS
* reasonCode.text 1..1

* reasonReference MS

* priority MS
* priority from ERequestingDiagnosticRequestPriority (required)

* subject MS
* subject only Reference(AUCorePatient)
  * reference 1..

* requester 1..1
* requester only Reference(AUCorePractitionerRole) 

* note MS

* supportingInfo MS
* supportingInfo obeys narrative-for-supportinginfo

* occurrencePeriod MS
  * ^short = "Period over which the service should occur independent of regulatory obligation"

* authoredOn 1..1
* authoredOn ^short = "Date requested"

* insurance 1..1 MS
* insurance only Reference(ERequestingCoverage)
  * ^short = "Reference to Coverage resource for funding type"
  * reference 1..
    * ^short = "Reference to contained Coverage resource"


Invariant: narrative-for-supportinginfo
Description: "Always require a narrative for supportingInfo references in ServiceRequest"
Severity: #error
Expression: "resolve().text.div.exists()"
