Profile: AUeRequestingTaskGroup
Parent: AUeRequestingTaskBase
Id: au-erequesting-task-group
Title: "AU eRequesting Task Group"
Description: "This provides a grouping of tasks that are part of the same fulfillment group.  It shares a common base profile with [AUeRequestingTaskDiagnosticRequest](StructureDefinition-au-erequesting-task-diagnosticrequest.html), namely [AUeRequestingTaskBase](StructureDefinition-au-erequesting-task-base.html) It enables more efficient discovery and processing of diagnostics orders comprising multiple tasks."

* ^status = #draft
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0

* meta.tag[eRequestingFulfillmentTask]
  * code = #fulfillment-task-group
  * system = Canonical(AUeRequestingTaskTag)
  * ^short = "fulfillment-task-group"

* partOf 0..0
* focus 0..0