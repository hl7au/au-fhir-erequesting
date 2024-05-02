Profile: ERequestingTaskBase
Parent: Task
Id: erequesting-task-base
Title: "Diagnostic Request Task Base"
Description: "Diagnostic Request Task Base is a shared Task foundation for individual and group Tasks."

* . ^short = "Diagnostic Request Task Base"
* ^abstract = true

* meta
  * tag ^slicing.rules = #open
  * tag ^slicing.discriminator.type = #value
  * tag ^slicing.discriminator.path = "system"
  * tag contains 
      erequesting-task 0..1 MS
  * tag[erequesting-task]
    * system = Canonical(ERequestingTaskTag)
  * tag[erequesting-task] from ERequestingTaskTags (required)
    * ^short = "diagnostic-request-task | diagnostic-request-task-group | communication request task"

* for 1..1 MS
* for only Reference(AUCorePatient)
  * ^short = "Patient the fulfilment of the diagnostic request is for"

* requester 1..1 MS
* requester only Reference(AUCorePractitionerRole)
  * ^short = "The provider requesting the diagnostic service"

* output MS
  * value[x] only Reference(AUBaseDiagnosticImagingReport or AUBasePathologyReport)
  * ^short = "Must support when completed"

CodeSystem: ERequestingTaskTag
Id: erequesting-task-tag
Title: "eRequest Task Tag codes"
Description: "A Code System for diagnostic request tag codes to be included in meta to distinguish Task uses.  Covers both diagnostic requests and communication tasks."

* #diagnostic-request-task "diagnostic request task"
* #diagnostic-request-task-group "diagnostic request task group"
* #communication-request-task "communication request task"
* ^experimental = true
* ^caseSensitive = true

ValueSet: ERequestingTaskTags
Id: erequesting-task-tags
Title: "eRequest Task Tag codes"
Description: "The matching ValueSet for the diagnostic request tag CodeSystem."

* include codes from system ERequestingTaskTag
* ^experimental = true
