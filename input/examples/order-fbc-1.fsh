Instance: order-fbc-1
InstanceOf: ServiceRequest
Usage: #example
* meta.profile = "http://hl7.org.au/fhir/ereq/StructureDefinition/au-erequesting-servicerequest-path"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-name"
* extension[=].valueString = "ServiceRequest - Full Blood Count"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-description"
* extension[=].valueMarkdown = "Shows an example of a request for a Full Blood Count (FBC) for the *AU eRequesting Pathology Request* profile. Patient: Fred Roberts."
* extension[+].url = "http://hl7.org.au/fhir/ereq/StructureDefinition/au-erequesting-displaysequence"
* extension[=].valueInteger = 1
* identifier.type = $v2-0203#PLAC "Placer Identifier"
* identifier.system = "http://ns.electronichealth.net.au/id/hpio-scoped/order/1.0/8003629900040359"
* identifier.value = "EMC4542244-5625-01"
* identifier.assigner.display = "Elimbah Medical Center"
* requisition.type = $v2-0203#PGN "Placer Group Number"
* requisition.system = "http://ns.electronichealth.net.au/id/hpio-scoped/order/1.0/8003629900040359"
* requisition.value = "EMC4542244-5625"
* requisition.assigner.display = "Elimbah Medical Center"
* status = #active
* intent = #order
* category = $sct#108252007 "Laboratory procedure"
* code = $sct#26604007 "Complete blood count"
* code.text = "FBC"
* subject = Reference(roberts-fred)
* encounter = Reference(gp-consultation)
* authoredOn = "2024-05-11"
* requester = Reference(generalpractitioner-guthridge-jarred)