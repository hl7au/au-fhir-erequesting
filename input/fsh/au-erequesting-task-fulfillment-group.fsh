Profile: AUeRequestingTaskFulfillmentGroup
Parent: AUeRequestingTaskFulfillmentBase
Id: au-erequesting-task-fulfillment-group
Title: "AU eRequesting Task Fulfillment Group"
Description: "This provides a grouping of tasks that are part of the same fulfillment group.  It enables more efficient discovery and processing of diagnostics orders comprising multiple tasks."

* ^status = #draft
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0

* meta.tag
  * code = #fulfillment-task-group
  * system = Canonical(AUeRequestingTaskFulfillmentTagCodeSystem)
  * ^short = "fulfillment-task-group"

* partOf 0..0
* focus 0..0
