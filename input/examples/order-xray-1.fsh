Instance: order-xray-1
InstanceOf: ServiceRequest
Usage: #example
* meta.profile = "http://hl7.org.au/fhir/ereq/StructureDefinition/au-erequesting-servicerequest-imag"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-name"
* extension[=].valueString = "ServiceRequest - X-ray"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-description"
* extension[=].valueMarkdown = "Shows an example of a request for a chest X-ray for the *AU eRequesting Imaging Request* profile. Patient: Fred Roberts."
* extension[+].url = "http://hl7.org.au/fhir/ereq/StructureDefinition/au-erequesting-displaysequence"
* extension[=].valueInteger = 1
* identifier.type = $v2-0203#PLAC "Placer Identifier"
* identifier.system = "http://ns.electronichealth.net.au/id/hpio-scoped/order/1.0/8003629900040359"
* identifier.value = "EMC4542244-5624-01"
* identifier.assigner.display = "Elimbah Medical Center"
* requisition.type = $v2-0203#PGN "Placer Group Number"
* requisition.system = "http://ns.electronichealth.net.au/id/hpio-scoped/order/1.0/8003629900040359"
* requisition.value = "EMC4542244-5624"
* requisition.assigner.display = "Elimbah Medical Center"
* status = #active
* intent = #order
* category = $sct#363679005 "Imaging"
* code = $sct#399208008 "Plain chest X-ray"
* code.text = "Chest X-Ray"
* subject = Reference(roberts-fred)
* encounter = Reference(gp-consultation)
* authoredOn = "2024-05-11"
* requester = Reference(generalpractitioner-guthridge-jarred)
* insurance = Reference(Coverage/coverage-privateconcession)