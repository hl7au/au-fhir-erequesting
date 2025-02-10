Profile: AUeRequestingTaskGroup
Parent: AUeRequestingTask
Id: au-erequesting-task-group
Title: "AU eRequesting Task Group"
Description: "This profile sets the minimum expectations for a grouping of tasks that are part of the same fulfilment group.  It shares a common base profile with [AUeRequestingTaskDiagnosticRequest](StructureDefinition-au-erequesting-task-diagnosticrequest.html), namely [AUeRequestingTask](StructureDefinition-au-erequesting-task.html) It enables more efficient discovery and processing of diagnostics orders comprising multiple tasks."

* ^status = #draft
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0

* meta.tag[eRequestingFulfilmentTask]
  * code = #fulfilment-task-group
  * system = $tasktag
  * ^short = "fulfilment-task-group"

* partOf 0..0
* focus 0..0