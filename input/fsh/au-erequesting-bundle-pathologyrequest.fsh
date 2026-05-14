Profile: AUeRequestingPathologyRequestBundle
Parent: AUeRequestingDiagnosticRequestBundle
Id: au-erequesting-bundle-pathologyrequest
Title: "AU eRequesting Pathology Request Bundle"
Description: "This profile sets minimum expectations for a Bundle resource that packages a new pathology diagnostic request as a single FHIR transaction. It derives from the abstract [AU eRequesting Diagnostic Request Bundle](StructureDefinition-au-erequesting-bundle-diagnosticrequest.html) profile and constrains the ServiceRequest entries to conform to the [AU eRequesting Pathology Request](StructureDefinition-au-erequesting-servicerequest-path.html) profile."

* ^status = #active
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1

* entry[serviceRequest].resource only AUeRequestingPathologyRequest
