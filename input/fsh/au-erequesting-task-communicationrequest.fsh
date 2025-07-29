Profile: AUeRequestingTaskCommunicationRequest
Parent: AUeRequestingTask
Id: au-erequesting-task-communicationrequest
Title: "AU eRequesting Task Communication Request"
Description: "This profile sets minimum expectations for a Task resource that is used to track the fulfilment of a communication request. For example, whether fulfilment of the communication request was attempted, successful, or failed. 
It is based on the [AU eRequesting Task](StructureDefinition-au-erequesting-task.html) and identifies the additional constraints, extensions, vocabularies and value sets that **SHALL** be present when conforming to this profile."

* obeys au-ereq-taskcr-01

* ^status = #active
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1

* meta.tag[eRequestingFulfilmentTask] = $resourcetag#fulfilment-task

* partOf 1..1 MS
* partOf only Reference(AUeRequestingTaskGroup)
  * ^short = "Task group of which this task is a part"
* partOf ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[code].valueCode = #SHALL:populate
* partOf ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-placer"
* partOf ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[code].valueCode = #SHALL:handle
* partOf ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-filler"
* partOf ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[code].valueCode = #SHALL:handle
* partOf ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* partOf ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[code].valueCode = #SHALL:able-to-populate
* partOf ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* partOf ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[code].valueCode = #SHALL:no-error
* partOf ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-patient"

* focus 1..1 MS
* focus only Reference(AUeRequestingCommunicationRequestCopyTo or AUeRequestingCommunicationRequestPatient or AUeRequestingCommunicationRequestUrgentProvider)
* focus ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-placer"
* focus ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[code].valueCode = #SHALL:populate
* focus ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-filler"
* focus ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[code].valueCode = #SHALL:handle
* focus ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* focus ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[code].valueCode = #SHALL:handle
* focus ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* focus ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[code].valueCode = #SHALL:able-to-populate
* focus ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-patient"
* focus ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[code].valueCode = #SHALL:no-error

Invariant: au-ereq-taskcr-01
Description: "eRequesting Fulfilment Task tag must be 'fulfilment-task' from http://terminology.hl7.org.au/CodeSystem/resource-tag only"
Severity: #error
Expression: "meta.tag.where(system = 'http://terminology.hl7.org.au/CodeSystem/resource-tag' and code = 'fulfilment-task-group').empty()"