CodeSystem: AUeRequestingTaskTag
Id: au-erequesting-task-tag
Title: "AU eRequesting Task Tag Codes"
Description: "The AU eRequesting Task Tag CodeSystem provides tag values for labelling tasks in an Australian eRequesting context."
* ^meta.profile[+] = "https://healthterminologies.gov.au/fhir/StructureDefinition/complete-code-system-4"
* ^version = "1.0.0"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^publisher = "HL7 Australia"
* ^contact.name = "HL7 Australia eRequesting Technical Design Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://confluence.hl7.org/display/HAFWG/HL7+Australia+-+AU+eRequesting+Technical+Design+Group+Home"
* ^contact.telecom.use = #work
* ^date = "2025-01-28"
* ^status = #draft
* ^caseSensitive = true
* ^experimental = false
* ^versionNeeded = true
* ^compositional = false
* ^content = #complete
* ^count = 2
* #fulfillment-task "fulfillment of a task" "A tag value indicating fullfilment of a task"
* #fulfillment-task-group "fulfillment of a group task" "A tag value indicating fullfilment of a group task"