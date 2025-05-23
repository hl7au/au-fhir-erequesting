Instance: obsgynaeclinic
InstanceOf: Encounter
Usage: #example
* meta.profile = "http://hl7.org.au/fhir/core/StructureDefinition/au-core-encounter"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-name"
* extension[=].valueString = "Encounter - OBGYN Outpatient Clinic"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-description"
* extension[=].valueMarkdown = "Shows an example for the *AU Core Encounter* profile, representing a hospital outpatient obstetrics clinic visit. Patient: Remedios Belger."
* status = #finished
* class = $v3-ActCode#AMB "ambulatory"
* subject = Reference(belger-remedios)
* period.start = "2025-02-21T07:50:00+10:00"
* period.end = "2025-02-21T08:20:00+10:00"
* location.location = Reference(Location/barney-view-private-hospital)
* serviceProvider = Reference(Organization/barney-view-private-hospital)