Profile: AUeRequestingCommunicationRequestCopyTo
Parent: AUeRequestingCommunicationRequest
Id: au-erequesting-communicationrequest-copyto
Title: "AU eRequesting CommunicationRequest CopyTo"
Description: "This profile sets the minimum expectations for a CommunicationRequest resource used to represent a request for a report to be copied to a clinician or patient as an additional recipient. A copy-to clinician is distinct from a request for urgent communication to a provider, as the priority may not be urgent. It is based on the [AU eRequesting CommunicationRequest](StructureDefinition-au-erequesting-communicationrequest.html) profile and identifies the additional constraints, extensions, vocabularies and value sets that **SHALL** be present in the CommunicationRequest when conforming to this profile."

* category 1..1 
  * coding 1..1
  * coding = $communication-category#copyto-reports 

* doNotPerform 0..0

* requester only Reference (AUCorePractitionerRole)