Profile: AUeRequestingImagingServiceRequest
Parent: AUeRequestingServiceRequest
Id: au-erequesting-imag-request
Title: "AU eRequesting Imaging Request"
Description: "This profile defines a service request structure to represent a request for a diagnostic investigation. It is based on the [AU Base Diagnostic Request](http://hl7.org.au/fhir/StructureDefinition/au-diagnosticrequest)."

* ^status = #draft

* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0

* . ^short = "A diagnostic service request"

* category = http://snomed.info/sct#363679005

* bodySite MS


