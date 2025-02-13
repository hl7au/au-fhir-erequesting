Profile: AUeRequestingTaskGroup
Parent: AUeRequestingTask
Id: au-erequesting-task-group
Title: "AU eRequesting Task Group"
Description: "This profile sets minimum expectations for a Task resource that is used to record, search, and fetch information about a group of tasks that are part of the same fulfilment group. It is based on the [AU eRequesting Task](StructureDefinition-au-erequesting-task.html) and identifies the additional constraints, extensions, vocabularies and value sets that **SHALL** be present when conforming to this profile."

* ^status = #draft
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0

* meta.tag[eRequestingFulfilmentTask]
  * code = #fulfilment-task-group
  * system = $tasktag
  * ^short = "fulfilment-task-group"

* focus 0..0