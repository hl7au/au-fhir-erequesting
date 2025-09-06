Profile: AUeRequestingTaskGroup
Parent: AUeRequestingTask
Id: au-erequesting-task-group
Title: "AU eRequesting Task Group"
Description: "This profile sets minimum expectations for a Task resource that is used to record, search, and fetch information about a group of tasks that are part of the same fulfilment group. It is based on the [AU eRequesting Task](StructureDefinition-au-erequesting-task.html) profile and identifies the additional constraints, extensions, vocabularies and value sets that **SHALL** be present in the Task resource when conforming to this profile."

* obeys au-ereq-taskgr-01

* ^status = #active
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1

* meta.tag[eRequestingFulfilmentTask] = $resourcetag#fulfilment-task-group


* focus 0..0

Invariant: au-ereq-taskgr-01
Description: "eRequesting Fulfilment Task tag shall be 'fulfilment-task-group' from http://terminology.hl7.org.au/CodeSystem/resource-tag only."
Severity: #error
Expression: "meta.tag.where(system = 'http://terminology.hl7.org.au/CodeSystem/resource-tag' and code = 'fulfilment-task').empty()"