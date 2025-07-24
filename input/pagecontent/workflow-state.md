In AU eRequesting, a [workflow](https://hl7.org/fhir/R4/workflow.html) pattern using the ServiceRequest and Task resources are used to separate the diagnostic request details from its fulfilment. The ServiceRequest represents the request initiated by placers, while the associated Task is used by fillers for tracking and communicating the progress of the request through the fulfilment workflow. 

The current state of a ServiceRequest or Task resource within its defined lifecycle or state machine is represented by the code assigned to the status element of the resource. The `ServiceRequest.status` reflects the placer’s overall view of the diagnostic request's status, whereas the `Task.status` tracks and conveys the filler’s fulfilment status, that is, the progress of fulfilling the diagnostic request.

This page provides guidance on managing workflow states in AU eRequesting designed to promote interoperability. It covers Task state transitions, the use of supporting elements `Task.statusReason`, `Task.businessStatus`, and `ServiceRequest.extension:statusReason` to provide additional workflow context, and the relationship between Task and ServiceRequest status codes.

### AU eRequesting Task Status Workflow

This section describes how the AU eRequesting Task Diagnostic Request profile is used to track the fulfilment of pathology or imaging diagnostic requests in the context of community-based care in Australia. This guidance builds on the [Task state machine](https://hl7.org/fhir/R4/task.html#statemachine), where states are encoded using status codes specified in the AU eRequesting Task Status value set. 

#### Task Status Definitions

The [AU eRequesting Task Status](ValueSet-au-erequesting-task-status.html) value set specifies a constrained subset of Task status codes used in the Australian eRequesting context.

#### Task State Transitions

The Task state (status) transitions described here reflect the lifecycle of a Task within AU eRequesting workflows for community-based pathology and imaging. These state transition are intended to guide implementers in supporting consistent and coordinated workflow behaviour. While implementation flexibility can exist to meet business needs and constraints, supporting the suggested states and transitions will help promote interoperability and alignment across systems.

The business rules that define which actors or system roles can modify or trigger changes to a Task’s status are not currently considered within the scope of AU eRequesting Release 1. However, guidance on aligning `ServiceRequest.status` and `Task.status` is provided in [Relationship between `ServiceRequest.status` and `Task.status`](#relationship-between-servicerequeststatus-and-taskstatus).
<br/>

<figure style="background:white;">
  <img src="task-state-machine.svg" alt="AU eRequesting Task State Transitions Diagram" style="max-width:100%;"/>
  <br/>
  <figcaption><em>Figure 1: AU eRequesting Task State Transitions</em></figcaption>
</figure>
<br/>


The AU eRequesting Task State Transitions table below supplements the diagrammatic view above by providing Task status code definitions, implementation guidance for AU eRequesting workflows, and lists the allowed state transitions.


<table border="1">
  <thead>
    <tr>
      <th colspan="4" style="text-align:center; padding:6px; font-weight:bold; font-size:1.1em;">
        AU eRequesting Task State Represented by <code>Task.status</code> and Allowed Transitions
      </th>
    </tr>
    <tr>
      <th style="width:15%; padding:6px;">State</th>
      <th style="width:45%; padding:6px;">Implementation Guidance for AU eRequesting Workflows</th>
      <th style="width:15%; padding:6px;">Allowed Transitions To State(s)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>requested</td>
      <td>
        <ul>
          <li>Tasks start in a "requested" state, indicating a formal request for a diagnostic service that is ready to be fulfilled by a filler.</li>
        </ul>
      </td>
      <td>received<br> accepted<br> rejected<br> cancelled</td>
    </tr>
    <tr>
      <td>received</td>
      <td>
        <ul>
          <li>Indicates that the task has been acknowledged and claimed by a filler.</li>
          <li>Some workflows may not distinguish between "received" and "accepted". In such cases, implementations may transition directly from "requested" to "accepted".</li>
        </ul>
      </td>
      <td>accepted<br> rejected<br> cancelled</td>
    </tr>
    <tr>
      <td>accepted</td>
      <td>
        <ul>
          <li>Indicates that a filler has agreed to perform the task.</li>
        </ul>
      </td>
      <td>in-progress<br> cancelled</td>
    </tr>
    <tr>
      <td>rejected</td>
      <td>
        <ul>
          <li>Indicates that the filler has declined to perform the task before beginning any work.</li>
          <li>Use the optional <code>Task.statusReason</code> to provide explanatory context for "rejected".</li>
        </ul>
      </td>
      <td>N/A (typically a terminal state)</td>
    </tr>
    <tr>
      <td>cancelled</td>
      <td>
        <ul>
          <li>Indicates termination of the task before completion, usually due to an external decision or changed circumstances, rather than an error condition.</li>
          <li>Example scenarios for transitioning to "cancelled":
            <ul>
              <li>The placer cancels the task.</li>
              <li>The task is cancelled because it has been claimed by an alternative filler.</li>
            </ul>
          </li>
          <li>A task cannot be "cancelled" once it is "in-progress".</li>
          <li>While the intention of a cancelled task is that all work authorised by the task is expected to cease, this may not always be possible. Fulfilment activity may still proceed, and a task output may be generated, even though the task remains in a "cancelled" state.</li>
          <li>Use the optional <code>Task.statusReason</code> to provide explanatory context for "cancelled".</li>
        </ul>
      </td>
      <td>N/A (typically a terminal state)</td>
    </tr>
    <tr>
      <td>in-progress</td>
      <td>
        <ul>
          <li>Once the filler initiates activity on the task, the task transitions to the "in-progress" state, indicating that work is being performed.</li>
          <li>A task cannot be cancelled once it is "in-progress".</li>
        </ul>
      </td>
      <td>on-hold<br> completed<br> failed</td>
    </tr>
    <tr>
      <td>on-hold</td>
      <td>
        <ul>
          <li>Use the optional <code>Task.statusReason</code> to provide explanatory context for "on-hold".</li>
        </ul>
      </td>
      <td>in-progress</td>
    </tr>
    <tr>
      <td>completed</td>
      <td>
        <ul>
          <li>Once the task has been executed, it transitions to "completed".</li>
        </ul>
      </td>
      <td>N/A (typically a terminal state)</td>
    </tr>
    <tr>
      <td>failed</td>
      <td>
        <ul>
          <li>Indicates that task execution was attempted but could not be completed due to an error or issue.</li>
          <li>Example scenarios for transitioning to "failed":
            <ul>
              <li>Patient did not attend.</li>
              <li>Sample was insufficient.</li>
            </ul>
          </li>
          <li>Use the optional <code>Task.statusReason</code> to provide explanatory context for "failed".</li>
        </ul>
      </td>
      <td>N/A (typically a terminal state)</td>
    </tr>
  </tbody>
</table>
<br/> 


#### Use and relationship between `Task.status`, `Task.statusReason` and `Task.businessStatus`

- Use `Task.status` to represent the current state of the Task. These states are encoded using codes from the [AU eRequesting Task Status](ValueSet-au-erequesting-task-status.html) value set ([required](https://hl7.org/fhir/R4/terminologies.html#required) binding).
- Use the optional `Task.statusReason` to explain why the Task transitioned to states such as "rejected", "cancelled", "on-hold", or "failed", providing context for deviations from the expected workflow (or "happy path").
  - There is no defined value set for `Task.statusReason`. When used, this element is expected to carry meaningful data suitable for sharing with other ecosystem participants, including a human-readable description in `Task.statusReason.text`.
- Use the optional `Task.businessStatus` to convey business-specific substates that provide additional workflow context within a broader `Task.status` code. 
  - For example, values assigned to `Task.businessStatus` such as "collected", "acquired", or "preliminary" from the [AU eRequesting Task Business Status](ValueSet-au-erequesting-task-businessstatus.html) value set ([extensible](https://hl7.org/fhir/R4/terminologies.html#extensible) binding) can indicate important workflow milestones while the `Task.status` remains "in-progress". 
  - Since `Task.businessStatus` serves to augment `Task.status` when further categorisation is useful, `Task.businessStatus` may be omitted if no further categorisation is needed.
  - The table in this section outlines the recommended mapping between `Task.businessStatus` and `Task.status`, indicating the relationship by which a Task business status can convey a business-specific substate that provides additional workflow context within a broader Task status. Implementers are encouraged to adopt these mappings to support interoperability, although conformance is not currently enforced. These mappings may be formalised in a future release of this IG.
- When updating the `Task.status`, it is recommended to review and update the `Task.statusReason` and `Task.businessStatus` as appropriate to maintain alignment with the new status. If previously set values are no longer relevant, they are expected to be cleared to avoid propagating outdated or misleading information beyond the context in which they were originally set.

The following table outlines the AU eRequesting Task Business Status codes and their relationship to Task Status codes.

<table border="1">
  <thead>
    <tr>
      <th style="width:10%; padding:6px;">Context</th>
      <th style="width:25%; padding:6px;">AU eRequesting Task Business Status codes for <code>Task.businessStatus</code></th>
      <th style="width:40%; padding:6px;">AU eRequesting Task Business Status code description</th>
      <th style="width:25%; padding:6px;">Relationship to Task Status codes for <code>Task.status</code></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td rowspan="7" style="vertical-align: top;">Shared (Pathology and Radiology)</td>
      <td>booked</td>
      <td>The service has been booked.</td>
      <td>accepted</td>
    </tr>
    <tr>
      <td>claimed</td>
      <td>The service request has been claimed by an alternative filler.</td>
      <td>cancelled</td>
    </tr>
    <tr>
      <td>user-cancelled</td>
      <td>The service request has been cancelled by the placer.</td>
      <td>cancelled</td>
    </tr>
    <tr>
      <td>cancel-handled</td>
      <td>The cancellation has been handled by the filler.</td>
      <td>cancelled</td>
    </tr>
    <tr>
      <td>data-issue</td>
      <td>A rejected fulfilment due to an issue with the request data.</td>
      <td>rejected</td>
    </tr>
    <tr>
      <td>preliminary</td>
      <td>A preliminary result has been completed.</td>
      <td>in-progress</td>
    </tr>
    <tr>
      <td>addendum</td>
      <td>An addendum created for reporting.</td>
      <td>completed</td>
    </tr>
    <tr>
      <td>Pathology</td>
      <td>collected</td>
      <td>The specimen has been collected in lab collection centre.</td>
      <td>in-progress</td>
    </tr>
    <tr>
      <td>Pathology</td>
      <td>in-lab</td>
      <td>The specimen is being processed in the pathology lab.</td>
      <td>in-progress</td>
    </tr>
    <tr>
      <td>Radiology</td>
      <td>acquired</td>
      <td>The image has been acquired at radiology service.</td>
      <td>in-progress</td>
    </tr>
  </tbody>
</table>
<br/> 


#### Relationship between AU eRequesting Task Group `Task.status` and AU eRequesting Task Diagnostic Request `Task.status`
The group task is considered a central component of the AU eRequesting data architecture for fillers to discover and manage fulfilment Task(s) for the same order, and to retrieve their focus diagnostic request and related resources. For this reason, the status of the group task is particularly important — changes to other resources, such as ServiceRequest.status, cannot be reliably acted on by the filler unless those changes are also reflected in the status of the group task.

Hence, the status of an AU eRequesting Task Group is expected to reflect the most appropriate status among its individual AU eRequesting Task Diagnostic Request(s); however, at present, there are no enforced rules.

### AU eRequesting Diagnostic Request Status

#### Request Status Definitions

The [AU eRequesting RequestStatus](ValueSet-au-erequesting-request-status.html) value set specifies a constrained subset of ServiceRequest status codes used in the Australian eRequesting context.

#### Request States

In AU eRequesting workflows for community-based pathology and imaging, the state (status) of an AU eRequesting Diagnostic Request is managed by the placer.

The AU eRequesting Request States for ServiceRequest.status table below provides Request status code definitions, and implementation guidance for AU eRequesting workflows.

<table border="1">
  <thead>
    <tr>
      <th colspan="3" style="text-align:center; padding:6px; font-weight:bold; font-size:1.1em;">
        AU eRequesting Request States Represented by <code>ServiceRequest.status</code>
      </th>
    </tr>
    <tr>
      <th style="width:15%; padding:6px;">State</th>
      <th style="width:55%; padding:6px;">Implementation Guidance for AU eRequesting Workflows</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>active</td>
      <td>
        <ul>
          <li>Diagnostic requests start in an "active" state.</li>
          <li>Indicates a formal request for a diagnostic service.</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td>on-hold</td>
      <td>
        <ul>
          <li>Use the optional <code>ServiceRequest.extension:statusReason</code> to provide explanatory context.
            <ul>
              <li>Given there is no defined value set for `ServiceRequest.extension:statusReason`, when used, include meaningful data with a human-readable description in `ServiceRequest.extension:statusReason.text`.</li>
            </ul>
          </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td>revoked</td>
      <td>
        <ul>
          <li>Indicates the diagnostic request was withdrawn or cancelled by the placer before it was fulfilled.</li>
          <li>Use the optional <code>ServiceRequest.extension:statusReason</code> to provide explanatory context.
            <ul>
              <li>Given there is no defined value set for `ServiceRequest.extension:statusReason`, when used, include meaningful data with a human-readable description in `ServiceRequest.extension:statusReason.text`.</li>
            </ul>
          </li>
          <li>The placer is expected to transition the corresponding task to "cancelled".</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td>completed</td>
      <td>
        <ul>
          <li>Indicates the diagnostic service has been performed and task output provided.</li>
          <li>When the filler sets <code>Task.status</code> to "completed", the placer may update <code>ServiceRequest.status</code> accordingly.</li>
          <li>Alternatively, the update may occur when the expected output (e.g., results or reports) is received.</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td>entered-in-error</td>
      <td>
        <ul>
          <li>Use is recommended only if no activity based on the request has occurred.</li>
          <li>Example scenarios for transitioning to "entered-in-error":
            <ul>
              <li>Wrong patient selected during order entry.</li>
              <li>Test ordered in error.</li>
            </ul>
          </li>
          <li>Use the optional <code>ServiceRequest.extension:statusReason</code> to provide explanatory context.
            <ul>
              <li>Given there is no defined value set for `ServiceRequest.extension:statusReason`, when used, include meaningful data with a human-readable description in `ServiceRequest.extension:statusReason.text`.</li>
            </ul>
          </li>
          <li>The placer is expected to transition the corresponding task to "cancelled".</li>
        </ul>
      </td>
    </tr>
  </tbody>
</table>
<br/> 


#### Use and relationship between `ServiceRequest.status` and `ServiceRequest.extension:statusReason`

- Use `ServiceRequest.status` to represent the current state of the AU eRequesting Diagnostic Request. These states are encoded using codes from the [AU eRequesting RequestStatus](ValueSet-au-erequesting-request-status.html) value set ([required](https://hl7.org/fhir/R4/terminologies.html#required) binding).
- `ServiceRequest.extension:statusReason` provides optional explanatory context about why the request is in that particular state. It is not typically required for normal progression through the workflow (e.g., from "active" to "completed"). Instead, it is intended to provide business-relevant context in exception scenarios, such as when a request is placed "on-hold", "revoked", or marked "entered-in-error".
  - There is no defined value set for `ServiceRequest.extension:statusReason`. When used, this element is expected to carry meaningful data suitable for sharing with other ecosystem participants, including a human-readable description in `ServiceRequest.extension:statusReason.text`.

#### Relationship between `ServiceRequest.status` and `Task.status`

- While the AU eRequesting Diagnostic Request and AU eRequesting Task Diagnostic Request are loosely coupled, in practice, changes in `ServiceRequest.status` are expected, where appropriate, to be reflected in the corresponding `Task.status` to maintain alignment across resources involved in the workflow. Placers are responsible for managing this alignment, as changes in the diagnostic request status often require corresponding updates in fulfilment management. Failure to maintain this alignment can lead to workflow inconsistencies, such as orphaned tasks or misaligned expectations between placers and fillers.
- Some typical business rules on these status relationships are outlined in the [Request States](#request-states) table above.