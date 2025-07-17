ValueSet: AUeRequestingRequestStatus
Id: au-erequesting-request-status
Title: "AU eRequesting RequestStatus"
Description: "ServiceRequest status values used in the Australian eRequesting context."
* ^meta.profile[+] = "https://healthterminologies.gov.au/fhir/StructureDefinition/composed-value-set-4"
* ^url = "http://terminology.hl7.org.au/ValueSet/au-erequesting-request-status"
* ^version = "1.0.0"
* ^identifier.value = "urn:oid:2.16.840.1.113883.2.3.4.2.4.36"
* ^identifier.system = $oid
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1
* ^status = #active
* ^experimental = false
* ^date = "2024-11-15"
* ^publisher = "HL7 Australia"
* ^copyright = ""
* $requeststatus#active
* $requeststatus#on-hold
* $requeststatus#revoked
* $requeststatus#completed
* $requeststatus#entered-in-error
