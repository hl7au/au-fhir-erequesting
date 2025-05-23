Instance: communicationrequest-patient-instruction
InstanceOf: CommunicationRequest
Usage: #example
* meta.profile = "http://hl7.org.au/fhir/ereq/StructureDefinition/au-erequesting-communicationrequest-patient"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-name"
* extension[=].valueString = "CommunicationRequest - Patient instructions from the diagnostic provider"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-description"
* extension[=].valueMarkdown = "Shows an example CommunicationRequest for the *AU eRequesting CommunicationRequest Patient* profile, capturing the patient's communication preferences for receiving SMS instructions for a test from the diagnostic provider. Patient: Remedios Belger."
* groupIdentifier.type = $v2-0203#PGN "Placer Group Number"
* groupIdentifier.type.text = "Placer Group Number"
* groupIdentifier.system = "http://ns.electronichealth.net.au/id/hpio-scoped/order/1.0/8003629900040359"
* groupIdentifier.value = "EMC1552642-1111"
* groupIdentifier.assigner = Reference(elimbah-medical-center) "Elimbah Medical Center"
* status = #active
* category = $communication-category#instruction
* category.text = "instruction"
* medium = $v3-ParticipationMode#SMSWRIT
* medium.text = "SMS"
* subject = Reference(belger-remedios)
* about = Reference(order-obsus-1)
* about[+] = Reference(taskgroup-pathology-1)
* about[+] = Reference(taskfulfilment-pathology-1)
* authoredOn = "2025-03-15T10:30:00+10:00"
* requester = Reference(belger-remedios)
* recipient = Reference(belger-remedios)
* sender = Reference(mount-charlton-radiology)
* reasonCode = $communicationrequest-reason#patient "Patient Request"