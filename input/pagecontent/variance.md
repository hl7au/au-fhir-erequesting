This version of the AU eRequesting FHIR IG complies with [Version 1.0 of the HL7 Australia FHIR Work Group AU Variance Requirements](https://hl7.org.au/fhir/HL7%20AU%20Variance%20Requirements%20v1.0.pdf).

HL7 Australia published FHIR implementation guides are required to follow specific publishing requirements:
- **SHOULD** use AU Core profiles
- **SHOULD** use AU Base profiles and extensions
- **SHALL** include an AU Variance Statement page

### Variance from AU Base
This implementation guide has no variance (i.e. fully compliant) from AU Base FHIR Implementation Guide version 5.0.1-ci-build ([current](https://build.fhir.org/ig/hl7au/au-fhir-base/)).

#### Additionally Profiled Resources
This implementation guide profiles the following resources that are not profiled in AU Base:

- Task
  - [AU eRequesting Task](StructureDefinition-au-erequesting-task.html)

### Variance from AU Core
This implementation guide has no variance (i.e. fully compliant) from AU Core FHIR Implementation Guide version 5.0.1-ci-build ([current](https://build.fhir.org/ig/hl7au/au-fhir-core/)).

#### Additionally Profiled Resources
This implementation guide profiles the following resources that are not profiled in AU Core:

- Coverage
  - [AU eRequesting Coverage](StructureDefinition-au-erequesting-coverage.html)
- ServiceRequest
  - [AU eRequesting Diagnostic Request](StructureDefinition-au-erequesting-diagnosticrequest.html)
  - [AU eRequesting Imaging Request](StructureDefinition-au-erequesting-servicerequest-imag.html)
  - [AU eRequesting Pathology Request](StructureDefinition-au-erequesting-servicerequest-path.html)
- Task
  - [AU eRequesting Task](StructureDefinition-au-erequesting-task.html)