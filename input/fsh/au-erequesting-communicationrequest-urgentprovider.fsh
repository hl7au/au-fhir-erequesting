Profile: AUeRequestingCommunicationRequestUrgentProvider
Parent: CommunicationRequest
Id: au-erequesting-communicationrequest-urgentprovider
Title: "AU eRequesting Communication Request Urgent Provider"
Description: "Direct communication from a filler to a clinical provider for the purpose of providing urgent results.  This is not a replacement for a formal report, but is intended to provide a timely notification of a critical result.  The communication is sent to a specific provider, and the medium is normally phone."

* ^status = #draft
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0

* status = #active (exactly)
  * ^short = "active"
* priority = http://hl7.org/fhir/request-priority#urgent
* about 1..
* about only Reference (AUeRequestingPathologyRequest or AUeRequestingImagingRequest)
  * ^short = "Diagnostic request the urgent communication is about"
* authoredOn 1..1
  * ^short = "Date/time when communication request direction obtained"
* sender 1..
* sender only Reference (AUCoreOrganization)
  * ^short = "Diagnostic organization sending the communication"
* subject 1..1
* subject only Reference (AUCorePatient)
  * ^short = "Patient that is the subject of the Diagnostic Service"
* requester 1..
* requester only Reference (AUCorePractitionerRole)
  * ^short = "Individual provider requesting the communication"
* recipient 1..1
* recipient only Reference (AUCorePractitionerRole)
  * ^short = "Individual provider receiving the communication"
* medium 1..1
* medium = http://terminology.hl7.org/CodeSystem/v3-ParticipationMode#PHONE
  * ^short = "phone"
* category 1..1
* category = http://terminology.hl7.org/CodeSystem/communication-category#alert
  * ^short = "alert"
* groupIdentifier 1..1
  * ^type.profile = $AULocalOrderIdentifier
* reasonCode = AUeRequestingCommunicationRequestReason#urgent