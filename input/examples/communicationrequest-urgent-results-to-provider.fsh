Instance: communicationrequest-urgent-results-to-provider
InstanceOf: CommunicationRequest
Usage: #example
* meta.profile = "http://hl7.org.au/fhir/ereq/StructureDefinition/au-erequesting-communicationrequest-urgentprovider"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-name"
* extension[=].valueString = "CommunicationRequest - Urgent results communication to provider"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-description"
* extension[=].valueMarkdown = "Shows an example CommunicationRequest for the *AU eRequesting CommunicationRequest Urgent Provider* profile, requesting a provider receive communication about urgent results. Patient: Fred Roberts."
* groupIdentifier.type = $v2-0203#PGN "Placer Group Number"
* groupIdentifier.type.text = "Placer Group Number"
* groupIdentifier.system = "http://ns.electronichealth.net.au/id/hpio-scoped/order/1.0/8003629900040359"
* groupIdentifier.value = "EMC4542244-5624"
* groupIdentifier.assigner = Reference(elimbah-medical-center) "Elimbah Medical Center"
* status = #active
* category = $communication-category#alert "Alert"
* category.text = "alert"
* priority = #urgent
* medium = $v3-ParticipationMode#PHONE "telephone"
* medium.text = "phone"
* subject = Reference(roberts-fred)
* about = Reference(order-xray-1)
* authoredOn = "2024-05-11"
* requester = Reference(generalpractitioner-guthridge-jarred)
* recipient = Reference(generalpractitioner-guthridge-jarred)
* sender = Reference(mount-charlton-radiology)
* reasonCode = $communicationrequest-reason#urgent "Urgent Request"