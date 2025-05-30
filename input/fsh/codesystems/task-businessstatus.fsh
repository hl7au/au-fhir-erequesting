CodeSystem: TaskBusinessStatus
Id: task-businessstatus
Title: "Task Business Status"
Description: "Business status codes for a Task used in the Australian context."
* ^meta.profile[+] = "https://healthterminologies.gov.au/fhir/StructureDefinition/complete-code-system-4"
* ^url = "http://terminology.hl7.org.au/CodeSystem/task-businessstatus"
* ^version = "1.0.0"
* ^identifier.value = "urn:oid:2.16.840.1.113883.2.3.4.1.4.34"
* ^identifier.system = $oid
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^publisher = "HL7 Australia"
* ^contact.name = "HL7 Australia eRequesting Technical Design Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://confluence.hl7.org/display/HAFWG/HL7+Australia+-+AU+eRequesting+Technical+Design+Group+Home"
* ^contact.telecom.use = #work
* ^date = "2025-05-28"
* ^status = #draft
* ^caseSensitive = true
* ^experimental = false
* ^versionNeeded = true
* ^compositional = false
* ^content = #complete
* ^count = 9
* #booked "Booked" "Service has been booked."
* #claimed "Claimed" "Service request has been claimed by an alternative filler."
* #user-cancelled "User cancelled" "Service request has been cancelled by the placer."
* #data-issue "Data issue" "Rejected fulfilment due to an issue with the request data."
* #preliminary "Preliminary" "Preliminary result completed."
* #addendum  "Addendum" "Addendum created for reporting."
* #collected "Collected" "Specimen has been collected in lab collection centre."
* #in-lab "In Lab" "Specimen is being processed in the pathology lab."
* #acquired "Acquired" "Image has been acquired at radiology service."