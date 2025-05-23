Instance: communicationrequest-copyto-gp
InstanceOf: CommunicationRequest
Usage: #example
* meta.profile = "http://hl7.org.au/fhir/ereq/StructureDefinition/au-erequesting-communicationrequest-copyto"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-name"
* extension[=].valueString = "CommunicationRequest - Copy To GP"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-description"
* extension[=].valueMarkdown = "Shows an example CommunicationRequest for the *AU eRequesting CommunicationRequest CopyTo* profile, requesting a GP as a report copy-to recipient. Patient: Remedios Belger."
* groupIdentifier.type = $v2-0203#PGN "Placer Group Number"
* groupIdentifier.type.text = "Placer Group Number"
* groupIdentifier.system = "http://ns.electronichealth.net.au/id/hpio-scoped/order/1.0/8003629900040359"
* groupIdentifier.value = "EMC1552642-1110"
* groupIdentifier.assigner = Reference(elimbah-medical-center) "Elimbah Medical Center"
* status = #active
* category = $communication-category#notification "Notification"
* category.text = "notification"
* subject = Reference(belger-remedios)
* about[0] = Reference(order-glu-1)
* about[+] = Reference(order-bg-abs)
* about[+] = Reference(order-urinemcs-1)
* about[+] = Reference(order-ironstudies)
* authoredOn = "2025-02-21T08:00:00+10:00"
* requester = Reference(obstetrician-losch-sallie)
* recipient = Reference(generalpractitioner-guthridge-jarred)
* sender = Reference(kioma-pathology)
* reasonCode = $communicationrequest-reason#copyto "Copy To"