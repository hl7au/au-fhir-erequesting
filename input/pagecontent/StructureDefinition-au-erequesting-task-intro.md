
### Profile Specific Implementation Guidance
- This abstract profile provides a shared base that is common across tasks. It is not intended for direct implementation. Where a task profile is defined for a specific purpose that profile **SHALL** be used:
  - group tasks **SHALL** use [AU eRequesting Task Group](StructureDefinition-au-erequesting-task-group.html) profile
  - diagnostic request tasks **SHALL** use [AU eRequesting Task Diagnostic Request](StructureDefinition-au-erequesting-task-diagnosticrequest.html) profile 
- See the [AU eRequesting Workflow Guidance](workflow.html) page for guidance on managing workflow states in AU eRequesting.
