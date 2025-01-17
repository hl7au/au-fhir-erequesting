Profile: AUeRequestingDiagnosticRequestTaskFulfillment
Parent: AUeRequestingTaskFulfillmentBase
Id: au-erequesting-disgnosticrequest-task-fulfillment
Title: "AU eRequesting Diagnostic Request Task Fulfillment"
Description: "This profile sets minimum expectations for a Task resource that is used to record, search, and fetch information about a task to be performed. It is based on the [Task](https://www.hl7.org/fhir/R4/task.html) and identifies the additional constraints, extensions, vocabularies and value sets that **SHALL** be present in the Task when conforming to this profile."

* ^status = #draft
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0

* meta.tag
  * code = #fulfillment-task
  * system = Canonical(AUeRequestingTaskFulfillmentTagCodeSystem)
  * ^short = "fulfillment-task"

* focus 1..1 MS
* focus only Reference(AUeRequestingPathologyRequest or AUeRequestingImagingRequest)

* partOf ..1 MS
* partOf only Reference(AUeRequestingTaskFulfillmentGroup)
  * ^short = "Fulfillment task group of which this task is a part"