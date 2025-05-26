CodeSystem: TaskTag
Id: task-tag
Title: "Task Tag"
Description: "The Task Tag code system provides concepts that represent tag values for labelling tasks in an Australian context."
* ^meta.profile[+] = "https://healthterminologies.gov.au/fhir/StructureDefinition/complete-code-system-4"
* ^url = "http://terminology.hl7.org.au/CodeSystem/task-tag"
* ^version = "1.0.0"
* ^identifier.value = "urn:oid:2.16.840.1.113883.2.3.4.1.4.33"
* ^identifier.system = $oid
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^publisher = "HL7 Australia"
* ^contact.name = "HL7 Australia eRequesting Technical Design Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://confluence.hl7.org/display/HAFWG/HL7+Australia+-+AU+eRequesting+Technical+Design+Group+Home"
* ^contact.telecom.use = #work
* ^date = "2025-01-31"
* ^status = #draft
* ^caseSensitive = true
* ^experimental = false
* ^versionNeeded = true
* ^compositional = false
* ^content = #complete
* ^count = 2
* #fulfilment-task "fulfilment of a task" "A tag value indicating fulfilment of a task"
* #fulfilment-task-group "fulfilment of a group task" "A tag value indicating fulfilment of a group task"