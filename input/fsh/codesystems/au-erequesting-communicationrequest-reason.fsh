CodeSystem: AUeRequestingCommunicationRequestReason
Id: au-erequesting-communicationrequest-reason
Title: "AU eRequesting CommunicationRequest Reason"
Description: "Reason codes for a CommunicationRequest used in the Australian eRequesting context."
* ^meta.profile[+] = "https://healthterminologies.gov.au/fhir/StructureDefinition/complete-code-system-4"
* ^version = "1.0.0"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^publisher = "HL7 Australia"
* ^contact.name = "HL7 Australia eRequesting Technical Design Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://confluence.hl7.org/display/HAFWG/HL7+Australia+-+AU+eRequesting+Technical+Design+Group+Home"
* ^contact.telecom.use = #work
* ^date = "2025-01-29"
* ^status = #draft
* ^caseSensitive = true
* ^experimental = false
* ^versionNeeded = true
* ^compositional = false
* ^content = #complete
* ^count = 3
* #urgent "Urgent Request" "The requester requires the results communicated urgently."
* #patient "Patient Request" "The patient has requested the communication."
* #copyto "Copy To" "The communication request is for a copy to another party."