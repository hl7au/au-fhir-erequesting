Profile: ERequestingTaskCommunicationRequest
Parent: ERequestingTaskBase
Id: erequesting-task-communicationrequest
Title: "Communication Request Task"
Description: "Communication Request Task to support a Patient or Practitioner CommunicationRequest."

* . ^short = "Communication Request Task"

* meta.tag[erequesting-task] = ERequestingTaskTag#communication-request-task
  * ^short = "communication-request-task"

* focus 1..1 MS
* focus only Reference(CommunicationRequest)
  * ^short = "CommunicationRequest this task is the focus of"

* status = #requested

* partOf 0..0
// * partOf ..1 MS
// * partOf only Reference(ERequestingTaskGroup)
//   * ^short = "Fulfillment task group this task is a part of"
