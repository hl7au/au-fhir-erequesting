ValueSet: AUeRequestingCoverageSelfPay
Id: au-erequesting-coverage-self-pay
Title: "AU eRequesting Coverage Type and Self-Pay"
Description: "Coverage type and self pay codes typically used in the Australian eRequesting context."
* ^meta.profile[+] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^version = "1.0.0"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^status = #draft
* ^experimental = false
* ^date = "2024-10-31"
* ^publisher = "HL7 Australia"
* ^copyright = "HL7 International"
* $coverageselfpay#pay
* $coverageselfpay#payconc
* $v3-actcode#PUBLICPOL
* $v3-actcode#VET