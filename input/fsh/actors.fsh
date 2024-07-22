Instance: au-erequesting-actor-placer
InstanceOf: ActorDefinition
Usage: #definition
* url = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-placer"
* name = "AUeRequestingPlacer"
* title = "AU eRequesting Placer"
* status = #draft
* description = "The AU eRequesting Placer is a system that is responsible for initiating and creating diagnostic service requests. This system connects to enable requesters to provide the necessary information to create a request, ensuring that required data is accurately collected and provided to service providers with sufficient information for them to fulfil the request."
* type = #system
* documentation = "AU eRequesting Placer (client): TBD"

Instance: au-erequesting-actor-filler
InstanceOf: ActorDefinition
Usage: #definition
* url = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-filler"
* name = "AUeRequestingFiller"
* title = "AU eRequesting Filler"
* status = #draft
* description = "The AU eRequesting Filler is a system that is responsible for finding and retrieving diagnostic service requests so that service providers can fulfil them. It ensures that service providers have the necessary information to fulfil the requests and manages the requests through the fulfilment process."
* type = #system
* documentation = "An AU eRequesting Filler (client): TBD"

Instance: au-erequesting-actor-patientaccess
InstanceOf: ActorDefinition
Usage: #definition
* url = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-patientaccess"
* name = "AUeRequestingPatientAccess"
* title = "AU eRequesting Patient Access"
* status = #draft
* description = "The AU eRequesting Patient Access is a system that is the digital interface that allows patients or their representatives to view and manage requests for diagnostic services. It provides access to request information, enabling patients to choose service providers and track the status of requests."
* type = #system
* documentation = "An AU eRequesting Patient Access (client): TBD"

Instance: au-erequesting-actor-server
InstanceOf: ActorDefinition
Usage: #definition
* url = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* name = "AUeRequestingServer"
* title = "AU eRequesting Server"
* status = #draft
* description = "The eRequesting Server is a system that accepts diagnostic service requests and makes diagnostic service requests accessible."
* type = #system
* documentation = "An AU eRequesting Server (server): TBD"
