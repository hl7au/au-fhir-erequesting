### AU eRequesting Task Status Workflow

AU eRequesting uses a ServiceRequest/Task pattern, where the Task tracks the fulfilment workflow of the ServiceRequest. This section describes how the AU eRequesting Task Diagnostic Request profile is used to track the fulfilment of pathology or imaging diagnostic requests in the context of community-based care in Australia. This guidance builds on the [Task state machine](https://hl7.org/fhir/R4/task.html#statemachine).

#### Task State Transitions Overview

The state (status) transitions described here reflect the lifecycle of a Task within AU eRequesting workflows for community-based pathology and imaging.<br>
Not all states (specifically "received", "rejected", and "on-hold"), and not all transitions will be supported in all workflows. Implementers must determine which states and transitions are relevant to their clinical and administrative workflows.<br>
Business rules that define which actors or system roles are permitted to modify a Task’s status, or to trigger such modifications, are outside the scope of this IG. However, guidance on the coordination between `ServiceRequest.status` and `Task.status` are discussed in the section [ServiceRequest.status Relationship to Task.status](#servicerequeststatus-relationship-to-taskstatus).

#### Task Status Definitions

The [AU eRequesting Task Status](https://build.fhir.org/ig/hl7au/au-fhir-erequesting/ValueSet-au-erequesting-task-status.html) value set specifies a constrained subset of Task status values used in the Australian eRequesting context, drawn from the required [TaskStatus](https://hl7.org/fhir/R4/valueset-task-status.html) value set.

#### Task State Transitions Diagram

<div style="background:white"> 
  <img src="task-state-machine.svg" alt="AU eRequesting Task State Transitions Diagram" style="max-width:100%"/>
</div>
*Figure 1: AU eRequesting Task State Transitions Diagram*
<br/>

#### Task State Transitions Table

The Task State Transitions table below supplements the diagrammatic view above by providing code definitions, implementation guidance for AU eRequesting workflows, and lists the allowed state transitions.

<table border="1">
  <thead>
    <tr>
      <th colspan="4" style="text-align:center; padding:6px; font-weight:bold; font-size:1.1em;">
        AU eRequesting Task State Transitions for <code>Task.status</code>
      </th>
    </tr>
    <tr>
      <th style="width:15%"; padding:6px;>From State</th>
      <th style="width:25%"; padding:6px;>Code Definition</th>
      <th style="width:45%"; padding:6px;>Implementation Guidance for AU eRequesting Workflows</th>
      <th style="width:15%"; padding:6px;>Allowed Transitions To State(s)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>requested</strong></td>
      <td>The task is ready to be acted upon and action is sought.</td>
      <td>
        <ul>
          <li>Tasks start in a "requested" state, indicating a formal request for a diagnostic service that is ready to be fulfilled by a Filler.</li>
        </ul>
      </td>
      <td>received<br> accepted<br> rejected<br> cancelled</td>
    </tr>
    <tr>
      <td><strong>received</strong></td>
      <td>A potential performer has claimed ownership of the task and is evaluating whether to perform it.</td>
      <td>
        <ul>
          <li>Task acknowledged by the Filler.</li>
          <li>Some workflows may not distinguish between "received" (acknowledged) and "accepted" (agreed to perform the task). In such cases, implementations may transition directly from "requested" to "accepted".</li>
        </ul>
      </td>
      <td>accepted<br> rejected<br> cancelled</td>
    </tr>
    <tr>
      <td><strong>accepted</strong></td>
      <td>The potential performer has agreed to execute the task but has not yet started work.</td>
      <td>
        <ul>
          <li>The Filler has agreed to perform the task.</li>
        </ul>
      </td>
      <td>in-progress<br> cancelled</td>
    </tr>
    <tr>
      <td><strong>rejected</strong></td>
      <td>The potential performer who claimed ownership of the task has decided not to execute it prior to performing any action.</td>
      <td>
        <ul>
          <li>The Filler has declined to perform the task before beginning any work.</li>
          <li>Use the optional <code>Task.statusReason</code> to provide explanatory context for "rejected".</li>
        </ul>
      </td>
      <td>N/A (typically a terminal state)</td>
    </tr>
    <tr>
      <td><strong>cancelled</strong></td>
      <td>The task was not completed.</td>
      <td>
        <ul>
          <li>Indicates termination of the task before completion, usually due to an external decision or changed circumstances, rather than an error condition.</li>
          <li>Example scenarios for transitioning to "cancelled":
            <ul>
              <li>The Placer cancels the task.</li>
              <li>The task is cancelled because it has been claimed by an alternative Filler.</li>
            </ul>
          </li>
          <li>A task cannot be "cancelled" once it is "in-progress".</li>
          <li>While the intention of a cancelled task is that all work authorised by the task should cease, this may not always be possible. Fulfilment activity may still proceed, and a task output may be generated, even though the task remains in a "cancelled" state.</li>
          <li>Use the optional <code>Task.statusReason</code> to provide explanatory context for "cancelled".</li>
        </ul>
      </td>
      <td>N/A (typically a terminal state)</td>
    </tr>
    <tr>
      <td><strong>in-progress</strong></td>
      <td>The task has been started but is not yet complete.</td>
      <td>
        <ul>
          <li>Once the Filler initiates activity on the task, the task transitions to the "in-progress" state, indicating that work is being performed.</li>
          <li>A Task cannot be cancelled once it is "in-progress".</li>
        </ul>
      </td>
      <td>on-hold<br> completed<br> failed</td>
    </tr>
    <tr>
      <td><strong>on-hold</strong></td>
      <td>The task has been started but work has been paused.</td>
      <td>
        <ul>
          <li>Use the optional <code>Task.statusReason</code> to provide explanatory context for "on-hold".</li>
        </ul>
      </td>
      <td>in-progress</td>
    </tr>
    <tr>
      <td><strong>completed</strong></td>
      <td>The task has been completed.</td>
      <td>
        <ul>
          <li>Once the task has been executed, it transitions to "completed".</li>
        </ul>
      </td>
      <td>N/A (typically a terminal state)</td>
    </tr>
    <tr>
      <td><strong>failed</strong></td>
      <td>The task was attempted but could not be completed due to some error.</td>
      <td>
        <ul>
          <li>Execution was attempted but did not succeed.</li>
          <li>Example scenarios for transitioning to "failed":
            <ul>
              <li>Patient did not attend.</li>
              <li>Sample was insufficient.</li>
            </ul>
          </li>
          <li>A task cannot be "cancelled" once it is "in-progress".</li>
          <li>While the intention of a cancelled task is that all work authorised by the task should cease, this may not always be possible. Fulfilment activity may still proceed, and a task output may be generated, even though the task remains in a "cancelled" state.</li>
          <li>Use the optional <code>Task.statusReason</code> to provide explanatory context for "failed".</li>
        </ul>
      </td>
      <td>N/A (typically a terminal state)</td>
    </tr>
  </tbody>
</table>


#### Boundaries and Relationships of `Task.status` to `Task.statusReason` and `Task.businessStatus`

- Use `Task.status` to represent the current state of the Task.
- When a `Task.status` is updated, the associated `Task.statusReason` and `Task.businessStatus` should also be reviewed and updated as appropriate to maintain alignment with the new status. If these elements are no longer relevant, they should be cleared to avoid propagating outdated or misleading information beyond the context in which they were originally set.

##### `Task.statusReason`

- Use the optional `Task.statusReason` to provide explanatory context for transitions to states such as "rejected", "failed", or "cancelled".

##### `Task.businessStatus`

- `Task.businessStatus` captures business-specific nuances or substates that provide additional context to the overall `Task.status`. For interoperability, it is intended to surface meaningful, workflow-specific substates that offer value to the placer, patient, or other interested parties - such as improved transparency or additional tracking information. In other words, `Task.businessStatus` serves to augment `Task.status` when further categorisation is useful. If no further categorisation is needed, `Task.businessStatus` may be omitted.
  - For example, `Task.businessStatus` values like "collected", "acquired", or "preliminary" can indicate important workflow milestones while the `Task.status` remains "in-progress".
- At present, there are no enforced rules linking `Task.businessStatus` codes to `Task.status` codes. However, the expected relationships are outlined in the table below to guide implementation. Implementers are encouraged to adopt these patterns to support interoperability, although conformance is not currently enforced. This mapping may be formalised through invariants in future releases of this IG.

##### Table: AU eRequesting Task Business Status Codes and Their Relationship to Task Status Codes

<table border="1">
  <thead>
    <tr>
      <th style="width:10%; padding:6px;">Context</th>
      <th style="width:25%; padding:6px;">AU eRequesting Task Business Status Codes for <code>Task.businessStatus</code></th>
      <th style="width:40%; padding:6px;">Definition</th>
      <th style="width:25%; padding:6px;">Relationship to AU eRequesting Task Status Codes for <code>Task.status</code></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td rowspan="7" style="vertical-align: top;">Shared (Pathology and Radiology)</td>
      <td><strong>booked</strong></td>
      <td>Service has been booked.</td>
      <td><strong>accepted</strong></td>
    </tr>
    <tr>
      <td><strong>claimed</strong></td>
      <td>Service request has been claimed by an alternative filler.</td>
      <td><strong>cancelled</strong></td>
    </tr>
    <tr>
      <td><strong>user-cancelled</strong></td>
      <td>Service request has been cancelled by the placer.</td>
      <td><strong>cancelled</strong></td>
    </tr>
    <tr>
      <td><strong>cancelled-handled</strong></td>
      <td>Cancellation has been handled by the filler.</td>
      <td><strong>cancelled</strong></td>
    </tr>
    <tr>
      <td><strong>data-issue</strong></td>
      <td>Rejected fulfilment due to an issue with the request data.</td>
      <td><strong>rejected</strong></td>
    </tr>
    <tr>
      <td><strong>preliminary</strong></td>
      <td>Preliminary result completed.</td>
      <td><strong>in-progress</strong></td>
    </tr>
    <tr>
      <td><strong>addendum</strong></td>
      <td>Addendum created for reporting.</td>
      <td><strong>completed</strong></td>
    </tr>
    <tr>
      <td>Pathology</td>
      <td><strong>collected</strong></td>
      <td>Specimen has been collected in lab collection centre.</td>
      <td><strong>in-progress</strong></td>
    </tr>
    <tr>
      <td>Pathology</td>
      <td><strong>in-lab</strong></td>
      <td>Specimen is being processed in the pathology lab.</td>
      <td><strong>in-progress</strong></td>
    </tr>
    <tr>
      <td>Radiology</td>
      <td><strong>acquired</strong></td>
      <td>Image has been acquired at radiology service.</td>
      <td><strong>in-progress</strong></td>
    </tr>
  </tbody>
</table>

#### AU eRequesting Task Group `Task.status` Relationship to AU eRequesting Task Diagnostic Request `Task.status`

- The status of an AU eRequesting Task Group should reflect the lowest (most incomplete) status among its individual AU eRequesting Task Diagnostic Request(s); however, at present, there are no enforced rules.

### AU eRequesting Diagnostic Request Status

#### Request States Overview

In AU eRequesting workflows for community-based pathology and imaging, the state (status) of a Diagnostic Request is managed by the Placer.

#### Request States Table

The [AU eRequesting RequestStatus](https://build.fhir.org/ig/hl7au/au-fhir-erequesting/ValueSet-au-erequesting-request-status.html) value set specifies a constrained subset of ServiceRequest status values used in the Australian eRequesting context, drawn from the required [RequestStatus](https://hl7.org/fhir/R4/valueset-request-status.html) value set.

The Diagnostic Request State table below provides code definitions, and implementation guidance for AU eRequesting workflows.

<table border="1">
  <thead>
    <tr>
      <th colspan="3" style="text-align:center; padding:6px; font-weight:bold; font-size:1.1em;">
        AU eRequesting Request States for <code>ServiceRequest.status</code>
      </th>
    </tr>
    <tr>
      <th style="width:15%; padding:6px;">State</th>
      <th style="width:30%; padding:6px;">Code Definition</th>
      <th style="width:55%; padding:6px;">Implementation Guidance for AU eRequesting Workflows</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>active</strong></td>
      <td>The request is in force and ready to be acted upon.</td>
      <td>
        <ul>
          <li>Diagnostic requests start in an "active" state.</li>
          <li>Indicates a formal request for a diagnostic service.</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td><strong>on-hold</strong></td>
      <td>The request (and any implicit authorization to act) has been temporarily withdrawn but is expected to resume in the future.</td>
      <td>
        <ul>
          <li>Use the optional <code>ServiceRequest.extension:statusReason</code> to provide explanatory context.</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td><strong>revoked</strong></td>
      <td>The request (and any implicit authorization to act) has been terminated prior to the known full completion of the intended actions. No further activity should occur.</td>
      <td>
        <ul>
          <li>Indicates the diagnostic request was withdrawn or cancelled by the Placer before it was fulfilled.</li>
          <li>Use the optional <code>ServiceRequest.extension:statusReason</code> to explain the revocation.</li>
          <li>The Placer should transition the corresponding task to "cancelled".</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td><strong>completed</strong></td>
      <td>The activity described by the request has been fully performed. No further activity will occur.</td>
      <td>
        <ul>
          <li>Indicates the diagnostic service has been performed and task output provided.</li>
          <li>When the Filler sets <code>Task.status</code> to "completed", the Placer may update <code>ServiceRequest.status</code> accordingly.</li>
          <li>Alternatively, the update may occur when the expected output (e.g., results or reports) is received.</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td><strong>entered-in-error</strong></td>
      <td>This request should never have existed and should be considered 'void'. (If real-world activity has occurred, use <strong>revoked</strong> instead.)</td>
      <td>
        <ul>
          <li>Should only be used if no activity based on the request has occurred.</li>
          <li>Example scenarios for transitioning to "entered-in-error":
            <ul>
              <li>Wrong patient selected during order entry.</li>
              <li>Test ordered in error.</li>
            </ul>
          </li>
          <li>Use the optional <code>ServiceRequest.extension:statusReason</code> to provide explanatory context.</li>
          <li>The Placer should transition the corresponding task to "cancelled".</li>
        </ul>
      </td>
    </tr>
  </tbody>
</table>

#### Boundaries and Relationships of `ServiceRequest.status` to `ServiceRequest.statusReason`

- Use `ServiceRequest.status` to represent the current state of the Diagnostic Request.
- `ServiceRequest.statusReason` provides optional explanatory context about why the request is in that particular state. It is not typically required for normal progression through the workflow (e.g., from "active" to "completed"). Instead, it is intended to provide business-relevant context in exception scenarios, such as when a request is placed "on-hold", "revoked", or marked "entered-in-error".
- There is no defined value set for `ServiceRequest.statusReason`. Implementers should ensure that any [CodeableConcept](https://hl7.org/fhir/R4/datatypes.html#CodeableConcept) used is meaningful, suitable for sharing with other ecosystem participants, and includes a plain text representation of the concept using [CodeableConcept.text](https://hl7.org/fhir/R4/datatypes-definitions.html#CodeableConcept.text).

#### `ServiceRequest.status` Relationship to `Task.status`

- While Diagnostic Request and Task are loosely coupled, in practice, any transition in `ServiceRequest.status` should be reflected in the corresponding `Task.status` to maintain alignment across resources involved in the workflow, where appropriate. Placer systems are responsible for managing this alignment, as status changes in the Diagnostic Request often imply a shift in the expectations on fulfilment of the Task. This coordination is a key aspect of closed-loop eRequesting. Failure to maintain it can result in workflow inconsistencies, such as orphaned tasks or misaligned expectations between Placers and Fillers.
- Some typical business rules on these status relationships are outlined in the [Request States Table](#request-states-table) above under *Implementation Notes for AU eRequesting Workflows*.