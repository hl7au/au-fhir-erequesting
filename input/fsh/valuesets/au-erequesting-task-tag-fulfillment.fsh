ValueSet: AUeRequestingTaskTagFulfillment
Id: au-erequesting-task-tag-fulfillment
Title: "AU eRequesting Tags for Fulfillment of a Task or Group Task"
Description: "Task tag values for labelling and differentiating fullfilment of tasks used in an Australian eRequesting context."
* ^meta.profile[+] = "https://healthterminologies.gov.au/fhir/StructureDefinition/composed-value-set-4"
* ^version = "1.0.0"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^date = "2025-01-28"
* ^publisher = "HL7 Australia"
* ^status = #draft 
* ^experimental = false
* $tasktag#fulfillment-task
* $tasktag#fulfillment-task-group