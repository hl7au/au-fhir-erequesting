Instance: observation-pregnancy-status
InstanceOf: Observation
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-status-uv-ips"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-name"
* extension[=].valueString = "Observation - Pregnancy Status"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-description"
* extension[=].valueMarkdown = "Shows an example of the *Pregnancy - Status (IPS)* profile, with a result of Pregnant. Patient: Remedios Belger."
* status = #final
* code = $loinc#82810-3
* subject = Reference(belger-remedios)
* effectiveDateTime = "2025-02-21"
* performer = Reference(generalpractitioner-guthridge-jarred)
* valueCodeableConcept = $sct#77386006