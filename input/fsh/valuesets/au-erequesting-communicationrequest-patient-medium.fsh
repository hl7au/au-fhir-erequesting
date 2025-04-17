ValueSet: AUeRequestingCommunicationRequestPatientMedium
Id: au-erequesting-communicationrequest-patient-medium
Title: "AU eRequesting CommunicationRequest Patient Medium"
Description: "Medium code options for patient communication. Limited to SMS and email."

* ^meta.profile[+] = "https://healthterminologies.gov.au/fhir/StructureDefinition/composed-value-set-4"
* ^version = "1.0.0"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^date = "2025-02-04"
* ^publisher = "HL7 Australia"
* ^status = #draft 
* ^experimental = false
* $v3-ParticipationMode#SMSWRIT
* $v3-ParticipationMode#EMAILWRIT