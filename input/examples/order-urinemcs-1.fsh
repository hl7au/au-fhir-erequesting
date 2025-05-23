Instance: order-urinemcs-1
InstanceOf: ServiceRequest
Usage: #example
* meta.profile = "http://hl7.org.au/fhir/ereq/StructureDefinition/au-erequesting-servicerequest-path"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-name"
* extension[=].valueString = "ServiceRequest - Urine Microscopy, Culture and Sensitivity"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-description"
* extension[=].valueMarkdown = "Shows an example of a request for a Urine Microscopy, Culture and Sensitivity test for the *AU eRequesting Pathology Request* profile. The request contains the precondition of nonfasting and pregnancy status supporting information. Patient: Remedios Belger."
* extension[+].url = "http://hl7.org.au/fhir/ereq/StructureDefinition/au-erequesting-displaysequence"
* extension[=].valueInteger = 3
* extension[+].url = "http://hl7.org.au/fhir/ereq/StructureDefinition/au-erequesting-fastingprecondition"
* extension[=].valueCodeableConcept = $sct#440565004 "Nonfasting"
* identifier.type = $v2-0203#PLAC "Placer Identifier"
* identifier.system = "http://ns.electronichealth.net.au/id/hpio-scoped/order/1.0/8003629900040359"
* identifier.value = "EMC1552642-1110-03"
* identifier.assigner.display = "Elimbah Medical Center"
* requisition.type = $v2-0203#PGN "Placer Group Number"
* requisition.system = "http://ns.electronichealth.net.au/id/hpio-scoped/order/1.0/8003629900040359"
* requisition.value = "EMC1552642-1110"
* requisition.assigner.display = "Elimbah Medical Center"
* status = #active
* intent = #order
* category = $sct#108252007 "Laboratory procedure"
* priority = #urgent
* code = $sct#401324008 "Urine microscopy, culture and sensitivities"
* code.text = "Urine MCS"
* quantityQuantity = 1 '1'
* subject = Reference(belger-remedios)
* encounter = Reference(obsgynaeclinic)
* occurrenceDateTime = "2025-02-21T08:10:00+10:00"
* authoredOn = "2025-02-21"
* requester = Reference(obstetrician-losch-sallie)
* supportingInfo = Reference(observation-pregnancy-status) "Pregnancy status"