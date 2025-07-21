ValueSet: AUeRequestingCommunicationRequestReason
Id: au-erequesting-communicationrequest-reason
Title: "AU eRequesting CommunicationRequest Reason"
Description: "Reason codes for a communication request used in the Australian eRequesting context."
* ^meta.profile[+] = "https://healthterminologies.gov.au/fhir/StructureDefinition/composed-value-set-4"
* ^version = "1.0.0"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1
* ^date = "2025-01-29"
* ^publisher = "HL7 Australia"
* ^status = #active 
* ^experimental = false
* include codes from system http://terminology.hl7.org.au/CodeSystem/communicationrequest-reason