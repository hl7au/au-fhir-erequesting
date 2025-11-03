Profile: AUeRequestingTask
Parent: Task
Id: au-erequesting-task
Title: "AU eRequesting Task"
Description: "This profile sets minimum expectations for a Task resource that is used to record, search, and fetch information about a task to be performed. It is based on the [Task](https://www.hl7.org/fhir/R4/task.html) resource and identifies the additional constraints, extensions, vocabularies and value sets that **SHALL** be present in the Task resource when conforming to this profile."

* ^status = #active
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1
* ^abstract = true

* meta 1..1 MS
* meta ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-placer"
* meta ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[code].valueCode = #SHALL:populate
* meta ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-filler"
* meta ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[code].valueCode = #SHALL:handle
* meta ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* meta ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[code].valueCode = #SHALL:handle
* meta ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* meta ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[code].valueCode = #SHALL:able-to-populate
* meta ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-patient"
* meta ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[code].valueCode = #SHALL:no-error
  * tag ^slicing.rules = #open
  * tag ^slicing.discriminator.type = #value
  * tag ^slicing.discriminator.path = "$this"
  * tag contains 
      eRequestingFulfilmentTask 1..1 MS
  * tag[eRequestingFulfilmentTask] from AUeRequestingFulfilmentTaskTags (required)
  * tag[eRequestingFulfilmentTask] ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-placer"
  * tag[eRequestingFulfilmentTask] ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[code].valueCode = #SHALL:populate
  * tag[eRequestingFulfilmentTask] ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-filler"
  * tag[eRequestingFulfilmentTask] ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[code].valueCode = #SHALL:handle
  * tag[eRequestingFulfilmentTask] ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
  * tag[eRequestingFulfilmentTask] ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[code].valueCode = #SHALL:handle
  * tag[eRequestingFulfilmentTask] ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
  * tag[eRequestingFulfilmentTask] ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[code].valueCode = #SHALL:able-to-populate
  * tag[eRequestingFulfilmentTask] ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-patient"
  * tag[eRequestingFulfilmentTask] ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[code].valueCode = #SHALL:no-error



* identifier MS
* identifier ^type.profile[0] = Canonical(Identifier)
* identifier ^type.profile[+] = Canonical($AULocalOrderIdentifier)
* identifier ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[code].valueCode = #SHALL:no-error
* identifier ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-placer"
* identifier ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[code].valueCode = #SHALL:no-error
* identifier ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-filler"
* identifier ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[code].valueCode = #SHALL:handle
* identifier ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* identifier ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[code].valueCode = #SHALL:able-to-populate
* identifier ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* identifier ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[code].valueCode = #SHALL:no-error
* identifier ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-patient"


* groupIdentifier 1..1 MS
* groupIdentifier ^type.profile = $AULocalOrderIdentifier
* groupIdentifier.type 
  * coding 1..1    
  * coding = $v2-0203#PGN
* groupIdentifier ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-placer"
* groupIdentifier ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[code].valueCode = #SHALL:populate
* groupIdentifier ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-filler"
* groupIdentifier ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[code].valueCode = #SHALL:handle
* groupIdentifier ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* groupIdentifier ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[code].valueCode = #SHALL:handle
* groupIdentifier ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* groupIdentifier ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[code].valueCode = #SHALL:able-to-populate
* groupIdentifier ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-patient"
* groupIdentifier ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[code].valueCode = #SHALL:no-error


* status MS
* status from http://terminology.hl7.org.au/ValueSet/au-erequesting-task-status (required)
* status ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-placer"
* status ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[code].valueCode = #SHALL:populate
* status ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-filler"
* status ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[code].valueCode = #SHALL:handle
* status ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* status ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[code].valueCode = #SHALL:handle
* status ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* status ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[code].valueCode = #SHALL:able-to-populate
* status ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-patient"
* status ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[code].valueCode = #SHALL:no-error


* statusReason MS
* statusReason ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[code].valueCode = #SHALL:populate-if-known
* statusReason ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-placer"
* statusReason ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[code].valueCode = #SHALL:handle
* statusReason ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-filler"
* statusReason ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[code].valueCode = #SHALL:handle
* statusReason ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* statusReason ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[code].valueCode = #SHALL:able-to-populate
* statusReason ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* statusReason ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[code].valueCode = #SHALL:no-error
* statusReason ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-patient"

* businessStatus MS
  * ^short = "Business status of the Task e.g. Booked"
* businessStatus from http://terminology.hl7.org.au/ValueSet/au-erequesting-task-businessstatus (extensible)
* businessStatus ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-placer"
* businessStatus ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[code].valueCode = #SHALL:handle
* businessStatus ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-filler"
* businessStatus ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[code].valueCode = #SHALL:populate-if-known
* businessStatus ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* businessStatus ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[code].valueCode = #SHALL:handle
* businessStatus ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* businessStatus ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[code].valueCode = #SHALL:able-to-populate
* businessStatus ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-patient"
* businessStatus ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[code].valueCode = #SHALL:no-error

* intent MS
* intent = #order (exactly)
* intent ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-placer"
* intent ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[code].valueCode = #SHALL:populate
* intent ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-filler"
* intent ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[code].valueCode = #SHALL:handle
* intent ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* intent ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[code].valueCode = #SHALL:handle
* intent ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* intent ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[code].valueCode = #SHALL:able-to-populate
* intent ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-patient"
* intent ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[code].valueCode = #SHALL:no-error

* priority MS 
* priority ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[code].valueCode = #SHALL:populate-if-known
* priority ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-placer"
* priority ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[code].valueCode = #SHALL:handle
* priority ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-filler"
* priority ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[code].valueCode = #SHALL:handle
* priority ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* priority ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[code].valueCode = #SHALL:able-to-populate
* priority ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* priority ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[code].valueCode = #SHALL:no-error
* priority ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-patient"

* for 1..1 MS
* for only Reference(AUeRequestingPatient)
* for ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-placer"
* for ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[code].valueCode = #SHALL:populate
* for ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-filler"
* for ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[code].valueCode = #SHALL:handle
* for ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* for ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[code].valueCode = #SHALL:handle
* for ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* for ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[code].valueCode = #SHALL:able-to-populate
* for ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-patient"
* for ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[code].valueCode = #SHALL:no-error

* requester 1..1 MS
* requester only Reference(AUeRequestingPractitionerRole)
* requester ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-placer"
* requester ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[code].valueCode = #SHALL:populate
* requester ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-filler"
* requester ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[code].valueCode = #SHALL:handle
* requester ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* requester ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[code].valueCode = #SHALL:handle
* requester ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* requester ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[code].valueCode = #SHALL:able-to-populate
* requester ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-patient"
* requester ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[code].valueCode = #SHALL:no-error

* authoredOn 1..1 MS
* authoredOn ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-placer"
* authoredOn ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[code].valueCode = #SHALL:populate
* authoredOn ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-filler"
* authoredOn ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[code].valueCode = #SHALL:handle
* authoredOn ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* authoredOn ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[code].valueCode = #SHALL:handle
* authoredOn ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* authoredOn ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[code].valueCode = #SHALL:able-to-populate
* authoredOn ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-patient"
* authoredOn ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[code].valueCode = #SHALL:no-error

* lastModified MS
* lastModified ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[code].valueCode = #SHALL:populate-if-known
* lastModified ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-placer"
* lastModified ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[code].valueCode = #SHALL:handle
* lastModified ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-filler"
* lastModified ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[code].valueCode = #SHALL:handle
* lastModified ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* lastModified ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[code].valueCode = #SHALL:able-to-populate
* lastModified ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* lastModified ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[code].valueCode = #SHALL:no-error
* lastModified ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-patient"

* owner MS
* owner only Reference(AUCoreOrganization)
* owner ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[code].valueCode = #SHALL:populate-if-known
* owner ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-placer"
* owner ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[code].valueCode = #SHALL:handle
* owner ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-filler"
* owner ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[code].valueCode = #SHALL:handle
* owner ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* owner ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[code].valueCode = #SHALL:able-to-populate
* owner ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* owner ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[code].valueCode = #SHALL:no-error
* owner ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-patient"
