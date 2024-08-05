The following ActorDefinitions define the systems that plays a role in data exchange, and that have obligations associated with the role the actor plays, in AU eRequesting.

- [AU eRequesting Placer actor](ActorDefinition-au-erequesting-actor-placer.html)

The AU eRequesting Placer is a system that is responsible for initiating and creating diagnostic service requests. This system connects to enable requesters to provide the necessary information to create a request, ensuring that required data is accurately collected and provided to service providers with sufficient information for them to fulfil the request.  

- [AU eRequesting Filler actor](ActorDefinition-au-erequesting-actor-filler.html)

The AU eRequesting Filler is a system that is responsible for finding and retrieving diagnostic service requests so that service providers can fulfil them. It ensures that service providers have the necessary information to fulfil the requests and manages the requests through the fulfilment process.

- [AU eRequesting Patient Access actor](ActorDefinition-au-erequesting-actor-patientaccess.html)

The AU eRequesting Patient Access is a system that is the digital interface that allows patients or their representatives to view and manage requests for diagnostic services. It provides access to request information, enabling patients to choose service providers and track the status of requests.

- [AU eRequesting Server actor](ActorDefinition-au-erequesting-actor-server.html)

The eRequesting Server is a system that accepts diagnostic service requests and makes diagnostic service requests accessible.

### Actor Interactions
Actors in eRequesting interact with each other to enable service requests to be placed, filled and accessed by patients.  

Actors operate in a typical sequence where placers initiate a request by creating (and updating) service requests, patients may access details of their requests and fillers retrieve service request details to enable fulfillment of the requests. 

<figure>
<div> 
    <img src="actors-sequence.png" alt="Actors Typical Sequence" style="width:50%;margin-left:auto;margin-right:auto;display:block"/>
</div>
<figcaption>Actors Typical Sequence</figcaption>
<figure>

The [AU eRequesting Placer actor](ActorDefinition-au-erequesting-actor-placer.html) can create and update ServiceRequest details by calling the [AU eRequesting Server actor](ActorDefinition-au-erequesting-actor-server.html).

The [AU eRequesting Patient Access actor](ActorDefinition-au-erequesting-actor-patientaccess.html) can search for ServiceRequest details by calling the [AU eRequesting Server actor](ActorDefinition-au-erequesting-actor-server.html).

The [AU eRequesting Filler actor](ActorDefinition-au-erequesting-actor-filler.html) can retrieve ServiceRequest details by calling the [AU eRequesting Server actor](ActorDefinition-au-erequesting-actor-server.html).
