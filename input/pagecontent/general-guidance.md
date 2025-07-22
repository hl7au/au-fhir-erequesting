### Diagnostic request grouping

**check page for updates**

In AU eRequesting, grouping is applied to diagnostic requests created by an AU eRequesting Placer actor. This reflects common patterns in Australia, where multiple related pathology tests or imaging exams are ordered in a single event.

AU eRequesting follows the [shared requisition id pattern](https://hl7.org/fhir/request.html#requisitionid) from the [FHIR Request pattern](https://hl7.org/fhir/request.html), where multiple request resources created as part of the same ordering event share a common requisition id/group identifier. In this context, the Placer Group Number (PGN) is used as the shared identifier, assigned by the AU eRequesting Placer actor at the time of request creation.

A Task Group is always included to represent and coordinate the overall diagnostic order. It allows the AU eRequesting Filler actor to manage the group as a single order, supporting fulfilment, progress tracking and status updates across the group.

Each diagnostic request is represented as a ServiceRequest and is paired with a corresponding Diagnostic Request Task, which allows the AU eRequesting Filler actor to manage and track fulfilment of that individual request.

 <div> 
    <img src="erequesting-group.png" alt="AU eRequesting Diagnostic Request Grouping" style="width:90%"/>
  </div>
*Figure 1: AU eRequesting Diagnostic Request Grouping*

#### Diagnostic request grouping features

**check page for updates**

- A group **SHALL** always be established, even when the order contains only a single diagnostic request. This ensures implementation consistency and enables uniform fulfilment processing
- Each diagnostic request is represented as a ServiceRequest, one for each test or exam, and is paired with a corresponding Task for fulfilment tracking
- A single group FHIR Task resource  is the root of the entire request structure, or web of resources 
- A single group FHIR Task resource has one or several children FHIR Task resources
- Each child Task references a single FHIR ServiceRequest resource
- Implementers can distinguish between group and child Task resources based on their 'Task.meta.tag' codes 
- Tasks for diagnostic requests:
    - Uses `Task.focus` to reference its associated ServiceRequest
    - Uses `Task.partOf` to reference the Task Group, which represents the overall diagnostic order and is used by the AU eRequesting Filler actor for managing fulfilment tasks for the same order.
- Placer Group Number (PGN) identifier is used to logically associate all related requests and tasks that were created as part of the same request order:
    - `ServiceRequest.requisition` = Placer Group Number (PGN) identifier
    - `Task.groupIdentifier` = Placer Group Number (PGN) identifier
- The `displaySequence` element on ServiceRequest reflects the visual order or sequence of requests within the group as they appear on a paper request form

### Implementation considerations

This section highlights aspects for implementers to consider when designing and developing AU eRequesting solutions.

#### Human-readable narrative

It is recommended that FHIR resources exchanged as part of AU eRequesting include a human-readable narrative in the text element, in line with the best practice guideline provided in the [FHIR DomainResource specification](https://hl7.org/fhir/R4/domainresource.html).

When a resource lacks narrative, only systems that fully understand the structured content can safely display it to a user. Including a human-readable narrative strengthens the ecosystem and supports more flexible use of the data across different systems.

#### Transaction bundles

In AU eRequesting, an order typically involves multiple related FHIR resources. To help ensure consistent linkage and referential integrity across these related resources, AU eRequesting Placers could consider using a FHIR [Bundle](https://hl7.org/fhir/R4/bundle.html) of type transaction to create the resources on the server as part of a single atomic transaction. This means all resources in the order are either created successfully or rejected together which aligns with [FHIR transaction processing rules](https://hl7.org/fhir/R4/http.html#trules) and the [FHIR Request pattern](https://hl7.org/fhir/R4/request.html).

If a transaction Bundle is not used, the sequence in which resources are created to satisfy dependencies and uphold referential integrity needs to be carefully considered. This consideration is particularly important for the Task Group, which serves as the entry point for AU eRequesting Fillers to find and manage fulfilment tasks for the same order.

#### Workflow event tracking
AU eRequesting Placers, Fillers, and Patients (referred to here as clients) are likely to need to discover and monitor changes to key resources throughout the diagnostic requesting and fulfilment lifecycle. Specifically, tracking changes to the Task Group resource, which serves as the primary workflow and event resource, can support the following scenarios:
- The `Task.status` changes to "requested" or "cancelled".
- The `Task.meta.tag` contains a coding that designates the Task as a "fulfilment-task-group", identifying it as an AU eRequesting Task Group resource.
- A Task directed to a specific Organization via `Task.owner`, typically identified by its HPI-O identifier.

Clients can then perform Search requests, including referenced resources, to retrieve the entire details of the order (alt: full set of related resources that make up the order). FHIR provides mechanisms that enable clients to monitor resource changes and track the status and progression of requests through the fulfilment workflow. These include:
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