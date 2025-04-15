Profile: AUeRequestingCommunicationRequestPatient
Parent: AUeRequestingCommunicationRequest
Id: au-erequesting-communicationrequest-patient
Title: "AU eRequesting Communication Request Patient"
Description: "Direct communication from a filler to a patient. This supports the use case where a diagnostic provider sends a message to a patient, such as a suggestion to book an appointment or provide instructions for a diagnostic test. Sometimes the communication is not to be performed, for example when a patient has requested that they not be contacted by SMS. Currently, the supported communication mediums are SMS and email."

* ^status = #draft
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0

* category from AUeRequestingCommunicationRequestPatientCategory (required)
  * ^short = "reminder | instruction"

* doNotPerform 0..1
  * ^short = "True when SMS or email communication with patient is requested to not be performed"

* subject ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-placer"
* subject ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[code].valueCode = #SHALL:populate-if-known
* subject ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-filler"
* subject ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[code].valueCode = #SHALL:handle
* subject ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* subject ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[code].valueCode = #SHALL:handle
* subject ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* subject ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[code].valueCode = #SHALL:able-to-populate
* subject ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-patient"
* subject ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[code].valueCode = #SHALL:no-error 

* medium 1.. MS
* medium from AUeRequestingCommunicationRequestPatientMedium (required)  
  * ^short = "SMS | email"
  
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

* about ^short = "Fulfilment task or diagnostic request the communication is about"

* requester ^short = "Patient, provider or practice requesting the communication (or requesting it not be performed)"

* recipient only Reference (AUCorePatient)
  * ^short = "Patient receiving the communication"
  * reference 1..
    * ^short = "Relative reference"

* reasonCode.coding = $comm-req-reason#patient