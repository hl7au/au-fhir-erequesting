Profile: AUeRequestingTaskDiagnosticRequest
Parent: AUeRequestingTaskBase
Id: au-erequesting-task-diagnosticrequest
Title: "AU eRequesting Task Fulfillment"
Description: "This profile sets minimum expectations for a Diagnostic Request Task resource that is used to record, search, and fetch information about a diagnostic request task to be performed. It is based on the [AUeRequestingTaskBase](StructureDefinition-au-erequesting-task-base.html) and identifies the additional constraints, extensions, vocabularies and value sets that **SHALL** be present in the Diagnostic Request Task when conforming to this profile."

* ^status = #draft
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0

* meta.tag
  * code = #fulfillment-task
  * system = Canonical(AUeRequestingTaskTag)
  * ^short = "fulfillment-task"

* focus 1..1
* focus only Reference(AUeRequestingPathologyRequest or AUeRequestingImagingRequest)

* partOf 1..1
* partOf only Reference(AUeRequestingTaskGroup)
  * ^short = "Task group of which this task is a part"