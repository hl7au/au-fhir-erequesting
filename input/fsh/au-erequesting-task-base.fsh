Profile: AUeRequestingTaskBase
Parent: Task
Id: au-erequesting-task-base
Title: "AU eRequesting Task Base"
Description: "This base profile sets minimum expectations for derived Task resources that are used to record, search, and fetch information about a task to be performed. It is based on the [Task](https://www.hl7.org/fhir/R4/task.html) and identifies the additional constraints, extensions, vocabularies and value sets that **SHALL** be present in the derived Tasks when conforming to this profile."

* ^status = #draft
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^abstract = true

* meta
  * tag ^slicing.rules = #open
  * tag ^slicing.discriminator.type = #value
  * tag ^slicing.discriminator.path = "$this"
  * tag contains 
      eRequestingFulfillmentTask 1..1 
  * tag[eRequestingFulfillmentTask] from AUeRequestingTaskTagFulfillment (required)
    * ^short = "fulfillment-task | fulfillment-task-group"

* groupIdentifier 1..1
* groupIdentifier ^type.profile = $AULocalOrderIdentifier
* groupIdentifier.type 
  * coding 1..1    
  * coding = $v2-0203#PGN

* status from http://hl7.org.au/fhir/ereq/ValueSet/au-erequesting-task-status (required)

* statusReason

* intent = #order (exactly)

* priority

* for 1..1
* for only Reference (AUCorePatient)

* requester 1..1
* requester only Reference(AUCorePractitionerRole)

* authoredOn 1..1

* lastModified

* owner only Reference(AUCoreOrganization)
