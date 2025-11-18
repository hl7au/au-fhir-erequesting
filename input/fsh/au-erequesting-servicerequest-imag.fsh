Profile: AUeRequestingImagingRequest
Parent: AUeRequestingDiagnosticRequest
Id: au-erequesting-servicerequest-imag
Title: "AU eRequesting Imaging Request"
Description: "This profile sets minimum expectations for a ServiceRequest resource that is used to record, search, and fetch information about diagnostic imaging requests for a patient. It is based on the [AU eRequesting Diagnostic Request](StructureDefinition-au-erequesting-diagnosticrequest.html) profile and identifies the additional constraints, extensions, vocabularies and value sets that **SHALL** be present in the ServiceRequest resource when conforming to this profile."


* ^status = #active

* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1

* . ^short = "A diagnostic imaging request"
* . ^definition = "A request for a diagnostic imaging service."

* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains imaging 1..1
* category[imaging] = $sct#363679005

* code from https://ranzcr.com/fhir/ValueSet/radiology-referral-1 (preferred)
* code ^comment = "Refer to the AU eRequesting Imaging Request Profile Specific Implementation Guidance for `ServiceRequest.code` usage."

* bodySite MS
* bodySite ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[code].valueCode = #SHALL:populate-if-known
* bodySite ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-placer"
* bodySite ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[code].valueCode = #SHALL:handle
* bodySite ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-filler"
* bodySite ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[code].valueCode = #SHALL:handle
* bodySite ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* bodySite ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[code].valueCode = #SHALL:able-to-populate
* bodySite ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* bodySite ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[code].valueCode = #SHALL:no-error
* bodySite ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-patient"
