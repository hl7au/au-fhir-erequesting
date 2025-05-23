Instance: order-glu-1
InstanceOf: ServiceRequest
Usage: #example
* meta.profile = "http://hl7.org.au/fhir/ereq/StructureDefinition/au-erequesting-servicerequest-path"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-name"
* extension[=].valueString = "ServiceRequest - Fasting Blood Glucose"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-description"
* extension[=].valueMarkdown = "Shows an example of a request for a Fasting Blood Glucose test for the *AU eRequesting Pathology Request* profile. Patient: Remedios Belger."
* extension[+].url = "http://hl7.org.au/fhir/ereq/StructureDefinition/au-erequesting-displaysequence"
* extension[=].valueInteger = 1
* extension[+].url = "http://hl7.org.au/fhir/ereq/StructureDefinition/au-erequesting-fastingprecondition"
* extension[=].valueCodeableConcept = $sct#16985007 "Fasting"
* identifier.type = $v2-0203#PLAC "Placer Identifier"
* identifier.system = "http://ns.electronichealth.net.au/id/hpio-scoped/order/1.0/8003629900040359"
* identifier.value = "EMC1552642-1110-01"
* identifier.assigner.display = "Elimbah Medical Center"
* requisition.type = $v2-0203#PGN "Placer Group Number"
* requisition.system = "http://ns.electronichealth.net.au/id/hpio-scoped/order/1.0/8003629900040359"
* requisition.value = "EMC1552642-1110"
* requisition.assigner.display = "Elimbah Medical Center"
* status = #active
* intent = #order
* category = $sct#108252007 "Laboratory procedure"
* code = $sct#271062006 "Fasting blood glucose"
* code.text = "Glucose, Fasting"
* quantityQuantity = 1 '1'
* subject = Reference(belger-remedios)
* encounter = Reference(obsgynaeclinic)
* occurrenceDateTime = "2025-02-21T08:00:00+10:00"
* authoredOn = "2025-02-21"
* requester = Reference(obstetrician-losch-sallie)
* supportingInfo = Reference(observation-pregnancy-status) "Pregnancy status"