Instance: task-communicationrequest-urgent-results-to-provider
InstanceOf: Task
Usage: #example
* meta.profile = "http://hl7.org.au/fhir/ereq/StructureDefinition/au-erequesting-task-communicationrequest"
* meta.tag = $au-erequesting-task-tag#fulfilment-task
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-name"
* extension[=].valueString = "Task - Communication Request - Urgent results communication to provider"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-description"
* extension[=].valueMarkdown = "Shows an example of a task for fulfilment of a Communication Request for the *AU eRequesting Task Communication Request* profile. Patient: Fred Roberts."
* groupIdentifier.type = $v2-0203#PGN
* groupIdentifier.type.text = "Placer Group Number"
* groupIdentifier.system = "http://ns.electronichealth.net.au/id/hpio-scoped/order/1.0/8003629900040359"
* groupIdentifier.value = "EMC4542244-5624"
* groupIdentifier.assigner = Reference(elimbah-medical-center) "Elimbah Medical Center"
* partOf = Reference(taskfulfilment-imaging-1)
* status = #requested
* intent = #order
* priority = #urgent
* focus = Reference(communicationrequest-urgent-results-to-provider)
* for = Reference(roberts-fred)
* authoredOn = "2024-05-11"
* requester = Reference(generalpractitioner-guthridge-jarred)
* owner = Reference(mount-charlton-radiology)