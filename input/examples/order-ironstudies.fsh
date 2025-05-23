Instance: order-ironstudies
InstanceOf: ServiceRequest
Usage: #example
* meta.profile = "http://hl7.org.au/fhir/ereq/StructureDefinition/au-erequesting-servicerequest-path"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-name"
* extension[=].valueString = "ServiceRequest - Urine Microscopy, Culture and Sensitivity"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-description"
* extension[=].valueMarkdown = "Shows an example of a request for an Iron Studies group or panel of blood tests for the *AU eRequesting Pathology Request* profile. The request contains a context-specific sex parameter for clinical use and a status reason. Patient: Remedios Belger."
* extension[+].extension.url = "value"
* extension[=].extension.valueCodeableConcept = $sex-parameter-for-clinical-use#female-typical
* extension[=].extension.valueCodeableConcept.text = "Apply female-typical setting or reference range"
* extension[=].url = "http://hl7.org/fhir/StructureDefinition/patient-sexParameterForClinicalUse"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/request-statusReason"
* extension[=].valueCodeableConcept.text = "On-hold pending normal urine MCS or resolution of suspected UTI."
* extension[+].url = "http://hl7.org.au/fhir/ereq/StructureDefinition/au-erequesting-displaysequence"
* extension[=].valueInteger = 4
* identifier.type = $v2-0203#PLAC "Placer Identifier"
* identifier.system = "http://ns.electronichealth.net.au/id/hpio-scoped/order/1.0/8003629900040359"
* identifier.value = "EMC1552642-1110-04"
* identifier.assigner.display = "Elimbah Medical Center"
* requisition.type = $v2-0203#PGN "Placer Group Number"
* requisition.system = "http://ns.electronichealth.net.au/id/hpio-scoped/order/1.0/8003629900040359"
* requisition.value = "EMC1552642-1110"
* requisition.assigner.display = "Elimbah Medical Center"
* status = #on-hold
* intent = #order
* category = $sct#108252007 "Laboratory procedure"
* code = $sct#269820002
* code.text = "Iron studies"
* subject = Reference(belger-remedios)
* encounter = Reference(obsgynaeclinic)
* authoredOn = "2025-02-21"
* requester = Reference(obstetrician-losch-sallie)
* supportingInfo = Reference(observation-pregnancy-status) "Pregnancy status"