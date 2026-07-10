Profile: AUeRequestingPathologyRequest
Parent: AUeRequestingDiagnosticRequest
Id: au-erequesting-servicerequest-path
Title: "AU eRequesting Pathology Request"
Description: "This profile sets minimum expectations for a ServiceRequest resource that is used to record, search, and fetch information about pathology requests for a patient. It is based on the [AU eRequesting Diagnostic Request](StructureDefinition-au-erequesting-diagnosticrequest.html) profile and identifies the additional constraints, extensions, vocabularies and value sets that **SHALL** be present in the ServiceRequest resource when conforming to this profile."

* ^status = #active

* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1

* . ^short = "A pathology test request"
* . ^definition = "A request for a pathology service."

* category ^slicing.discriminator[0].type = #pattern
* category ^slicing.discriminator[=].path = "$this"
* category ^slicing.rules = #open
* category contains path 1..1
* category[path] = $sct#108252007

* code from https://www.rcpa.edu.au/fhir/ValueSet/spia-requesting-refset-3 (preferred)
* code ^comment = "Refer to the AU eRequesting Pathology Request Profile Specific Implementation Guidance for `ServiceRequest.code` usage."

* extension contains http://hl7.org/fhir/StructureDefinition/servicerequest-specimenSuggestion named specimenSuggestion 0..* MS
* extension[specimenSuggestion] ^short = "Suggested specimen type for collection"
* extension[specimenSuggestion] ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[code].valueCode = #SHALL:populate-if-known
* extension[specimenSuggestion] ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-placer"
* extension[specimenSuggestion] ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[code].valueCode = #SHALL:handle
* extension[specimenSuggestion] ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-filler"
* extension[specimenSuggestion] ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[code].valueCode = #SHALL:handle
* extension[specimenSuggestion] ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* extension[specimenSuggestion] ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[code].valueCode = #SHALL:able-to-populate
* extension[specimenSuggestion] ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* extension[specimenSuggestion] ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[code].valueCode = #SHALL:no-error
* extension[specimenSuggestion] ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-patient"

// In this release a specimen suggestion is expressed as a specimen type concept only; a reference to a Specimen or ServiceRequest is not supported.
* extension[specimenSuggestion].extension[reference] MS
* extension[specimenSuggestion].extension[reference].extension[concept] 1..1 MS
* extension[specimenSuggestion].extension[reference].extension[concept].value[x] from https://healthterminologies.gov.au/fhir/ValueSet/specimen-type-1 (preferred)
* extension[specimenSuggestion].extension[reference].extension[reference] 0..0

* specimen MS
* specimen only Reference(AUeRequestingCollectedSpecimen)
  * ^short = "Specimen collected at the time of requesting"
* specimen ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[code].valueCode = #SHALL:populate-if-known
* specimen ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-placer"
* specimen ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[code].valueCode = #SHALL:handle
* specimen ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-filler"
* specimen ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[code].valueCode = #SHALL:handle
* specimen ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* specimen ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[code].valueCode = #SHALL:able-to-populate
* specimen ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* specimen ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[code].valueCode = #SHALL:no-error
* specimen ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-patient"
