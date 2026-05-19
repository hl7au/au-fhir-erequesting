ValueSet: AUeRequestingCommunicationRequestPatientMedium
Id: au-erequesting-communicationrequest-patientmedium
Title: "AU eRequesting CommunicationRequest Patient Medium"
Description: "Medium values for patient communication used in the Australian eRequesting context."

* ^meta.profile[+] = "https://healthterminologies.gov.au/fhir/StructureDefinition/composed-value-set-4"
* ^url = "http://terminology.hl7.org.au/ValueSet/au-erequesting-communicationrequest-patientmedium"
* ^version = "1.0.0"
* ^identifier.value = "urn:oid:2.16.840.1.113883.2.3.4.2.4.41"
* ^identifier.system = $oid
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1
* ^date = "2025-02-04"
* ^publisher = "HL7 Australia"
* ^status = #active 
* ^experimental = false
* $v3-ParticipationMode#SMSWRIT
* $v3-ParticipationMode#EMAILWRIT