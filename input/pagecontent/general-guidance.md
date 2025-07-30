### Diagnostic Request Grouping

In AU eRequesting, grouping is applied to requests created by an AU eRequesting Placer actor. This reflects common patterns in Australia where multiple related pathology tests or imaging exams are requested in a single event.

AU eRequesting follows the [shared requisition id](https://hl7.org/fhir/request.html#requisitionid) approach from the [FHIR Request pattern](https://hl7.org/fhir/request.html), where multiple request resources created as part of the same ordering event share a common identifier. The Placer Group Number (PGN) is the common identifier assigned by the AU eRequesting Placer actor at the time of request creation and is recorded in either the `requisition` or `groupIdentifier` elements of resources in the group.

A single [AU eRequesting Task Group](StructureDefinition-au-erequesting-task-group.html) is used to represent and coordinate the overall group of requests. It allows the AU eRequesting Filler actor to manage the group as a single coordinated request, supporting fulfilment, progress tracking and status updates across the group.
 
Each individual requested test or exam in the group is represented using an [AU eRequesting Diagnostic Request](StructureDefinition-au-erequesting-diagnosticrequest.html), and each individual commmunication request is represented using an [AU eRequesting CommunicationRequest](StructureDefinition-au-erequesting-communicationrequest.html). These individual requests are paired with a corresponding Task to track the fulfilment of that request.
 
Each request will also include supporting clinical, administrative and contextual information represented using other FHIR resources (e.g. Patient). These resources form part of the overall request and may be shared across the group or be specific to individual requests. The full set of AU eRequesting profiles used to support the request is listed on the [Profiles and Extensions](profiles-and-extensions.html) page. 

 <div> 
    <img src="au-erequesting-example-request-group.svg" alt="AU eRequesting example request group" style="width:90%"/>
  </div>
*Figure 1: AU eRequesting example request group*

#### Request Group Guidance
- A task group:
  - Is used to manage the group as a single coordinated request and is implemented using [AU eRequesting Task Group](StructureDefinition-au-erequesting-task-group.html) 
  - **SHALL** always be created, including when there is only a single request for a test or exam. This ensures consistent implementation and uniform processing by the AU eRequesting Filler actor.
  - Is assigned the Placer Group Number (PGN) in `Task.groupIdentifier` by the AU eRequesting Placer actor to logically associate all requests in the order 
  - Is identified by the `Task.meta.tag` of "fulfilment-task-group"
- Each task request in the group:
  - Supports fulfilment tracking of a request and is implemented using the relevant Task profile:
    - [AU eRequesting Task Diagnostic Request](StructureDefinition-au-erequesting-task-diagnosticrequest.html)
    - [AU eRequesting Task Communication Request](StructureDefinition-au-erequesting-task-communicationrequest.html)
  - Uses `Task.focus` to reference the specific diagnostic request of which fulfilment is being tracked
  - Uses `Task.partOf` to reference the [AU eRequesting Task Group](StructureDefinition-au-erequesting-task-group.html)
  - Is assigned the Placer Group Number (PGN) in `Task.groupIdentifier`
  - Is identified by the `Task.meta.tag` of "fulfilment-task"
- Each diagnostic request in the group:
  - Represents a request for a single test or exam and is implemented using the relevant ServiceRequest profile:
    - [AU eRequesting Pathology Request](StructureDefinition-au-erequesting-servicerequest-path.html)
    - [AU eRequesting Imaging Request](StructureDefinition-au-erequesting-servicerequest-imag.html)
  - Is assigned the Placer Group Number (PGN) in `ServiceRequest.requisition`
  - Is assigned an optional `ServiceRequest.displaySequence` that reflects the visual order or sequence of diagnostic requests within the group as they appear on a paper request form
- Each communication request in the group:
  - Represents a single communication request and is implemented using the relevant CommunicationRequest profile:
    - [AU eRequesting CommunicationRequest CopyTo](StructureDefinition-au-erequesting-communicationrequest-copyto.html)
    - [AU eRequesting CommunicationRequest Patient](StructureDefinition-au-erequesting-communicationrequest-patient.html)
    - [AU eRequesting CommunicationRequest Urgent Provider](StructureDefinition-au-erequesting-communicationrequest-urgentprovider.html)
  - Is assigned the Placer Group Number (PGN) in `CommunicationRequest.groupIdentifier`

### Implementation Considerations

This section highlights aspects for implementers to consider when designing and developing AU eRequesting solutions.

#### Human-Readable Narrative

It is recommended that FHIR resources exchanged as part of AU eRequesting include a human-readable narrative in the text element, in line with the best practice guidelines provided in the [FHIR DomainResource specification](https://hl7.org/fhir/R4/domainresource.html).  When a resource lacks narrative, only systems that fully understand the structured content can safely display it to a user. Including a human-readable narrative strengthens the ecosystem and supports more flexible use of the data across different systems.

#### Transaction Bundles

In AU eRequesting, an order typically involves multiple related FHIR resources. To help ensure consistent linkage and referential integrity across these related resources, AU eRequesting Placer actors could consider using a FHIR [Bundle](https://hl7.org/fhir/R4/bundle.html) of type `transaction` to create the resources on the server as part of a single atomic transaction. This means all resources in the request are either created successfully or rejected together, which aligns with [FHIR transaction processing rules](https://hl7.org/fhir/R4/http.html#trules) and the [FHIR Request pattern](https://hl7.org/fhir/R4/request.html).

If a transaction Bundle is not used, the sequence in which resources are created to satisfy dependencies and uphold referential integrity needs to be carefully considered. This consideration is particularly important for the [AU eRequesting Task Group](StructureDefinition-au-erequesting-task-group.html), which serves as the entry point for AU eRequesting Filler actors to find and manage fulfilment tasks for the same request.

#### Workflow Event Tracking
AU eRequesting Placer, Filler, and Patient actors are likely to need to discover and monitor changes to key resources throughout the diagnostic request and fulfilment lifecycle. See the [AU eRequesting Workflow Guidance](workflow.html) page.

FHIR provides mechanisms that enable client systems to monitor resource changes and can be used track the status and progression of requests through the fulfilment workflow. These include:
- [Polling](https://hl7.org/fhir/exchanging-polling.html): clients periodically query the server using search parameters to find and track updates.
- [Subscriptions](https://hl7.org/fhir/R4/subscription.html): clients register a Subscription to receive notifications when resources matching specific criteria are created or updated, using the FHIR Subscriptions framework. 

#### References

FHIR supports multiple [Reference](https://hl7.org/fhir/references.html) types when referencing other resources. 

Each reference type has implications for interoperability, resolution, and system behaviour. When referencing demographic resources such as Patient, PractitionerRole, Practitioner and Organization, additional considerations also apply:
- Ownership: which system is responsible for creating and maintaining the resource
- Scope: whether resources are unique per request, per organisation, or across systems
- Updates: implications of updating referenced resources in relation to existing requests

These considerations affect how references are used and handled within and across systems. AU eRequesting Release 1 does not constrain how references are used. Implementers need to be aware of the implications of how references are used within their implementation context.

