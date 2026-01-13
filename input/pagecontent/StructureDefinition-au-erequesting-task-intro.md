
### Profile Specific Implementation Guidance
- This abstract profile provides a shared base that is common across tasks. It is not intended for direct implementation. Where a task profile is defined for a specific purpose that profile **SHALL** be used:
  - Group tasks **SHALL** use [AU eRequesting Task Group](StructureDefinition-au-erequesting-task-group.html) profile
  - Diagnostic request tasks **SHALL** use [AU eRequesting Task Diagnostic Request](StructureDefinition-au-erequesting-task-diagnosticrequest.html) profile
  - Communication request tasks **SHALL** use [AU eRequesting Task Communication Request](StructureDefinition-au-erequesting-task-communicationrequest.html) profile
- See guidance on the construction of identifiers in each Identifier profile and the section on [Business Identifiers](https://build.fhir.org/ig/hl7au/au-fhir-base/generalguidance.html#business-identifiers) in AU Base.
- See the [AU eRequesting Workflow Guidance](workflow.html) page for guidance on managing workflow states in AU eRequesting.
- See the [Diagnostic Request Grouping](general-guidance.html#diagnostic-request-grouping) section for guidance on grouping diagnostic requests in AU eRequesting.
