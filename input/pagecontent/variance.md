This version of the AU eRequesting FHIR IG complies with [Version 1.0 of the HL7 Australia FHIR Work Group AU Variance Requirements](https://hl7.org.au/fhir/HL7%20AU%20Variance%20Requirements%20v1.0.pdf).

HL7 Australia published FHIR implementation guides are required to follow specific publishing requirements:
- **SHOULD** use AU Core profiles
- **SHOULD** use AU Base profiles and extensions
- **SHALL** include an AU Variance Statement page

### Variance from AU Base
This implementation guide has no variance (i.e. fully compliant) from AU Base FHIR Implementation Guide version 6.0.0-ci-build ([current](https://build.fhir.org/ig/hl7au/au-fhir-base/)):

#### Additionally Profiled Resources
This implementation guide profiles the following resources that are not profiled in AU Base:
- CommunicationRequest
  - [AU eRequesting CommunicationRequest](StructureDefinition-au-erequesting-communicationrequest.html)
  - [AU eRequesting CommunicationRequest CopyTo](StructureDefinition-au-erequesting-communicationrequest-copyto.html)
  - [AU eRequesting CommunicationRequest Patient](StructureDefinition-au-erequesting-communicationrequest-patient.html)
  - [AU eRequesting CommunicationRequest Urgent Provider](StructureDefinition-au-erequesting-communicationrequest-urgentprovider.html)
- Consent
  - [AU eRequesting MHR Consent Withdrawal](StructureDefinition-au-erequesting-mhrconsentwithdrawal.html)
- DocumentReference
  - [AU eRequesting Clinical Context DocumentReference](StructureDefinition-au-erequesting-clinicalcontext-documentreference.html)
- Task
  - [AU eRequesting Task](StructureDefinition-au-erequesting-task.html)
  - [AU eRequesting Task Diagnostic Request](StructureDefinition-au-erequesting-task-diagnosticrequest.html)
  - [AU eRequesting Task Group](StructureDefinition-au-erequesting-task-group.html)
  - [AU eRequesting Task Communication Request](StructureDefinition-au-erequesting-task-communicationrequest.html)
- Extension
  - [AU eRequesting Display Sequence](StructureDefinition-au-erequesting-displaysequence.html)
  - [AU eRequesting Fasting Precondition](StructureDefinition-au-erequesting-fastingprecondition.html)

### Variance from AU Core
This implementation guide has no variance (i.e. fully compliant) from AU Core FHIR Implementation Guide version 2.0.0-ci-build ([current](https://build.fhir.org/ig/hl7au/au-fhir-core/)).

#### Additionally Profiled Resources
This implementation guide profiles the following resources that are not profiled in AU Core:
- CommunicationRequest
  - [AU eRequesting CommunicationRequest](StructureDefinition-au-erequesting-communicationrequest.html)
  - [AU eRequesting CommunicationRequest CopyTo](StructureDefinition-au-erequesting-communicationrequest-copyto.html)
  - [AU eRequesting CommunicationRequest Patient](StructureDefinition-au-erequesting-communicationrequest-patient.html)
  - [AU eRequesting CommunicationRequest Urgent Provider](StructureDefinition-au-erequesting-communicationrequest-urgentprovider.html)
- Consent
  - [AU eRequesting MHR Consent Withdrawal](StructureDefinition-au-erequesting-mhrconsentwithdrawal.html)
- Coverage
  - [AU eRequesting Coverage](StructureDefinition-au-erequesting-coverage.html)
- DocumentReference
  - [AU eRequesting Clinical Context DocumentReference](StructureDefinition-au-erequesting-clinicalcontext-documentreference.html)
- ServiceRequest
  - [AU eRequesting Diagnostic Request](StructureDefinition-au-erequesting-diagnosticrequest.html)
  - [AU eRequesting Imaging Request](StructureDefinition-au-erequesting-servicerequest-imag.html)
  - [AU eRequesting Pathology Request](StructureDefinition-au-erequesting-servicerequest-path.html)
- Task
  - [AU eRequesting Task](StructureDefinition-au-erequesting-task.html)
  - [AU eRequesting Task Diagnostic Request](StructureDefinition-au-erequesting-task-diagnosticrequest.html)
  - [AU eRequesting Task Group](StructureDefinition-au-erequesting-task-group.html)
  - [AU eRequesting Task Communication Request](StructureDefinition-au-erequesting-task-communicationrequest.html)
- Extension
  - [AU eRequesting Display Sequence](StructureDefinition-au-erequesting-displaysequence.html)
  - [AU eRequesting Fasting Precondition](StructureDefinition-au-erequesting-fastingprecondition.html)