ValueSet: AUeRequestingCommunicationRequestCategory
Id: au-erequesting-communicationrequest-category
Title: "AU eRequesting CommunicationRequest Category"
Description: "Categories for a communication request used in the Australian eRequesting context."
* ^meta.profile[+] = "https://healthterminologies.gov.au/fhir/StructureDefinition/composed-value-set-4"
* ^url = "http://terminology.hl7.org.au/ValueSet/au-erequesting-communicationrequest-category"
* ^version = "1.0.0"
* ^identifier.value = "urn:oid:2.16.840.1.113883.2.3.4.2.4.43"
* ^identifier.system = $oid
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1
* ^date = "2025-11-20"
* ^publisher = "HL7 Australia"
* ^status = #active 
* ^experimental = false
* include codes from system http://terminology.hl7.org.au/CodeSystem/communication-request-category