Profile: AUeRequestingCommunicationRequest
Parent: CommunicationRequest
Id: au-erequesting-communicationrequest
Title: "AU eRequesting Communication Request"
Description: "This profile sets minimum expectations for derived CommunicationRequest resources that are used to record, search, and fetch information about a communication request to be performed. It is based on the [CommunicationRequest](https://hl7.org/fhir/R4/communicationrequest.html) and identifies the additional constraints, extensions, vocabularies and value sets that **SHALL** be present in the CommunicationRequest when conforming to this profile."

* ^status = #draft
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^abstract = true

//Common Elements

* groupIdentifier 1..1 MS

* status MS
* status = #active (exactly)
  * ^short = "active"
  
* category 1.. MS
* category.coding 1..1 MS
* category ^short = "Message category"

* doNotPerform MS

* medium MS

* subject 0..1 MS
* subject only Reference(AUCorePatient)
* subject ^short = "Patient who is the subject of the communication"

* about 1.. MS
* about only Reference(AUeRequestingPathologyRequest or AUeRequestingImagingRequest or AUeRequestingTaskGroup or AUeRequestingDiagnosticRequest)
* about ^short = "Context for the communication request"

* authoredOn 1..1 MS
* authoredOn ^short = "Date/time when communication request direction obtained"

* requester 1.. MS
* requester only Reference(AUCorePractitionerRole or AUCorePatient or AUCoreOrganization)
* requester ^short = "Provider, Patient, or Organization requesting the communication"

* recipient 1..1 MS
* recipient only Reference(AUCorePractitionerRole or AUCorePatient)
* recipient ^short = "Intended recipient of the communication"

* sender 1.. MS
* sender only Reference(AUCoreOrganization)
* sender ^short = "Organization sending the communication"

* reasonCode 1.. MS
* reasonCode from http://hl7.org.au/fhir/ereq/ValueSet/au-erequesting-communicationrequest-reason (required)
