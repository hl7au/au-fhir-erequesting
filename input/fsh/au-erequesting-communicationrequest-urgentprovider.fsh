Profile: AUeRequestingCommunicationRequestUrgentProvider
Parent: CommunicationRequest
Id: au-erequesting-communicationrequest-urgentprovider
Title: "AU eRequesting Communication Request Urgent Provider"
Description: "Direct communication from a filler to a clinical provider for the purpose of providing urgent results.  This is not a replacement for a formal report, but is intended to provide a timely notification of a critical result.  The communication is sent to a specific provider, and the medium is normally phone."

* ^status = #draft
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0

* status = #active (exactly)
  * ^short = "active"
* priority 1..1 MS
* priority = http://hl7.org/fhir/request-priority#urgent
* about 1.. MS
* about only Reference (AUeRequestingPathologyRequest or AUeRequestingImagingRequest)
  * ^short = "Diagnostic request the urgent communication is about"
* authoredOn 1..1 MS
  * ^short = "Date/time when communication request direction obtained"
* sender 1.. MS
* sender only Reference (AUCoreOrganization)
  * ^short = "Diagnostic organization sending the communication"
* subject 1..1 MS
* subject only Reference (AUCorePatient)
  * ^short = "Patient that is the subject of the Diagnostic Service"
* requester 1.. MS
* requester only Reference (AUCorePractitionerRole)
  * ^short = "Individual provider requesting the communication"
* recipient 1..1 MS
* recipient only Reference (AUCorePractitionerRole)
  * ^short = "Individual provider receiving the communication"
* medium 1..1 MS
  * coding 1..1 MS   
    * system 1..1 MS
    * system = "http://terminology.hl7.org/CodeSystem/v3-ParticipationMode"
    * code 1..1 MS
    * code = #PHONE
  * ^short = "phone"
* category 1..1 MS
  * coding 1..1 MS   
    * system 1..1 MS
    * system = "http://terminology.hl7.org/CodeSystem/communication-category"
    * code 1..1 MS
    * code = #alert
  * ^short = "alert"
* doNotPerform 0..0
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
    * code = #urgent 