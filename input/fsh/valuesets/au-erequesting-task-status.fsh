ValueSet: AUeRequestingTaskStatus
Id: au-erequesting-task-status
Title: "AU eRequesting Task Status"
Description: "Task status values used in the Australian eRequesting context."
* ^meta.profile[+] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^version = "1.0.0"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^status = #draft
* ^experimental = false
* ^date = "2024-09-26"
* ^publisher = "HL7 Australia"
* ^copyright = ""
* $taskstatus#requested
* $taskstatus#received
* $taskstatus#accepted
* $taskstatus#rejected
* $taskstatus#cancelled
* $taskstatus#in-progress
* $taskstatus#on-hold
* $taskstatus#failed
* $taskstatus#completed