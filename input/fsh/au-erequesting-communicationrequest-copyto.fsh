Alias: $communication-category = http://terminology.hl7.org/CodeSystem/communication-category

Profile: AUeRequestingCommunicationRequestCopyTo
Parent: CommunicationRequest
Id: au-erequesting-communicationrequest-copyto
Title: "AU eRequesting Communication Request CopyTo"
Description: "AU eRequesting communication request to define a copy-to clinician."

* ^status = #draft
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0

* status MS
* status = #active (exactly)
  * ^short = "active"
* priority MS
* about 1.. MS
* about only Reference (AUeRequestingPathologyRequest or AUeRequestingImagingRequest)
  * ^short = "Diagnostic request the copyto communication is about"
* authoredOn 1..1 MS
* authoredOn ^short = "Date/time when communication request direction obtained"
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
  * reference 1..
    * ^short = "Reference to contained PractitionerRole resource.  This likely to need constraint at some point." 
* category 1..1 MS
* category = $communication-category#notification
  * ^short = "notification"
* groupIdentifier 1..1 MS
* groupIdentifier ^type.profile = $AULocalOrderIdentifier
* groupIdentifier.type 
  * coding 1..1    
  * coding = $v2-0203#PGN
* contained ^slicing.rules = #open
* contained ^slicing.discriminator.type = #type
* contained ^slicing.discriminator.path = "$this"
* contained contains 
    recipient 1..1 MS
* contained[recipient] only AUCorePractitionerRole