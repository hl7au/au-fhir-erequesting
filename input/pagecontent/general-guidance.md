### Diagnostic request grouping

In AU eRequesting, grouping is applied to requests created by an AU eRequesting Placer actor. This reflects common patterns in Australia where multiple related pathology tests or imaging exams are ordered in a single event.
 
AU eRequesting follows the [shared requisition id](https://hl7.org/fhir/request.html#requisitionid) approach from the [FHIR Request pattern](https://hl7.org/fhir/request.html), where multiple request resources created as part of the same ordering event share a common group identifier. The Placer Group Number (PGN) is the shared identifier assigned by the AU eRequesting Placer actor at the time of request creation and is recorded in both the `ServiceRequest.requisition` and `Task.groupIdentifier` elements.
 
A single AU eRequesting Task Group is always included to represent and coordinate the overall order. It allows the AU eRequesting Filler actor to manage the group as a single coordinated order, supporting fulfilment, progress tracking and status updates across the group.
 
Each test or exam is represented using an AU eRequesting Diagnostic Request ServiceRequest and is paired with a corresponding AU eRequesting Task Diagnostic Request. The Task is the resource used by the AU eRequesting Filler actor to manage and track the progress and fulfilment of that individual request.
 
In addition to the ServiceRequest and Task resources, each request includes supporting clinical, administrative and contextual information represented using other FHIR resources. These resources form part of the overall request and may be shared across the group or be specific to individual requests. The full set of AU eRequesting profiles used to support this representation is listed on the [Profiles and Extensions](profiles-and-extensions.html) page. 

 <div> 
    <img src="erequesting-group.png" alt="AU eRequesting Diagnostic Request Grouping" style="width:90%"/>
  </div>
*Figure 1: AU eRequesting Diagnostic Request Grouping*

#### Diagnostic request grouping features
- A AU eRequesting Task Group is used to represent and coordinate the overall diagnostic order
- An AU eRequesting Task Group **SHALL** always be created, even when the order includes only a single test or exam. This ensures consistent implementation and uniform processing by the AU eRequesting Filler
- The AU eRequesting Task Group is assigned a Placer Group Number (PGN) by the AU eRequesting Placer to logically associate all requests in the order, and recorded in `Task.groupIdentifier`
- Each individual test or exam is:
  - Represented using a request profile derived from AU eRequesting Diagnostic Request (AU eRequesting Pathology Request or AU eRequesting Imaging Request)
  - `ServiceRequest.requisition` is populated with the Placer Group Number (PGN)
  - Optionally, assigned a `ServiceRequest.displaySequence` that reflects the visual order or sequence of requests within the group as they appear on a paper request form
  - Paired with an AU eRequesting Task Diagnostic Request to support fulfilment identification and actioning by the AU eRequesting Filler
- Each AU eRequesting Task Diagnostic Request:
  - Uses `Task.focus` to reference the specific test or exam request (AU eRequesting Pathology Request or AU eRequesting Imaging Request)
  - Uses `Task.partOf` to reference the AU eRequesting Task Group, linking it to the overall coordinated order
  - Is assigned the Placer Group Number (PGN) in `Task.groupIdentifier`
- Implementers can distinguish between eRequesting Task Group and AU eRequesting Task Diagnostic Request resources using `Task.meta.tag` code

### Implementation considerations

This section highlights aspects for implementers to consider when designing and developing AU eRequesting solutions.

#### Human-readable narrative

It is recommended that FHIR resources exchanged as part of AU eRequesting include a human-readable narrative in the text element, in line with the best practice guideline provided in the [FHIR DomainResource specification](https://hl7.org/fhir/R4/domainresource.html).

When a resource lacks narrative, only systems that fully understand the structured content can safely display it to a user. Including a human-readable narrative strengthens the ecosystem and supports more flexible use of the data across different systems.

#### Transaction bundles

In AU eRequesting, an order typically involves multiple related FHIR resources. To help ensure consistent linkage and referential integrity across these related resources, AU eRequesting Placers could consider using a FHIR [Bundle](https://hl7.org/fhir/R4/bundle.html) of type `transaction` to create the resources on the server as part of a single atomic transaction. This means all resources in the order are either created successfully or rejected together which aligns with [FHIR transaction processing rules](https://hl7.org/fhir/R4/http.html#trules) and the [FHIR Request pattern](https://hl7.org/fhir/R4/request.html).

If a transaction Bundle is not used, the sequence in which resources are created to satisfy dependencies and uphold referential integrity needs to be carefully considered. This consideration is particularly important for the Task Group, which serves as the entry point for AU eRequesting Fillers to find and manage fulfilment tasks for the same order.

#### Workflow event tracking
AU eRequesting Placers, Fillers, and Patients (referred to here as clients) are likely to need to discover and monitor changes to key resources throughout the diagnostic requesting and fulfilment lifecycle. Specifically, tracking changes to the AU eRequesting Task Group, which serves as the primary workflow and event resource, can support the following scenarios:
- The `Task.status` changes to "requested" or "cancelled".
- The `Task.meta.tag` contains a coding that designates the Task as a "fulfilment-task-group", identifying it as an AU eRequesting Task Group resource.
- A Task directed to a specific Organization via `Task.owner`, typically identified by its HPI-O identifier.

Clients can then perform search requests, including referenced resources, to retrieve the entire details of the order (or the full set of related resources that make up the order). FHIR provides mechanisms that enable clients to monitor resource changes and track the status and progression of requests through the fulfilment workflow. These include:
- Polling: clients periodically query the Server using search parameters to find and track updates.
- Subscriptions: clients register a Subscription to receive notifications when resources matching specific criteria are created or updated, using the [FHIR Subscriptions](https://hl7.org/fhir/R4/subscription.html) framework. 

#### References

FHIR supports multiple types of references when referencing other resources. These include:
- Literal references – direct references using a FHIR resource type and id (e.g. "reference": "Patient/123")
- Logical references – references using business identifiers without a FHIR resource id (e.g. using the identifier element)
- Contained resources – where the referenced resource is included inline using the contained element

Each type has implications for interoperability, resolution, and system behaviour. When referencing demographic resources such as  Patient, PractitionerRole, Practitioner and  Organization, additional considerations also apply:
- Ownership – which system is responsible for creating and maintaining the resource
- Scope – whether resources are unique per request, per organisation, or across systems
- Updates – implications of updating referenced resources in relation to existing requests

These considerations affect how references are used and handled within and across systems. AU eRequesting Release 1 does not constrain how references are used. Implementers need to be aware of the implications of how references are used within their implementation context.

For further information on references, refer to the FHIR guidance on [References](https://hl7.org/fhir/references.html).