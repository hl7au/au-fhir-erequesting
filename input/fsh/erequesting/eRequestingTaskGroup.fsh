Profile: ERequestingTaskGroup
Parent: ERequestingTaskBase
Id: erequesting-task-group
Title: "Diagnostic Request Task Group"
Description: "This Task is the parent Task to a group of [ERequestingTaskRequest](StructureDefinition-erequesting-task-request.html) fulfilment Tasks for ServiceRequests."

* extension contains ERequestingSubTaskCount named groupSubTaskCount 0..1 MS

* . ^short = "Diagnostic Task Group"

* groupIdentifier 1..1 MS
* groupIdentifier ^type.profile = Canonical(ERequestingPlacerGroupNumber)

* owner 0..1 MS
* owner only Reference(AUCoreOrganization or AUBaseHealthcareService or AUCorePractitionerRole)

* meta.tag[erequesting-task] = ERequestingTaskTag#diagnostic-request-task-group
  * ^short = "diagnostic-request-task-group"

* partOf 0..0

* focus ..1 MS
* focus only Reference(ERequestingPathologyRequestGroup or ERequestingRadiologyRequestGroup)
  * ^short = "Diagnostic service group this task is related to"

Extension: ERequestingSubTaskCount
Id: erequesting-subtask-count
Title: "Count of Sub-Tasks for a Group Task"
Description: "Count of Sub-Tasks for a Group Task"
Context: ERequestingTaskGroup

* valuePositiveInt 0..1 MS
