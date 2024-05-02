Profile: ERequestingTaskRequest
Parent: ERequestingTaskBase
Id: erequesting-task-request
Title: "Diagnostic Request Task"
Description: "Diagnostic Request Task to track fulfilment of a Diagnostic Request. See [ERequestTaskBase](StructureDefinition-erequesting-task-base.html) for a description of the expected `status` changes."

* groupIdentifier 0..0
* owner 0..0

* meta.tag[erequesting-task] = ERequestingTaskTag#diagnostic-request-task
  * ^short = "diagnostic-request-task"

* focus 1..1 MS
* focus only Reference(ERequestingPathologyRequest or ERequestingRadiologyRequest)
  * ^short = "Diagnostic service this task is related to"

* partOf 1..1 MS
* partOf only Reference(ERequestingTaskGroup)
  * ^short = "Fulfillment task group this task is a part of"