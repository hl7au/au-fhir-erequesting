Profile: AUeRequestingPathologyServiceRequest
Parent: AUeRequestingServiceRequest
Id: au-erequesting-path-request
Title: "AU eRequesting Pathology ServiceRequest"
Description: "This profile sets minimum expectations for a ServiceRequest resource that is used to record, search, and fetch information about pathology test requests, plans, or orders for a service for a patient. It is based on the [AU eRequesting ServiceRequest](https://build.fhir.org/ig/hl7au/au-fhir-erequesting/StructureDefinition-au-erequesting-servicerequest.html) and identifies the additional constraints, extensions, vocabularies and value sets that **SHALL** be present in the ServiceRequest when conforming to this profile."

* ^status = #draft

* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0

* . ^short = "A pathology test request"
* . ^definition = "An order or referral for a pathology or laboratory service."

* category = http://snomed.info/sct#108252007

* code from https://www.rcpa.edu.au/fhir/ValueSet/spia-requesting-refset-3 (preferred)
* code ^binding.extension[http://hl7.org/fhir/tools/StructureDefinition/additional-binding][0].extension[purpose].valueCode = #preferred
* code ^binding.extension[http://hl7.org/fhir/tools/StructureDefinition/additional-binding][0].extension[valueSet].valueCanonical = "https://healthterminologies.gov.au/fhir/ValueSet/pathology-procedure-1"  
* code ^binding.extension[http://hl7.org/fhir/tools/StructureDefinition/additional-binding][0].extension[documentation].valueMarkdown = "For use when a suitable code from the preferred RCPA SPIA Pathology Requesting value set value set is not available."  

* bodySite MS


