Profile: AUeRequestingImagingRequest
Parent: AUeRequestingServiceRequest
Id: au-erequesting-imagingrequest
Title: "AU eRequesting Imaging Request"
Description: "This profile sets minimum expectations for a ServiceRequest resource that is used to record, search, and fetch information about diagnostic imaging requests for a patient. It is based on the [AU eRequesting ServiceRequest](https://build.fhir.org/ig/hl7au/au-fhir-erequesting/StructureDefinition-au-erequesting-servicerequest.html) and identifies the additional constraints, extensions, vocabularies and value sets that **SHALL** be present in the ServiceRequest when conforming to this profile."


* ^status = #draft

* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0

* . ^short = "A diagnostic imaging request"
* . ^definition = "A request for a diagnostic imaging service."

* category = http://snomed.info/sct#363679005

* code ^binding.extension[http://hl7.org/fhir/tools/StructureDefinition/additional-binding][0].extension[purpose].valueCode = #preferred
* code ^binding.extension[http://hl7.org/fhir/tools/StructureDefinition/additional-binding][0].extension[valueSet].valueCanonical = "https://healthterminologies.gov.au/fhir/ValueSet/imaging-procedure-1"  
* code ^binding.extension[http://hl7.org/fhir/tools/StructureDefinition/additional-binding][0].extension[documentation].valueMarkdown = "For use when a suitable code from the preferred RANZCR Radiology Referral value set is unavailable."  

* bodySite MS


