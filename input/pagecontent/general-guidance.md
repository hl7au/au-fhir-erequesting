### SNOMED CT Australian (SNOMED CT-AU) Edition
For guidance on SNOMED CT-AU in FHIR, see the guidance defined in AU Base [SNOMED CT Australian Edition](https://hl7.org.au/fhir/6.0.0/generalguidance.html#snomed-ct-australian-edition).

### AU eRequesting FHIR RESTful Interactions

AU eRequesting defines four system actors involved in the exchange of diagnostic requests: the AU eRequesting Placer, Filler, Patient and Server actors. The [Actors and Capabilities](capability-statements.html) page provides a summary of these actors and includes links to their definitions and CapabilityStatements. Each capability statement outlines the RESTful interactions supported by that actor, including `create`, `update`, `read` and `search` operations.

Figure 1 shows typical FHIR RESTful interactions between these AU eRequesting actors:

<div> 
  <img src="au-erequesting-actor-interactions.svg" alt="Typical FHIR RESTful interactions between AU eRequesting actors" style="width:100%"/>
</div>
*Figure 1: Typical FHIR RESTful interactions between AU eRequesting actors*
<br/>

### Example AU eRequesting Interaction Flow
Figure 2 shows an example of FHIR interactions between AU eRequesting actors, and demonstrates the use of ServiceRequest and Task to support the placement and tracking of pathology and imaging requests. While the diagram focuses on these coordinating resources, the associated exchange also includes other FHIR resources (e.g. Patient) that provide clinical, administrative and contextual information. The full set of profiles used to support the requests is provided on the [Profiles and Extensions](profiles-and-extensions.html) page.

<div> 
    <img src="au-erequesting-example-interaction-flow.svg" alt="Example AU eRequesting interaction flow" style="width:100%"/>
</div>
*Figure 2: Example AU eRequesting interaction flow*
<br/>

The steps illustrated in Figure 2 are summarised below:
- The AU eRequesting Placer actor creates ServiceRequest and Task resources on the AU eRequesting Server, along with associated resources that collectively represent the request.
- The AU eRequesting Filler actor searches for available Task resources to fulfil, and retrieves the associated resources that form the request.
- The AU eRequesting Filler actor updates the Task resources to reflect the fulfilment status.
- The AU eRequesting Placer actor queries the AU eRequesting Server to monitor request fulfilment status.
- The AU eRequesting Patient actor queries the AU eRequesting Server to view the details of their own requests.

### AU eRequesting Profile Relationships

The diagrams below illustrate the references between AU eRequesting profiles, as well as external profiles where applicable. They show the ServiceRequest and Task profiles, which serve as the coordinating resources, along with the profiles that supply clinical, administrative, and contextual information for an AU eRequesting request. The CommunicationRequest and Consent inlays highlight how those profiles relate to the diagnostic request profiles within the same request. The diagrams provide a simplified view and do not show all possible references. The diagrams can be clicked to view a larger version and the details for all profiles are provided on the [Profiles and Extensions](profiles-and-extensions.html) page.

**Legend:**
<table>
 <tr>
  <td style="text-align: left; vertical-align: middle; padding-right:4px;">
    <img src="au-erequesting-profile.svg" width="180" />
  </td>
  <td style="text-align: left; vertical-align: middle; padding-left:4px;">
    AU eRequesting profile.
  </td>
 </tr>
 <tr>
  <td style="text-align: left; vertical-align: middle; padding-right:4px;">
    <img src="au-erequesting-profile-abstract.svg" width="180" />
  </td>
  <td style="text-align: left; vertical-align: middle; padding-left:4px;">
    Abstract AU eRequesting profile.
  </td>
 </tr>
 <tr>
  <td style="text-align: left; vertical-align: middle; padding-right:4px;">
    <img src="other-ig-profile.svg" width="180" />
  </td>
  <td style="text-align: left; vertical-align: middle; padding-left:4px;">
    Profile from external implementation guide.
  </td>
 </tr>
 <tr>
  <td style="text-align: left; vertical-align: middle; padding-right:4px;">
    <img src="element-reference.svg" width="110" />
  </td>
  <td style="text-align: left; vertical-align: middle; padding-left:4px;">
    Profile element reference to another resource.
  </td>
 </tr>
</table>

<div>
    <a href="au-erequesting-profiles.svg" target="_blank">
     <img src="au-erequesting-profiles.svg" alt="AU eRequesting profile relationships overview" style="width:100%"/>
    </a>
</div>
<table style="width:100%; margin-top:1em;">
  <tr>
    <td style="width:58%; vertical-align:top; padding-right:4px;">
      <a href="au-erequesting-profiles-communicationrequest.svg" target="_blank">
        <img src="au-erequesting-profiles-communicationrequest.svg" alt="AU eRequesting CommunicationRequest profile relationships" style="width:100%"/>
      </a>
    </td>
    <td style="width:42%; vertical-align:top; padding-left:4px;">
      <a href="au-erequesting-profiles-consent.svg" target="_blank">
        <img src="au-erequesting-profiles-consent.svg" alt="AU eRequesting Consent profile relationships" style="width:100%"/>
      </a>
    </td>
  </tr>
</table>
*Figure 3: AU eRequesting profile relationships*

### Diagnostic Request Grouping

In AU eRequesting, grouping is applied to requests created by an AU eRequesting Placer actor. This reflects common patterns in Australia where multiple related pathology tests or imaging exams are requested in a single event.

AU eRequesting follows the [shared requisition id](https://hl7.org/fhir/R4/request.html#requisitionid) approach from the [FHIR Request pattern](https://hl7.org/fhir/R4/request.html), where multiple request resources created as part of the same ordering event share a common identifier. The Placer Group Number (PGN) is the common identifier assigned by the AU eRequesting Placer actor at the time of request creation and is recorded in either the `requisition` or `groupIdentifier` elements of resources in the group.

A single [AU eRequesting Task Group](StructureDefinition-au-erequesting-task-group.html) is used to represent and coordinate the overall group of requests. It allows the AU eRequesting Filler actor to manage the group as a single coordinated request, supporting fulfilment, progress tracking and status updates across the group.
 
Each individual requested test or exam in the group is represented using an [AU eRequesting Diagnostic Request](StructureDefinition-au-erequesting-diagnosticrequest.html), and each individual communication request is represented using an [AU eRequesting CommunicationRequest](StructureDefinition-au-erequesting-communicationrequest.html). These individual requests are paired with a corresponding Task to track the fulfilment of that request.
 
Each request will also include supporting clinical, administrative and contextual information represented using other FHIR resources (e.g. Patient). These resources form part of the overall request and may be shared across the group or be specific to individual requests. The full set of AU eRequesting profiles used to support the request is listed on the [Profiles and Extensions](profiles-and-extensions.html) page. 

 <div> 
    <img src="au-erequesting-example-request-group.svg" alt="AU eRequesting example request group" style="width:90%"/>
  </div>
*Figure 4: AU eRequesting example request group*

#### Request Group Guidance
- A task group:
  - Is used to manage the group as a single coordinated request and is implemented using [AU eRequesting Task Group](StructureDefinition-au-erequesting-task-group.html) 
  - **SHALL** always be created, including when there is only a single request for a test or exam. This ensures consistent implementation and uniform processing by the AU eRequesting Filler actor
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

It is recommended that FHIR resources exchanged as part of AU eRequesting include a human-readable narrative in the text element, consistent with the [FHIR DomainResource specification](https://hl7.org/fhir/R4/domainresource.html). When narrative is absent, a system that cannot fully interpret the structured content may misrepresent or omit the clinical intent, creating clinical safety risks. Narrative ensures that the clinical meaning is available to receiving systems, regardless of whether they process the structured content, supporting the safe and progressive adoption of structured data.

#### Transaction Bundles

In AU eRequesting, an order typically involves multiple related FHIR resources. To help ensure consistent linkage and referential integrity across these related resources, AU eRequesting Placer actors could consider using a FHIR [Bundle](https://hl7.org/fhir/R4/bundle.html) of type `transaction` to create the resources on the server as part of a single atomic transaction. This means all resources in the request are either created successfully or rejected together, which aligns with [FHIR transaction processing rules](https://hl7.org/fhir/R4/http.html#trules) and the [FHIR Request pattern](https://hl7.org/fhir/R4/request.html).

If a transaction Bundle is not used, the sequence in which resources are created to satisfy dependencies and uphold referential integrity needs to be carefully considered. This consideration is particularly important for the [AU eRequesting Task Group](StructureDefinition-au-erequesting-task-group.html), which serves as the entry point for AU eRequesting Filler actors to find and manage fulfilment tasks for the same request.

#### Workflow Event Tracking
AU eRequesting Placer, Filler, and Patient actors are likely to need to discover and monitor changes to key resources throughout the diagnostic request and fulfilment lifecycle. See the [AU eRequesting Workflow Guidance](workflow.html) page.

FHIR provides mechanisms that enable client systems to monitor resource changes and can be used track the status and progression of requests through the fulfilment workflow. These include:
- [Polling](https://hl7.org/fhir/exchanging-polling.html): clients periodically query the server using search parameters to find and track updates.
- [Subscriptions](https://hl7.org/fhir/R4/subscription.html): clients register a Subscription to receive notifications when resources matching specific criteria are created or updated, using the FHIR Subscriptions framework. 

#### References

FHIR defines several types of references, including literal, logical, and contained references. The characteristics and implications of these reference types are described in the FHIR [Resource References](https://hl7.org/fhir/R4/references.html) page.

AU eRequesting Release 1 does not constrain the choice of reference type, and implementers should be aware of the implications of the different approaches within their implementation context.

#### Re-use of Referenced Resources

Some referenced resources, such as Patient, PractitionerRole, Practitioner, and Organization, may be used more broadly than the context of a single ordering event. They may be created for the context of a request, managed for reuse within an organisation, or shared across systems. The way these resources are created or reused has implications for how they are used across implementations. Key aspects to consider are:
- Ownership: which system is responsible for creating and maintaining the resource
- Scope: whether the resource is managed for a request, within an organisation, or across systems
- Updates: how changes to the resource are managed and how those changes affect requests that already reference it


