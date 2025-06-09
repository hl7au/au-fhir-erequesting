CodeSystem: CommunicationRequestReason
Id: communicationrequest-reason
Title: "CommunicationRequest Reason"
Description: "Reason codes for a communication request used in the Australian context."
* ^meta.profile[+] = "https://healthterminologies.gov.au/fhir/StructureDefinition/complete-code-system-4"
* ^url = "http://terminology.hl7.org.au/CodeSystem/communicationrequest-reason"
* ^version = "1.0.0"
* ^identifier.value = "urn:oid:2.16.840.1.113883.2.3.4.1.4.32"
* ^identifier.system = $oid
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
* #urgent "Urgent Results" "A request for results to be communicated urgently to the nominated recipient."
* #patient "Patient Request" "A patient's request about receiving communication from a service provider."
* #copyto "Copy To" "A request for results to be copied to an additional recipient."