Profile: ERequestingDiagnosticRequestBase
Parent: AUBaseDiagnosticRequest
Id: erequesting-diagnostic-request-base
Title: "Diagnostic Service Requesting Base"
Description: "Diagnostic Service Requesting Base used for Pathology and Radiology.  Carries all the common attributes for diagnostic requests.  Only put attributes here if not specific to pathology or radiology."
* . ^short = "Diagnostic Service Requesting Base"
* ^abstract = true

* subject MS
* subject only Reference(AUCorePatient)
  * reference 1..

* requester 1..1
* requester only Reference(AUCorePractitionerRole) 
