Instance: au-erequesting-actor-placer
InstanceOf: ActorDefinition
Usage: #definition
* url = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-placer"
* name = "AUeRequestingPlacer"
* title = "AU eRequesting Placer"
* status = #draft
* description = "The AU eRequesting Placer system is responsible for initiating and creating patient diagnostic service requests. This system connects to enable requesters to provide the necessary information to create a request, ensuring that all required data is accurately collected and provided to service providers with sufficient information for them to fulfil the request."
* type = #system
* documentation = "AU eRequesting Placer (client): TBD"

Instance: au-erequesting-actor-filler
InstanceOf: ActorDefinition
Usage: #definition
* url = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-filler"
* name = "AUeRequestingFiller"
* title = "AU eRequesting Filler"
* status = #draft
* description = "The AU eRequesting Filler is a system responsible for finding and retrieving diagnostic service requests so that service providers can fulfil them It ensures that service providers have the necessary details to fulfil the requests and manages the requests through the fulfilment process."
* type = #system
* documentation = "An AU eRequesting Filler (client): TBD"


Instance: au-erequesting-actor-patientaccess
InstanceOf: ActorDefinition
Usage: #definition
* url = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-patientaccess"
* name = "AUeRequestingPatientAccess"
* title = "AU eRequesting Patient Access"
* status = #draft
* description = "The AU eRequesting Patient Access system is the digital interface that allows patients or their representatives to view and manage their requests for diagnostic services. It provides access to request details, enabling patients to choose service providers and track the status of their requests."
* type = #system
* documentation = "An AU eRequesting Patient Access (client): TBD"
