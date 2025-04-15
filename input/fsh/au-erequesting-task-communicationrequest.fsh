Profile: AUeRequestingTaskCommunicationRequest
Parent: AUeRequestingTask
Id: au-erequesting-task-communicationrequest
Title: "AU eRequesting Communication Request Task"
Description: """
AU eRequesting communication request task used to track the fulfilment of a communication request. For example, whether fulfilment was attempted, successful, or failed. 
This profile sets minimum expectations for a Task resource that is used to record, search, and fetch information about an AU eRequesting communication request task to be fulfilled. It is based on the [AU eRequesting Task](StructureDefinition-au-erequesting-task.html) and identifies the additional constraints, extensions, vocabularies and value sets that **SHALL** be present when conforming to this profile.
"""

* ^status = #draft
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0

* meta.tag[eRequestingFulfilmentTask] = $tasktag#fulfilment-task
  * ^short = "fulfilment-task"

* partOf 1..1 MS
* partOf only Reference(AUeRequestingTaskGroup)
  * ^short = "Task group of which this task is a part"

* focus 1..1 MS
* focus only Reference(AUeRequestingCommunicationRequestCopyTo or AUeRequestingCommunicationRequestPatient or AUeRequestingCommunicationRequestUrgentProvider)
  * ^short = "CommunicationRequest of which this task is the focus of"
