ValueSet: AUeRequestingFulfilmentTaskTags
Id: au-erequesting-fulfilment-task-tags
Title: "AU eRequesting Fulfilment Task Tags"
Description: "Task tag values for labelling and differentiating fulfilment of tasks used in an Australian eRequesting context."
* ^meta.profile[+] = "https://healthterminologies.gov.au/fhir/StructureDefinition/composed-value-set-4"
* ^version = "1.0.0"
* ^url = "http://terminology.hl7.org.au/ValueSet/au-erequesting-fulfilment-task-tags"
* ^identifier.value = "urn:oid:2.16.840.1.113883.2.3.4.2.4.38"
* ^identifier.system = $oid
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^date = "2025-01-28"
* ^publisher = "HL7 Australia"
* ^status = #draft 
* ^experimental = false
* $tasktag#fulfilment-task
* $tasktag#fulfilment-task-group