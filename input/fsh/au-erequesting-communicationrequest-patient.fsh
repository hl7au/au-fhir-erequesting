Profile: AUeRequestingCommunicationRequestPatient
Parent: CommunicationRequest
Id: au-erequesting-communicationrequest-patient
Title: "AU eRequesting Communication Request Patient"
Description: "Direct communication from a filler to the patient.  This supports the use case where a diagnostic provider sends a communication to a patient to request that they book an appointment or to provide instructions for a test.  Sometimes the communication is not to be performed, for example when the patient has requested that they not be contacted by SMS.  At the moment, the only mediums supported are SMS and email."

* ^status = #draft
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0

* status = #active (exactly)
  * ^short = "active"
* about 1.. MS
* about only Reference (AUeRequestingTaskGroup or AUeRequestingDiagnosticRequest)
  * ^short = "Fulfillment task the communication is about"
* authoredOn 1..1
* authoredOn ^short = "Date/time when communication request direction obtained"
* doNotPerform 0..1
  * ^short = "True when SMS or email communication with patient is requested to not be performed"
* sender 1..
* sender only Reference (AUCoreOrganization)
  * ^short = "Diagnostic organization sending the SMS or email"
* requester 1..
* requester only Reference (AUCorePatient or AUCorePractitionerRole or AUCoreOrganization)
  * ^short = "Patient, provider or practice requesting the communication (or for it to not be performed)"
* recipient 1..1
* recipient only Reference (AUCorePatient)
  * ^short = "Patient receiving the communication"
  * reference 1..
    * ^short = "Relative reference"
* medium 1..1
  * coding from AUeRequestingCommunicationRequestPatientMedium (required)
  * ^short = "SMS | email"
* category 1..
  * coding from AUeRequestingCommunicationRequestPatientCategory (required)
  * ^short = "reminder | instruction"
* groupIdentifier 1..1
* groupIdentifier ^type.profile = $AULocalOrderIdentifier 
