Profile: AUeRequestingTask
Parent: Task
Id: au-erequesting-task
Title: "AU eRequesting Task"
Description: "This profile sets minimum expectations for a Task resource that is used to record, search, and fetch information about a task to be performed. It is based on the [Task](https://www.hl7.org/fhir/R4/task.html) and identifies the additional constraints, extensions, vocabularies and value sets that **SHALL** be present in the Task when conforming to this profile."

* ^status = #draft
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0

* groupIdentifier 1..1 MS
* groupIdentifier ^type.profile = "http://hl7.org.au/fhir/StructureDefinition/au-localorderidentifier"
* groupIdentifier.type.coding 1..1
* groupIdentifier.type.coding.system 1..1 
* groupIdentifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly) 
* groupIdentifier.type.coding.code 1..1
* groupIdentifier.type.coding.code = #PGN (exactly)

* status MS

* statusReason MS

* intent MS
* intent = #order (exactly)

* priority MS 

* focus 1..1 MS
* focus only Reference(AUeRequestingPathologyRequest or AUeRequestingImagingRequest)

* for 1..1 MS
* for only Reference (AUCorePatient)

* requester 1..1 MS
* requester only Reference(AUCorePractitionerRole)

* authoredOn 1..1 MS

* lastModified MS

* owner MS
* owner only Reference(AUCoreOrganization)






