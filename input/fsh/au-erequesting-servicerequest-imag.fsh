Profile: AUeRequestingImagingRequest
Parent: AUeRequestingDiagnosticRequest
Id: au-erequesting-servicerequest-imag
Title: "AU eRequesting Imaging Request"
Description: "This profile sets minimum expectations for a ServiceRequest resource that is used to record, search, and fetch information about diagnostic imaging requests for a patient. It is based on the [AU eRequesting Diagnostic Request](StructureDefinition-au-erequesting-diagnosticrequest.html) and identifies the additional constraints, extensions, vocabularies and value sets that **SHALL** be present in the ServiceRequest when conforming to this profile."


* ^status = #draft

* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0

* . ^short = "A diagnostic imaging request"
* . ^definition = "A request for a diagnostic imaging service."

* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains imaging 1..1
* category[imaging] = $sct#363679005

* code from https://ranzcr.com/fhir/ValueSet/radiology-referral (preferred)
* code ^binding.extension[http://hl7.org/fhir/tools/StructureDefinition/additional-binding][0].extension[purpose].valueCode = #preferred
* code ^binding.extension[http://hl7.org/fhir/tools/StructureDefinition/additional-binding][0].extension[valueSet].valueCanonical = "https://healthterminologies.gov.au/fhir/ValueSet/imaging-procedure-1" 
* code ^binding.extension[http://hl7.org/fhir/tools/StructureDefinition/additional-binding][0].extension[documentation].valueMarkdown = "For use when a suitable code from the preferred RANZCR Radiology Referral value set is unavailable." 


