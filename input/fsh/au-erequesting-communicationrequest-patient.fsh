Profile: AUeRequestingCommunicationRequestPatient
Parent: CommunicationRequest
Id: au-erequesting-communicationrequest-patient
Title: "AU eRequesting Communication Request Patient"
Description: "Direct communication from a filler to the patient.  This supports the use case where a diagnostic provider sends a communication to a patient to request that they book an appointment or to provide instructions for a test.  Sometimes the communication is not to be performed, for example when the patient has requested that they not be contacted by SMS.  At the moment, the only mediums supported are SMS and email."

* ^status = #draft
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0

* status MS
* status = #active (exactly)
  * ^short = "active"
* about 1.. MS
* about only Reference (AUeRequestingTaskGroup or AUeRequestingDiagnosticRequest)
  * ^short = "Fulfillment task the communication is about"
* authoredOn 1..1 MS
* authoredOn ^short = "Date/time when communication request direction obtained"
* doNotPerform 0..1 MS
  * ^short = "True when SMS or email communication with patient is requested to not be performed"
* sender 1.. MS
* sender only Reference (AUCoreOrganization)
  * ^short = "Diagnostic organization sending the SMS or email"
* requester 1.. MS
* requester only Reference (AUCorePatient or AUCorePractitionerRole or AUCoreOrganization)
  * ^short = "Patient, provider or practice requesting the communication (or for it to not be performed)"
* recipient 1..1 MS
* recipient only Reference (AUCorePatient)
  * ^short = "Patient receiving the communication"
  * reference 1.. MS
    * ^short = "Relative reference"
* medium 1.. MS
  * coding 1..1 MS
  * coding from AUeRequestingCommunicationRequestPatientMedium (required)
  * ^short = "SMS | email"
* category 1.. MS
  * coding 1..1 MS
  * coding from AUeRequestingCommunicationRequestPatientCategory (required)
  * ^short = "reminder | instruction"
* groupIdentifier 1..1 MS
* groupIdentifier ^type.profile = $AULocalOrderIdentifier
* groupIdentifier.type 
  * coding 1..1 MS   
    * system 1..1 MS
    * system = $v2-0203
    * code 1..1 MS
    * code = #PGN
* reasonCode 
  * coding 1..1 MS   
    * system 1..1 MS
    * system = "http://hl7.org.au/fhir/ereq/CodeSystem/au-erequesting-communicationrequest-reason"
    * code 1..1 MS
    * code = #patient