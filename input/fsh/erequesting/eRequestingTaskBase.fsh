Profile: ERequestingTaskBase
Parent: Task
Id: erequesting-task-base
Title: "Diagnostic Task Base"
Description: "Diagnostic Task Base is a shared Task foundation for future use."
* . ^short = "Diagnostic Task Base"
* ^abstract = true

* groupIdentifier 1..1 MS

* for 1..1 MS
* for only Reference(AUCorePatient)
  * ^short = "Patient the fulfilment of the diagnostic request is for"

* requester 1..1 MS
* requester only Reference(AUCorePractitionerRole)
  * ^short = "The provider requesting the diagnostic service"

* owner 0..1 MS
* owner only Reference(AUCoreOrganization or AUBaseHealthcareService)

* output MS
  * value[x] only Reference(AUBaseDiagnosticImagingReport or AUBasePathologyReport)
  * ^short = "Must support when completed"
