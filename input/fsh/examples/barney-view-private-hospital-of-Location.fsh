Instance: barney-view-private-hospital-of-Location
InstanceOf: Location
Usage: #example
* id = "barney-view-private-hospital"
* meta.profile = "http://hl7.org.au/fhir/core/StructureDefinition/au-core-location"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-name"
* extension[=].valueString = "Location - Barney View Private Hospital"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-description"
* extension[=].valueMarkdown = "Shows an example of a location, Barney View Private Hospital, for the *AU Core Location* profile."
* name = "Barney View Private Hospital"
* mode = #instance
* address.line = "195 Maple Cct"
* address.city = "Barney View"
* address.state = "QLD"
* address.postalCode = "4287"
* physicalType = $location-physical-type#si "Site"
* managingOrganization = Reference(Organization/barney-view-private-hospital)