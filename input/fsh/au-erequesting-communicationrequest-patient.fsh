Profile: AUeRequestingCommunicationRequestPatient
Parent: AUeRequestingCommunicationRequest
Id: au-erequesting-communicationrequest-patient
Title: "AU eRequesting CommunicationRequest Patient"
Description: "This profile sets the minimum expectations for a CommunicationRequest resource used to represent a request for direct communication from a diagnostic provider (filler) to a patient. It supports use cases where the diagnostic provider may communicate with the patient, for example, to suggest booking an appointment or to provide instructions for a diagnostic test. It also supports requests for communication not to be performed, for example, when a patient has requested that they not be contacted by SMS. Supported communication mediums include SMS and email.  It is based on the [AU eRequesting CommunicationRequest](StructureDefinition-au-erequesting-communicationrequest.html) profile and identifies the additional constraints, extensions, vocabularies and value sets that **SHALL** be present in the CommunicationRequest when conforming to this profile."

* ^status = #active
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1

* category
  * coding 1..1
* category from AUeRequestingCommunicationRequestPatientCategory (required)

* doNotPerform 0..1 MS
  * ^short = "Set to true when SMS or email communication with the patient is not to be performed"

* doNotPerform ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-placer"
* doNotPerform ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[code].valueCode = #SHALL:populate-if-known
* doNotPerform ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-filler"
* doNotPerform ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[code].valueCode = #SHALL:handle
* doNotPerform ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* doNotPerform ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[code].valueCode = #SHALL:handle
* doNotPerform ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* doNotPerform ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[code].valueCode = #SHALL:able-to-populate
* doNotPerform ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-patient"
* doNotPerform ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[code].valueCode = #SHALL:no-error

* medium 1.. MS
* medium from AUeRequestingCommunicationRequestPatientMedium (required)
  
* medium ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-placer"
* medium ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[code].valueCode = #SHALL:populate
* medium ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-filler"
* medium ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[code].valueCode = #SHALL:handle
* medium ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* medium ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[code].valueCode = #SHALL:handle
* medium ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* medium ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[code].valueCode = #SHALL:able-to-populate
* medium ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-patient"
* medium ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[code].valueCode = #SHALL:no-error

* about ^short = "Fulfilment task group or diagnostic request the communication is about"

* requester ^short = "Patient, provider or practice requesting the communication (or requesting it not be performed)"

* recipient only Reference (AUeRequestingPatient)
  * ^short = "Patient receiving the communication"

* reasonCode
  * coding 1..1
  * coding = $comm-req-reason#patient