Instance: order-obsus-1
InstanceOf: ServiceRequest
Usage: #example
* meta.profile = "http://hl7.org.au/fhir/ereq/StructureDefinition/au-erequesting-servicerequest-imag"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-name"
* extension[=].valueString = "ServiceRequest - Obstetric Ultrasound (Second Trimester)"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-description"
* extension[=].valueMarkdown = "Shows an example of a request for an obstetric ultrasound in the second trimester for the *AU eRequesting Imaging Request* profile. Patient: Remedios Belger."
* extension[+].url = "http://hl7.org.au/fhir/ereq/StructureDefinition/au-erequesting-displaysequence"
* extension[=].valueInteger = 1
* identifier.type = $v2-0203#PLAC "Placer Identifier"
* identifier.system = "http://ns.electronichealth.net.au/id/hpio-scoped/order/1.0/8003629900040359"
* identifier.value = "EMC1552642-1111-01"
* identifier.assigner.display = "Elimbah Medical Center"
* requisition.type = $v2-0203#PGN "Placer Group Number"
* requisition.system = "http://ns.electronichealth.net.au/id/hpio-scoped/order/1.0/8003629900040359"
* requisition.value = "EMC1552642-1111"
* requisition.assigner.display = "Elimbah Medical Center"
* status = #active
* intent = #order
* category = $sct#363679005 "Imaging"
* code = $sct#446208007 "Ultrasonography in second trimester"
* code.text = "2nd Trimester US"
* subject = Reference(belger-remedios)
* encounter = Reference(obsgynaeclinic)
* occurrencePeriod.start = "2025-05-08"
* occurrencePeriod.end = "2025-06-11"
* authoredOn = "2025-02-21"
* requester = Reference(obstetrician-losch-sallie)
* supportingInfo = Reference(observation-pregnancy-status) "Pregnancy status"
* note.text = "18-22 week Morphology scan. Pt advised the scan is ideally done around 20 weeks gestation."