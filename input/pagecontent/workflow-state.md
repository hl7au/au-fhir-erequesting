# eRequesting Workflow State Guidance

## AU eRequesting Task Status Workflow

AU eRequesting uses a ServiceRequest/Task pattern, where the Task tracks the fulfillment workflow of the ServiceRequest. This section describes how the AU eRequesting Task Diagnostic Request profile is used to track the fulfilment of pathology or imaging diagnostic requests in the context of community-based care in Australia. This guidance builds on the *Task state machine*.

### Task State Transitions Overview

The state (status) transitions described here reflect the lifecycle of a Task within AU eRequesting workflows for community-based pathology and imaging.<br>
Note that not all states (specifically *received*, *rejected*, and *on-hold*), or transitions will be supported by all workflows. Implementers must determine which states and transitions are relevant to their clinical and administrative workflows.<br>
Business rules that define which actors or system roles are permitted to modify a Task’s status, or to trigger such modifications, are outside the scope of this IG. However, guidance on the coordination between *ServiceRequest.status* and *Task.status* are discussed in the section *ServiceRequest.status relationship to Task.status*.

### Task Status Definitions

The AU eRequesting Task Status value set specifies a constrained subset of codes drawn from the required *TaskStatus* value set.

### Task State Transitions Diagram

*(Diagram to be included)*

### Task State Transitions Table

The Task State Transitions table below supplements the diagrammatic view above by providing code definitions, usage context and implementation guidance, and lists the intended allowed state transitions.

| From State | Code Definition (from http://hl7.org/fhir/task-status) | Implementation Notes for AU eRequesting Workflows | Allowed Transitions To State(s) |
|------------|--------------------------------------------------------|--------------------------------------------------|---------------------------------|
| **requested** | The task is ready to be acted upon and action is sought. | Tasks start in a *requested* state, indicating a formal request for a diagnostic service that is ready to be fulfilled by a Filler. | received, accepted, rejected, cancelled |
| **received** | A potential performer has claimed ownership of the task and is evaluating whether to perform it. | Task acknowledged by the Filler. Some workflows may not distinguish between *received* (acknowledged) and *accepted* (agreed to perform the task). In such cases, implementations may transition directly from *requested* to *accepted*. | accepted, rejected, cancelled |
| **accepted** | The potential performer has agreed to execute the task but has not yet started work. | Filler has agreed to perform the task. | in-progress, cancelled |
| **rejected** | The potential performer who claimed ownership of the task has decided not to execute it prior to performing any action. | The Filler has declined to perform the task before beginning any work. Use the optional *Task.statusReason* to provide explanatory context for *rejected*. | typically a terminal state |
| **cancelled** | The task was not completed. | Indicates termination of the task before completion, usually due to an external decision or changed circumstances, rather than an error condition. Example scenarios: The Placer cancels the task; The task is cancelled because it has been claimed by an alternative Filler. A task cannot be cancelled once it is *in-progress*. While the intention of a cancelled task is that all work authorised by the task should cease, this may not always be possible. Fulfilment activity may still proceed, and a task output may be generated, even though the task remains in a *cancelled* state. Use the optional *Task.statusReason* to provide explanatory context for *cancelled*. | typically a terminal state |
| **in-progress** | The task has been started but is not yet complete. | Once the Filler initiates activity on the task, the task transitions to the *in-progress* state, indicating that work is being performed. A Task cannot be cancelled once it is *in-progress*. | on-hold, completed, failed |
| **on-hold** | The task has been started but work has been paused. | Use the optional *Task.statusReason* to provide explanatory context for *on-hold*. | in-progress |
| **completed** | The task has been completed. | Once the task has been executed, it transitions to *completed*. | typically a terminal state |
| **failed** | The task was attempted but could not be completed due to some error. | Execution was attempted but did not succeed, e.g., patient did not attend, sample was insufficient. Use the optional *Task.statusReason* to provide explanatory context for *failed*. | typically a terminal state |

### Boundaries and Relationships of Task.status to Task.statusReason and Task.businessStatus

- Use *Task.status* to represent the current state of the Task.
- When a *Task.status* is updated, the associated *Task.statusReason* and *Task.businessStatus* should also be reviewed and updated as appropriate to maintain alignment with the new status. If these elements are no longer relevant, they should be cleared to avoid propagating outdated or misleading information beyond the context in which they were originally set.

#### Task.statusReason

- Use the optional *Task.statusReason* to provide explanatory context for transitions to states such as *rejected*, *failed*, or *cancelled*.

#### Task.businessStatus

- The *Task.businessStatus* element captures business-specific nuances or substates that provide additional context to the overall *Task.status*. For interoperability, it is intended to surface meaningful, workflow-specific substates that offer value to the placer, patient, or other interested parties - such as improved transparency or additional tracking information. In other words, *Task.businessStatus* serves to augment *Task.status* when further categorisation is useful. If no further categorisation is needed, the *Task.businessStatus* element may be omitted.
- For example, *Task.businessStatus* values like *collected*, *acquired*, or *preliminary* can indicate important workflow milestones while the *Task.status* remains *in-progress*.
- At present, there are no enforced rules linking *Task.businessStatus* codes to *Task.status* codes. However, the intended implementation logic governing these code relationships is outlined in the table below. Implementers are encouraged to follow these patterns to support interoperability, though conformance is not currently enforced. This mapping may be formalised through invariants in future releases of this IG.

#### Table: AU eRequesting Task Business Status Codes and Their Relationship to Task.status Codes

| Context | Task.businessStatus Code | Definition | Relationship to Task.status Code |
|---------|--------------------------|------------|----------------------------------|
| Pathology, Radiology | booked | Service has been booked. | accepted |
| Pathology, Radiology | claimed | Service request has been claimed by an alternative filler. | cancelled |
| Pathology, Radiology | user-cancelled | Service request has been cancelled by the placer. | cancelled |
| Pathology, Radiology | cancelled-handled | Cancellation has been handled by the filler. | cancelled |
| Pathology, Radiology | data-issue | Rejected fulfilment due to an issue with the request data. | rejected |
| Pathology, Radiology | preliminary | Preliminary result completed. | in-progress |
| Pathology, Radiology | addendum | Addendum created for reporting. | completed |
| Pathology | collected | Specimen has been collected in lab collection centre. | in-progress |
| Pathology | in-lab | Specimen is being processed in the pathology lab. | in-progress |
| Radiology | acquired | Image has been acquired at radiology service. | in-progress |

### Task Group Status Relationship to Task Diagnostic Request Status

- The status of a Group Task should reflect the lowest (most incomplete) status among its individual Diagnostic Request Tasks; however, at present, there are no enforced rules.

## AU eRequesting Diagnostic Request Status

### Request States Overview

In AU eRequesting workflows for community-based pathology and imaging, the state (status) of a Diagnostic Request is managed by the Placer.

### Request States Table

The *AU eRequesting RequestStatus* value set specifies a constrained subset of codes drawn from the required *RequestStatus* value set.

The Diagnostic Request State table below provides code definitions, usage context, and implementation guidance.

| State | Code Definition (from http://hl7.org/fhir/request-status) | Implementation Notes for AU eRequesting Workflows |
|-------|----------------------------------------------------------|--------------------------------------------------|
| **active** | The request is in force and ready to be acted upon. | Diagnostic requests start in an *active* state, indicating a formal request for a diagnostic service. |
| **on-hold** | The request (and any implicit authorization to act) has been temporarily withdrawn but is expected to resume in the future. | Use the optional *ServiceRequest.extension:statusReason* to provide explanatory context for *on-hold*. |
| **revoked** | The request (and any implicit authorization to act) has been terminated prior to the known full completion of the intended actions. No further activity should occur. | Indicates a request was withdrawn or cancelled by the Placer after it was placed but before it was fulfilled. Use the optional *ServiceRequest.extension:statusReason* to provide explanatory context for *revoked*. The Placer should transition the corresponding task to *cancelled*. |
| **completed** | The activity described by the request has been fully performed. No further activity will occur. | Indicates the diagnostic service has been performed and task output have been provided. When the Filler sets *Task.status* to *completed*, the Placer may choose, based on its workflow implementation, to treat this as a trigger to update *ServiceRequest.status* to *completed*, or defer the update until the expected task output (e.g., diagnostic results and/or reports) is received. |
| **entered-in-error** | This request should never have existed and should be considered 'void'. (It is possible that real-world decisions were based on it. If real-world activity has occurred, the status should be *revoked* rather than *entered-in-error*). | Should only be used if no activity based on the request has occurred. Examples include a request created for the wrong patient, or test ordered in error. Use the optional *ServiceRequest.extension:statusReason* to provide explanatory context for *entered-in-error*. The Placer should transition the corresponding task to *cancelled*. |

### Boundaries and Relationships of ServiceRequest.status to ServiceRequest.statusReason

- Use *ServiceRequest.status* to represent the current state of the Diagnostic Request.
- The *statusReason* element provides optional explanatory context about why the request is in that particular state. It is not typically required for normal progression through the workflow (e.g., from *active* to *completed*). Instead, it is intended to provide business-relevant context in exception scenarios, such as when a request is placed *on-hold*, *revoked*, or marked *entered-in-error*.
- There is no defined value set for *statusReason*. Implementers should ensure that any *CodeableConcept* used is meaningful, suitable for sharing with other ecosystem participants, and includes a plain text representation of the concept using *CodeableConcept.text*.

### ServiceRequest.status Relationship to Task.status

- While Diagnostic Request and Task are loosely coupled, in practice, any transition in *ServiceRequest.status* should be reflected in the corresponding *Task.status* to maintain alignment across resources involved in the workflow, where appropriate. Placer systems are responsible for managing this alignment, as status changes in the Diagnostic Request often imply a shift in the expectations on fulfillment of the Task. This coordination is a key aspect of closed-loop eRequesting. Failure to maintain it can result in workflow inconsistencies, such as orphaned tasks or misaligned expectations between Placers and Fillers.
- Some typical business rules on these status relationships are outlined in the *Request States Table* above under 'Implementation Notes for AU eRequesting Workflows'.