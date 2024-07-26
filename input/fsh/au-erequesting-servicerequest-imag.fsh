Profile: AUeRequestingImagingRequest
Parent: AUeRequestingServiceRequest
Id: au-erequesting-servicerequest-imag
Title: "AU eRequesting Imaging Request"
Description: "This profile sets minimum expectations for a ServiceRequest resource that is used to record, search, and fetch information about diagnostic imaging requests for a patient. It is based on the [AU eRequesting ServiceRequest](https://build.fhir.org/ig/hl7au/au-fhir-erequesting/StructureDefinition-au-erequesting-servicerequest.html) and identifies the additional constraints, extensions, vocabularies and value sets that **SHALL** be present in the ServiceRequest when conforming to this profile."


* ^status = #draft

* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0

* . ^short = "A diagnostic imaging request"
* . ^definition = "A request for a diagnostic imaging service."

* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains imaging 1..1
* category[imaging] = $sct#363679005

* code ^binding.extension[http://hl7.org/fhir/tools/StructureDefinition/additional-binding][0].extension[purpose].valueCode = #preferred
* code ^binding.extension[http://hl7.org/fhir/tools/StructureDefinition/additional-binding][0].extension[valueSet].valueCanonical = "https://healthterminologies.gov.au/fhir/ValueSet/imaging-procedure-1" 
* code ^binding.extension[http://hl7.org/fhir/tools/StructureDefinition/additional-binding][0].extension[documentation].valueMarkdown = "For use when a suitable code from the preferred RANZCR Radiology Referral value set is unavailable." 

* bodySite MS
* bodySite ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[code].valueCode = #SHALL:populate-if-known
* bodySite ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-placer"
* bodySite ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[code].valueCode = #SHALL:handle
* bodySite ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-filler"
* bodySite ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[code].valueCode = #SHALL:handle
* bodySite ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* bodySite ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[documentation].valueMarkdown = "For create/update ServiceRequest."
* bodySite ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[code].valueCode = #SHALL:able-to-populate
* bodySite ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* bodySite ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[documentation].valueMarkdown = "For search/read ServiceRequest."
* bodySite ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-patientaccess"
* bodySite ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[code].valueCode = #SHALL:no-error