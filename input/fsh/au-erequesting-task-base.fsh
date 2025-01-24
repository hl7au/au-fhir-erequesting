Profile: AUeRequestingTaskBase
Parent: Task
Id: au-erequesting-task-base
Title: "AU eRequesting Task Base"
Description: "This base profile sets minimum expectations for derived Task resources that are used to record, search, and fetch information about a task to be performed. It is based on the [Task](https://www.hl7.org/fhir/R4/task.html) and identifies the additional constraints, extensions, vocabularies and value sets that **SHALL** be present in the derived Tasks when conforming to this profile."

* ^status = #draft
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^abstract = true

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

CodeSystem: AUeRequestingTaskTagCodeSystem
Id: au-erequesting-task-tag-codesystem
Title: "Task Tag CodeSystem"
Description: "Tag options for labelling tasks."
* ^status = #draft
* ^caseSensitive = true
* ^experimental = true
 
* #fulfillment-task-group "fulfillment task group"
* #fulfillment-task "fulfillment task"
 