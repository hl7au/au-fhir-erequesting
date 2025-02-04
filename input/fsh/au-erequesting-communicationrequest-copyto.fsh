Profile: AUeRequestingCommunicationRequestCopyTo
Parent: CommunicationRequest
Id: au-erequesting-communicationrequest-copyto
Title: "AU eRequesting Communication Request CopyTo"
Description: "AU eRequesting communication request to define a copy-to clinician.  This will be differentiated from an urgent practitioner communication as priority may not be urgent and the requester will not be the recipient."

* ^status = #draft
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0

* groupIdentifier 1..1
* groupIdentifier ^type.profile = $AULocalOrderIdentifier
* groupIdentifier.type 
  * coding 1..1    
  * coding = $v2-0203#PGN
* status = #active (exactly)
  * ^short = "active"
* category 1..1
* category = http://terminology.hl7.org/CodeSystem/communication-category#notification
  * ^short = "notification"
* doNotPerform 0..0
* subject 1..1
* subject only Reference (AUCorePatient)
  * ^short = "Patient that is the subject of the Diagnostic Request"
* about 1..
* about only Reference (AUeRequestingPathologyRequest or AUeRequestingImagingRequest)
  * ^short = "Diagnostic request the copyto communication is about"
* authoredOn 1..1
* authoredOn ^short = "Date/time when communication request direction obtained"
* requester 1..
* requester only Reference (AUCorePractitionerRole)
  * ^short = "Individual provider requesting the communication"
* recipient 1..1
* recipient only Reference (AUCorePractitionerRole)
  * reference 1..
    * ^short = "Reference to contained PractitionerRole resource.  This likely to need constraint at some point." 
* sender 1..
* sender only Reference (AUCoreOrganization)
  * ^short = "Diagnostic organization sending the communication"

* contained ^slicing.rules = #open
* contained ^slicing.discriminator.type = #type
* contained ^slicing.discriminator.path = "$this"
* contained contains 
    recipient 1..1
* contained[recipient] only AUCorePractitionerRole

* reasonCode = Canonical(AUeRequestingCommunicationRequestReason)#copyto