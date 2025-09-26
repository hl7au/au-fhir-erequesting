CodeSystem: CommunicationRequestCategory
Id: communicationrequest-category
Title: "CommunicationRequest Category"
Description: "Category codes for a communication request used in the Australian context."
* ^meta.profile[+] = "https://healthterminologies.gov.au/fhir/StructureDefinition/complete-code-system-4"
* ^url = "http://terminology.hl7.org.au/CodeSystem/communicationrequest-category"
* ^version = "1.0.0"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1
* ^publisher = "HL7 Australia"
* ^contact.name = "HL7 Australia eRequesting Technical Design Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://confluence.hl7.org/display/HAFWG/HL7+Australia+-+AU+eRequesting+Technical+Design+Group+Home"
* ^contact.telecom.use = #work
* ^date = "2025-09-26"
* ^status = #active
* ^caseSensitive = true
* ^experimental = false
* ^versionNeeded = true
* ^compositional = false
* ^content = #complete
* ^count = 3
* #urgent-results "Urgent Results" "A request for results to be communicated urgently to nominated recipient(s)."
* #patient-preference "Patient Preference" "A patient's preferences on communication to them from a service provider."
* #copyto-reports "Copy To Reports" "A request for reports to be copied to additional recipient(s)."
