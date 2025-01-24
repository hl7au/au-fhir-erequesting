Profile: AUeRequestingTaskCommunicationRequest
Parent: AUeRequestingTaskBase
Id: au-erequesting-task-communicationrequest
Title: "AU eRequesting Communication Request Task"
Description: "AU eRequesting communication request task tracking fulfillment of a communication request.  For example, was the communication request attempted, successful, failed."

* ^status = #draft
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0

* meta.tag
  * code = #fulfillment-task
  * ^short = "fulfillment-task"
* focus 1..1 MS
* focus only Reference(CommunicationRequest)
  * ^short = "CommunicationRequest this task is the focus of"
* partOf ..1 MS
* partOf only Reference(AUeRequestingTaskGroup)
  * ^short = "Task group this task is a part of"