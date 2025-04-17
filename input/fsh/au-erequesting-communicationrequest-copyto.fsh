Profile: AUeRequestingCommunicationRequestCopyTo
Parent: AUeRequestingCommunicationRequest
Id: au-erequesting-communicationrequest-copyto
Title: "AU eRequesting Communication Request CopyTo"
Description: "This profile sets minimum expectations for a CommunicationRequest resource that is used to define a copy-to clinician or copy-to patient as a report recipient.  This is differentiated from an urgent practitioner communication as priority may not be urgent and the requester will not be the recipient. It is based on the [CommunicationRequest](https://hl7.org/fhir/R4/communicationrequest.html) and identifies the additional constraints, extensions, vocabularies and value sets that SHALL be present in the CommunicationRequest when conforming to this profile."

* ^status = #draft
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0

* category 1..1 
  * coding 1..1
  * coding = $communication-category#notification 

* doNotPerform 0..0

* about only Reference (AUeRequestingPathologyRequest or AUeRequestingImagingRequest)
  * ^short = "Diagnostic request the copy-to communication is about"

* requester only Reference (AUCorePractitionerRole)
  * ^short = "Individual provider requesting the communication"

* recipient ^short = "Individual provider or patient who is the intended recipient of the copy" 

* reasonCode.coding = $comm-req-reason#copyto