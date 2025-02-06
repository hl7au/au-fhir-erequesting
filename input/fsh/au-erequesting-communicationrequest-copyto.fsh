Profile: AUeRequestingCommunicationRequestCopyTo
Parent: CommunicationRequest
Id: au-erequesting-communicationrequest-copyto
Title: "AU eRequesting Communication Request CopyTo"
Description: "AU eRequesting communication request to define a copy-to clinician.  This will be differentiated from an urgent practitioner communication as priority may not be urgent and the requester will not be the recipient."

* ^status = #draft
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0

* groupIdentifier 1..1 MS
* groupIdentifier ^type.profile = $AULocalOrderIdentifier
* groupIdentifier.type 
  * coding 1..1 MS   
    * system 1..1 MS
    * system = $v2-0203
    * code 1..1 MS
    * code = #PGN
* status MS
* status = #active (exactly)
  * ^short = "active"
* category 1..1 MS 
  * coding 1..1 MS   
    * system 1..1 MS
    * system = "http://terminology.hl7.org/CodeSystem/communication-category"
    * code 1..1 MS
    * code = #notification
  * ^short = "notification"
* doNotPerform 0..0
* subject 1..1 MS
* subject only Reference (AUCorePatient)
  * ^short = "Patient that is the subject of the Diagnostic Request"
* about 1.. MS
* about only Reference (AUeRequestingPathologyRequest or AUeRequestingImagingRequest)
  * ^short = "Diagnostic request the copyto communication is about"
* authoredOn 1..1 MS
* authoredOn ^short = "Date/time when communication request direction obtained"
* requester 1.. MS
* requester only Reference (AUCorePractitionerRole)
  * ^short = "Individual provider requesting the communication"
* recipient 1..1 MS
* recipient only Reference (AUCorePractitionerRole)
  * reference 1.. MS
    * ^short = "Reference to contained PractitionerRole resource.  This likely to need constraint at some point." 
* sender 1.. MS
* sender only Reference (AUCoreOrganization)
  * ^short = "Diagnostic organization sending the communication"

* contained ^slicing.rules = #open
* contained ^slicing.discriminator.type = #type
* contained ^slicing.discriminator.path = "$this"
* contained contains 
    recipient 1..1 MS
* contained[recipient] only AUCorePractitionerRole
* reasonCode 
  * coding 1..1 MS   
    * system 1..1 MS
    * system = "http://hl7.org.au/fhir/ereq/CodeSystem/au-erequesting-communicationrequest-reason"
    * code 1..1 MS
    * code = #copyto 