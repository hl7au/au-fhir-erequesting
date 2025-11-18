Profile: AUeRequestingCoverage
Parent: AUBaseCoverage
Id: au-erequesting-coverage
Title: "AU eRequesting Coverage"
Description: "This profile sets minimum expectations for a Coverage resource that is used to record, search, and fetch information about insurance or medical plan or a payment agreement for a patient. It is based on the [AU Base Coverage](https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-coverage.html) profile and identifies the additional constraints, extensions, vocabularies and value sets that **SHALL** be present in the Coverage when conforming to this profile."

* ^status = #active

* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1

* status MS
* status = #active (exactly)

* status ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-placer"
* status ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[code].valueCode = #SHALL:populate
* status ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-filler"
* status ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[code].valueCode = #SHALL:handle
* status ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* status ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[code].valueCode = #SHALL:handle
* status ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* status ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[code].valueCode = #SHALL:able-to-populate
* status ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-patient"
* status ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[code].valueCode = #SHALL:no-error  

* type 1..1 MS
* type ^binding.extension[http://hl7.org/fhir/tools/StructureDefinition/additional-binding][0].extension[key].valueId = "adb-cov-type-min"
* type ^binding.extension[http://hl7.org/fhir/tools/StructureDefinition/additional-binding][0].extension[purpose].valueCode = #minimum
* type ^binding.extension[http://hl7.org/fhir/tools/StructureDefinition/additional-binding][0].extension[valueSet].valueCanonical = "http://terminology.hl7.org.au/ValueSet/au-erequesting-coverage-type"  
* type ^binding.extension[http://hl7.org/fhir/tools/StructureDefinition/additional-binding][0].extension[documentation].valueMarkdown = "The minimum set of codes that any conformant system SHALL support."  
* type ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-placer"
* type ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[code].valueCode = #SHALL:populate
* type ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-filler"
* type ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[code].valueCode = #SHALL:handle
* type ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* type ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[code].valueCode = #SHALL:handle
* type ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* type ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[code].valueCode = #SHALL:able-to-populate
* type ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-patient"
* type ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[code].valueCode = #SHALL:no-error

* beneficiary MS
* beneficiary only Reference(AUeRequestingPatient)
* beneficiary ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-placer"
* beneficiary ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[code].valueCode = #SHALL:populate
* beneficiary ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-filler"
* beneficiary ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[code].valueCode = #SHALL:handle
* beneficiary ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* beneficiary ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[code].valueCode = #SHALL:handle
* beneficiary ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* beneficiary ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[code].valueCode = #SHALL:able-to-populate
* beneficiary ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-patient"
* beneficiary ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[code].valueCode = #SHALL:no-error

* payor MS
* payor only Reference(AUeRequestingPatient or AUeRequestingOrganization or AUCoreRelatedPerson)
* payor ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-placer"
* payor ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[code].valueCode = #SHALL:populate
* payor ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-filler"
* payor ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[code].valueCode = #SHALL:handle
* payor ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* payor ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[code].valueCode = #SHALL:handle
* payor ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* payor ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[code].valueCode = #SHALL:able-to-populate
* payor ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-patient"
* payor ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[code].valueCode = #SHALL:no-error