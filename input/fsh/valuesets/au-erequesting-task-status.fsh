ValueSet: AUeRequestingTaskStatus
Id: au-erequesting-task-status
Title: "AU eRequesting TaskStatus"
Description: "Task status values used in the Australian eRequesting context."
* ^meta.profile[+] = "https://healthterminologies.gov.au/fhir/StructureDefinition/composed-value-set-4"
* ^url = "http://terminology.hl7.org.au/ValueSet/au-erequesting-task-status"
* ^version = "1.0.0"
* ^identifier.value = "urn:oid:2.16.840.1.113883.2.3.4.2.4.37"
* ^identifier.system = $oid
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