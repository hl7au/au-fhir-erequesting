Profile: AUeRequestingTaskFulfillmentBase
Parent: Task
Id: au-erequesting-task-fulfillment-base
Title: "AU eRequesting Task Fulfillment Base"
Description: "This profile sets minimum expectations for a Task resource that is used to record, search, and fetch information about a task to be performed. It is based on the [Task](https://www.hl7.org/fhir/R4/task.html) and identifies the additional constraints, extensions, vocabularies and value sets that **SHALL** be present in the Task when conforming to this profile."

* ^status = #draft
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0

* groupIdentifier 1..1 MS
* groupIdentifier ^type.profile = $AULocalOrderIdentifier
* groupIdentifier.type 
  * coding 1..1    
  * coding = $v2-0203#PGN


* status MS
* status from http://hl7.org.au/fhir/ereq/ValueSet/au-erequesting-task-status (required)

* statusReason MS

* intent MS
* intent = #order (exactly)

* priority MS 

* for 1..1 MS
* for only Reference (AUCorePatient)

* requester 1..1 MS
* requester only Reference(AUCorePractitionerRole)

* authoredOn 1..1 MS

* lastModified MS

* owner MS
* owner only Reference(AUCoreOrganization)

ValueSet: AUeRequestingTaskFulfillmentTagValueSet
Id: au-erequesting-task-fulfillment-tag-valueset
Title: "Task Fulfillment Tag ValueSet"
Description: "Tag options for labelling fulfillment tasks."
* ^status = #draft
* ^experimental = true

* AUeRequestingTaskFulfillmentTagCodeSystem#fulfillment-task
* AUeRequestingTaskFulfillmentTagCodeSystem#fulfillment-task-group

CodeSystem: AUeRequestingTaskFulfillmentTagCodeSystem
Id: au-erequesting-task-fulfillment-tag-codesystem
Title: "Task Fulfillment Tag CodeSystem"
Description: "Tag options for labelling fulfillment tasks."
* ^status = #draft
* ^caseSensitive = true
* ^experimental = true

* #fulfillment-task-group "fulfillment task group"
* #fulfillment-task "fulfillment task"