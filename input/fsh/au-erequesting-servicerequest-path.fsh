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
