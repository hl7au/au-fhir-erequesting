Profile: AUeRequestingTaskDiagnosticRequest
Parent: AUeRequestingTask
Id: au-erequesting-task-diagnosticrequest
Title: "AU eRequesting Task Diagnostic Request"
Description: "This profile sets minimum expectations for a Task resource that is used to record, search, and fetch information about a diagnostic request task to be fulfilled. It is based on the [AUeRequestingTask](StructureDefinition-au-erequesting-task.html) and identifies the additional constraints, extensions, vocabularies and value sets that **SHALL** be present when conforming to this profile."

* ^status = #draft
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0

* meta.tag[eRequestingFulfilmentTask]
  * code = #fulfilment-task
  * system = $tasktag
  * ^short = "fulfilment-task"

* focus 1..1 MS
* focus only Reference(AUeRequestingPathologyRequest or AUeRequestingImagingRequest)

* partOf 1..1
* partOf only Reference(AUeRequestingTaskGroup)
  * ^short = "Task group of which this task is a part"