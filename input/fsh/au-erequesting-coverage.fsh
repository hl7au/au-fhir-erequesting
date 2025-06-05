Profile: AUeRequestingCoverage
Parent: AUBaseCoverage
Id: au-erequesting-coverage
Title: "AU eRequesting Coverage"
Description: "This profile sets minimum expectations for a Coverage resource that is used to record, search, and fetch information about insurance or medical plan or a payment agreement for a patient. It is based on the [AU Base Coverage](https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-coverage.html) and identifies the additional constraints, extensions, vocabularies and value sets that **SHALL** be present in the Coverage when conforming to this profile."

* ^status = #draft

* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0

* type ^binding.extension[http://hl7.org/fhir/tools/StructureDefinition/additional-binding][0].extension[key].valueId = "adb-cov-type-min"
* type ^binding.extension[http://hl7.org/fhir/tools/StructureDefinition/additional-binding][0].extension[purpose].valueCode = #minimum
* type ^binding.extension[http://hl7.org/fhir/tools/StructureDefinition/additional-binding][0].extension[valueSet].valueCanonical = "http://terminology.hl7.org.au/ValueSet/au-erequesting-coverage-type"  
* type ^binding.extension[http://hl7.org/fhir/tools/StructureDefinition/additional-binding][0].extension[documentation].valueMarkdown = "The minimum set of codes that any conformant system SHALL support."  
