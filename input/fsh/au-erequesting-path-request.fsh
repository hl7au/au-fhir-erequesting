Profile: AUeRequestingPathologyServiceRequest
Parent: AUeRequestingServiceRequest
Id: au-erequesting-path-request
Title: "AU eRequesting Pathology Service Request"
Description: "This profile defines a service request structure to represent a request for a diagnostic investigation. It is based on the [AU Base Diagnostic Request](http://hl7.org.au/fhir/StructureDefinition/au-diagnosticrequest)."

* ^status = #draft

* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0

* . ^short = "A diagnostic service request"

* category = http://snomed.info/sct#108252007

* bodySite MS


