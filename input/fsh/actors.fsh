Instance: au-erequesting-actor-placer
InstanceOf: ActorDefinition
Usage: #definition
* url = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-placer"
* name = "AUeRequestingPlacer"
* title = "AU eRequesting Placer"
* status = #active
* extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1
* description = "The AU eRequesting Placer is a system that is responsible for creating diagnostic requests."
* type = #system
* documentation = "AU eRequesting Placer (client):&#xa;&#xa;
- **SHALL** implement the [mandatory](conformance.html#mandatory-elements) and/or [Must Support](conformance.html#must-support-and-obligation) requirements for the elements defined as such in the implemented AU eRequesting profiles.&#xa;&#xa;
- **SHALL** implement the required REST API interactions and search parameters as defined in the AU eRequesting Placer Capability Statement."
* capabilities = "http://hl7.org.au/fhir/ereq/CapabilityStatement/au-erequesting-placer"

Instance: au-erequesting-actor-filler
InstanceOf: ActorDefinition
Usage: #definition
* url = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-filler"
* name = "AUeRequestingFiller"
* title = "AU eRequesting Filler"
* status = #active
* extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1
* description = "The AU eRequesting Filler is a system that is responsible for finding and retrieving diagnostic request fulfilments so that service providers can fulfil them."
* type = #system
* documentation = "An AU eRequesting Filler (client):&#xa;&#xa;
- **SHALL** implement the [mandatory](conformance.html#mandatory-elements) and/or [Must Support](conformance.html#must-support-and-obligation) requirements for the elements defined as such in the implemented AU eRequesting profiles.&#xa;&#xa;
- **SHALL** implement the required REST API interactions and search parameters as defined in the AU eRequesting Filler Capability Statement."
* capabilities = "http://hl7.org.au/fhir/ereq/CapabilityStatement/au-erequesting-filler"

Instance: au-erequesting-actor-patient
InstanceOf: ActorDefinition
Usage: #definition
* url = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-patient"
* name = "AUeRequestingPatient"
* title = "AU eRequesting Patient"
* status = #active
* extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1
* description = "A system that allows patients or their representatives to view diagnostic requests and fulfilment of diagnostic requests."
* type = #system
* documentation = "An AU eRequesting Patient (client):&#xa;&#xa;
- **SHALL** implement the [mandatory](conformance.html#mandatory-elements) and/or [Must Support](conformance.html#must-support-and-obligation) requirements for the elements defined as such in the implemented AU eRequesting profiles.&#xa;&#xa;
- **SHALL** implement the required REST API interactions and search parameters as defined in the AU eRequesting Patient Capability Statement."
* capabilities = "http://hl7.org.au/fhir/ereq/CapabilityStatement/au-erequesting-patient"

Instance: au-erequesting-actor-server
InstanceOf: ActorDefinition
Usage: #definition
* url = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* name = "AUeRequestingServer"
* title = "AU eRequesting Server"
* status = #active
* extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1
* description = "The eRequesting Server is a system that accepts diagnostic service requests and makes diagnostic service requests accessible."
* type = #system
* documentation = "An AU eRequesting Server (server):&#xa;&#xa;
- **SHALL** implement the [mandatory](conformance.html#mandatory-elements) and/or [Must Support](conformance.html#must-support-and-obligation) requirements for the elements defined as such in the implemented AU eRequesting profiles.&#xa;&#xa;
- **SHALL** implement the required REST API interactions and search parameters as defined in the AU eRequesting Server Capability Statement.&#xa;&#xa;
- **SHALL** specify the implemented resource types, associated AU eRequesting profiles, REST API interactions and search parameters in the server’s CapabilityStatement.&#xa;&#xa;
- **SHOULD** declare conformance to the AU eRequesting Server Capability Statement in the server’s CapabilityStatement."
* capabilities = "http://hl7.org.au/fhir/ereq/CapabilityStatement/au-erequesting-server"
