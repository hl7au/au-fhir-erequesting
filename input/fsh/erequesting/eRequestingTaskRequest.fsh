Profile: ERequestingTaskRequest
Parent: ERequestingTaskBase
Id: erequesting-task-request
Title: "Diagnostic Requesting Task"
Description: "Diagnostic Requesting Task to track fulfilment of a Diagnostic Request. See [ERequestTaskBase](StructureDefinition-erequesting-task-base.html) for a description of the expected `status` changes."

* focus 1..1 MS
* focus only Reference(ERequestingDiagnosticRequestPathology or ERequestingDiagnosticRequestRadiology)
  * ^short = "Diagnostic service this task is related to"