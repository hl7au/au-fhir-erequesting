ValueSet: AUeRequestingCommunicationRequestPatientCategory
Id: au-erequesting-communicationrequest-patientcategory
Title: "AU eRequesting CommunicationRequest Patient Category"
Description: "Category values for patient communication used in the Australian eRequesting context."

* ^meta.profile[+] = "https://healthterminologies.gov.au/fhir/StructureDefinition/composed-value-set-4"
* ^version = "1.0.0"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #deprecated
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode.extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status-reason].valueMarkdown = "This value set is deprecated in AU eRequesting as it is no longer required to classify communication requests."

* ^date = "2025-02-04"
* ^publisher = "HL7 Australia"
* ^status = #retired 
* ^experimental = false
* $communication-category#reminder
* $communication-category#instruction