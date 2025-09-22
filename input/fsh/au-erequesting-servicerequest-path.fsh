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
* code ^short = "Refer to the Profile Specific Implementation Guidance on ServiceRequest.code"
* code ^comment = "Refer to the [Profile Specific Implementation Guidance](StructureDefinition-au-erequesting-servicerequest-path.html#profile-specific-implementation-guidance) on `ServiceRequest.code`"


* specimen MS
* specimen only Reference(au-erequesting-specimen)
  * ^short = "Associated specimens"
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
