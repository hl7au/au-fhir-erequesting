Profile: AUeRequestingImagingRequestBundle
Parent: AUeRequestingDiagnosticRequestBundle
Id: au-erequesting-bundle-imagingrequest
Title: "AU eRequesting Imaging Request Bundle"
Description: "This profile sets minimum expectations for a Bundle resource that packages a new imaging diagnostic request as a single FHIR transaction. It derives from the abstract [AU eRequesting Diagnostic Request Bundle](StructureDefinition-au-erequesting-bundle-diagnosticrequest.html) profile and constrains the ServiceRequest entries to conform to the [AU eRequesting Imaging Request](StructureDefinition-au-erequesting-servicerequest-imag.html) profile."

* ^status = #active
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1

* entry[serviceRequest].resource only AUeRequestingImagingRequest
