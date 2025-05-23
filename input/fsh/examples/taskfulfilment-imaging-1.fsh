Instance: taskfulfilment-imaging-1
InstanceOf: Task
Usage: #example
* meta.profile = "http://hl7.org.au/fhir/ereq/StructureDefinition/au-erequesting-task-diagnosticrequest"
* meta.tag = $au-erequesting-task-tag#fulfilment-task
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-name"
* extension[=].valueString = "Task - Imaging Fulfilment Task"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-description"
* extension[=].valueMarkdown = "Shows an example of a task for fulfilment of an Imaging Request for the *AU eRequesting Task Diagnostic Request* profile. Patient: Fred Roberts."
* groupIdentifier.type = $v2-0203#PGN
* groupIdentifier.type.text = "Placer Group Number"
* groupIdentifier.system = "http://ns.electronichealth.net.au/id/hpio-scoped/order/1.0/8003622500032165"
* groupIdentifier.value = "EMC4542244-5624"
* groupIdentifier.assigner = Reference(elimbah-medical-center) "Elimbah Medical Center"
* partOf = Reference(taskgroup-imaging-1)
* status = #requested
* intent = #order
* priority = #routine
* code = $task-code#fulfill
* focus = Reference(order-xray-1)
* for = Reference(roberts-fred)
* authoredOn = "2024-05-11"
* requester = Reference(generalpractitioner-guthridge-jarred)
* owner = Reference(mount-charlton-radiology)