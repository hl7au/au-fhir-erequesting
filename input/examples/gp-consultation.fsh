Instance: gp-consultation
InstanceOf: Encounter
Usage: #example
* meta.profile = "http://hl7.org.au/fhir/core/StructureDefinition/au-core-encounter"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-name"
* extension[=].valueString = "Encounter - Consultation"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-description"
* extension[=].valueMarkdown = "Shows an example of an encounter for the *AU Core Encounter* profile, representing a general practice consultation. Patient: Fred Roberts."
* status = #finished
* class = $v3-ActCode#AMB "ambulatory"
* serviceType = $sct#788007007 "General practice service"
* subject = Reference(roberts-fred)
* participant.type = $v3-ParticipationType#PPRF "primary performer"
* participant.individual = Reference(generalpractitioner-guthridge-jarred)
* period.start = "2024-05-11T10:15:00+10:00"
* period.end = "2024-05-11T10:30:00+10:00"
* serviceProvider = Reference(elimbah-medical-center)