ValueSet: AUeRequestingRequestStatus
Id: au-erequesting-request-status
Title: "AU eRequesting Request Status"
Description: "ServiceRequest status values used in the Australian eRequesting context."
* ^meta.profile[+] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^version = "1.0.0"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^status = #draft
* ^experimental = false
* ^date = "2024-11-15"
* ^publisher = "HL7 Australia"
* ^copyright = ""
* $requeststatus#active
* $requeststatus#on-hold
* $requeststatus#revoked
* $requeststatus#completed
* $requeststatus#entered-in-error
