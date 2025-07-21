ValueSet: AUeRequestingCoverageTypeAndSelfPayCodes
Id: au-erequesting-coverage-type
Title: "AU eRequesting Coverage Type and Self-Pay Codes"
Description: "Coverage type and self-pay codes typically used in the Australian eRequesting context."
* ^meta.profile[+] = "https://healthterminologies.gov.au/fhir/StructureDefinition/composed-value-set-4"
* ^url = "http://terminology.hl7.org.au/ValueSet/au-erequesting-coverage-type"
* ^version = "1.0.0"
* ^identifier.value = "urn:oid:2.16.840.1.113883.2.3.4.2.4.35"
* ^identifier.system = $oid
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1
* ^status = #active
* ^experimental = false
* ^date = "2024-10-31"
* ^publisher = "HL7 Australia"
* ^copyright = "HL7 International"
* $coverageselfpay#pay
* $coverageselfpay#payconc
* $v3-actcode#PUBLICPOL
* $v3-actcode#VET
