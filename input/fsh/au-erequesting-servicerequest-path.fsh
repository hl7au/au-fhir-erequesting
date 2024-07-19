Profile: AUeRequestingPathologyRequest
Parent: AUeRequestingServiceRequest
Id: au-erequesting-servicerequest-path
Title: "AU eRequesting Pathology Request"
Description: "This profile sets minimum expectations for a ServiceRequest resource that is used to record, search, and fetch information about pathology requests for a patient. It is based on the [AU eRequesting ServiceRequest](https://build.fhir.org/ig/hl7au/au-fhir-erequesting/StructureDefinition-au-erequesting-servicerequest.html) and identifies the additional constraints, extensions, vocabularies and value sets that **SHALL** be present in the ServiceRequest when conforming to this profile."

* ^status = #draft

* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0

* . ^short = "A pathology test request"
* . ^definition = "A request for a pathology service."

* category ^slicing.discriminator[0].type = #pattern
* category ^slicing.discriminator[=].path = "$this"
* category ^slicing.rules = #open
* category contains path 1..1
* category[path] = $sct#108252007

* code from https://www.rcpa.edu.au/fhir/ValueSet/spia-requesting-refset-3 (preferred)
* code ^binding.extension[http://hl7.org/fhir/tools/StructureDefinition/additional-binding][0].extension[purpose].valueCode = #preferred
* code ^binding.extension[http://hl7.org/fhir/tools/StructureDefinition/additional-binding][0].extension[valueSet].valueCanonical = "https://healthterminologies.gov.au/fhir/ValueSet/pathology-procedure-1"  
* code ^binding.extension[http://hl7.org/fhir/tools/StructureDefinition/additional-binding][0].extension[documentation].valueMarkdown = "For use when a suitable code from the preferred RCPA - SPIA Requesting Pathology Terminology Reference Set is unavailable."  

* bodySite MS


