ValueSet: AUeRequestingTaskBusinessStatus
Id: au-erequesting-task-businessstatus
Title: "AU eRequesting Task Business Status"
Description: "Task business status values used in the Australian eRequesting context."
* ^meta.profile[+] = "https://healthterminologies.gov.au/fhir/StructureDefinition/composed-value-set-4"
* ^url = "http://terminology.hl7.org.au/ValueSet/au-erequesting-task-businessstatus"
* ^version = "1.0.0"
* ^identifier.value = "urn:oid:2.16.840.1.113883.2.3.4.2.4.39"
* ^identifier.system = $oid
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1
* ^status = #active
* ^experimental = false
* ^date = "2025-05-28"
* ^publisher = "HL7 Australia"
* ^contact.name = "HL7 Australia eRequesting Technical Design Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://confluence.hl7.org/display/HAFWG/HL7+Australia+-+AU+eRequesting+Technical+Design+Group+Home"
* ^contact.telecom.use = #work
* ^copyright = ""
* include codes from system $taskbusinessstatus
