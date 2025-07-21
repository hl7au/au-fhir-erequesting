ValueSet: AUeRequestingCommunicationRequestPatientCategory
Id: au-erequesting-communicationrequest-patientcategory
Title: "AU eRequesting CommunicationRequest Patient Category"
Description: "Category values for patient communication used in the Australian eRequesting context."

* ^meta.profile[+] = "https://healthterminologies.gov.au/fhir/StructureDefinition/composed-value-set-4"
* ^version = "1.0.0"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1
* ^date = "2025-02-04"
* ^publisher = "HL7 Australia"
* ^status = #active 
* ^experimental = false
* $communication-category#reminder
* $communication-category#instruction