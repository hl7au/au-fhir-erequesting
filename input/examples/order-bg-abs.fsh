Instance: order-bg-abs
InstanceOf: ServiceRequest
Usage: #example
* meta.profile = "http://hl7.org.au/fhir/ereq/StructureDefinition/au-erequesting-servicerequest-path"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-name"
* extension[=].valueString = "ServiceRequest - Blood Group and Antibodies panel"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-description"
* extension[=].valueMarkdown = "Shows an example of a request for a blood group and antibodies panel for the *AU eRequesting Pathology Request* profile. Patient: Remedios Belger."
* extension[+].url = "http://hl7.org.au/fhir/ereq/StructureDefinition/au-erequesting-displaysequence"
* extension[=].valueInteger = 2
* identifier.type = $v2-0203#PLAC "Placer Identifier"
* identifier.system = "http://ns.electronichealth.net.au/id/hpio-scoped/order/1.0/8003629900040359"
* identifier.value = "EMC1552642-1110-02"
* identifier.assigner.display = "Elimbah Medical Center"
* requisition.type = $v2-0203#PGN "Placer Group Number"
* requisition.system = "http://ns.electronichealth.net.au/id/hpio-scoped/order/1.0/8003629900040359"
* requisition.value = "EMC1552642-1110"
* requisition.assigner.display = "Elimbah Medical Center"
* status = #active
* intent = #order
* category = $sct#108252007 "Laboratory procedure"
* code = $sct#20099001 "Blood typing, ABO, Rho(D) and RBC antibody screening"
* code.text = "Blood Group and Ab Screen"
* subject = Reference(belger-remedios)
* encounter = Reference(obsgynaeclinic)
* authoredOn = "2025-02-21"
* requester = Reference(obstetrician-losch-sallie)
* supportingInfo = Reference(observation-pregnancy-status) "Pregnancy status"