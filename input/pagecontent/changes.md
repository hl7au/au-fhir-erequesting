### Release TBD
- Expected Publication date: TBD
- Expected Publication status: TBD
- Based on FHIR version: 4.0.1

This change log documents the significant updates and resolutions implemented from version 0.1.0-ballot to TBD.

#### Changes in this version
- New profiles: 
  - AU eRequesting Task ([FHIR-46947](https://jira.hl7.org/browse/FHIR-46947), [FHIR-46950](https://jira.hl7.org/browse/FHIR-46950), [FHIR-46956](https://jira.hl7.org/browse/FHIR-46956), [FHIR-46958](https://jira.hl7.org/browse/FHIR-46958), [FHIR-46959](https://jira.hl7.org/browse/FHIR-46959), [FHIR-47081](https://jira.hl7.org/browse/FHIR-47081), [FHIR-47082](https://jira.hl7.org/browse/FHIR-47082), [FHIR-47083](https://jira.hl7.org/browse/FHIR-47083), [FHIR-47084](https://jira.hl7.org/browse/FHIR-47084), [FHIR-47086](https://jira.hl7.org/browse/FHIR-47086), [FHIR-47102](https://jira.hl7.org/browse/FHIR-47102).
  - AU eRequesting Coverage ([FHIR-46848](https://jira.hl7.org/browse/FHIR-46848))
- Made the following changes to AU eRequesting ServiceRequest:
  - made the profile abstract ([FHIR-46813](https://jira.hl7.org/browse/FHIR-46813))
  - made ServiceRequest.encounter mandatory (1..1) [FHIR-47008](https://jira.hl7.org/browse/FHIR-47008)
  - added Must Support to ServiceRequest.priority [FHIR-46939](https://jira.hl7.org/browse/FHIR-46939)
  - changed ServiceRequest.insurance reference type to the AU eRequesting Coverage [FHIR-46848](https://jira.hl7.org/browse/FHIR-46848)
  - AU eRequesting ServiceRequest profile renamed to be AU eRequesting Diagnostic Request [FHIR-46842](https://jira.hl7.org/browse/FHIR-46842)
  - Removed draft and unknown from ServiceRequest.status [FHIR-47097](https://jira.hl7.org/browse/FHIR-47097)
  - added Request status reason extension as a Must Support element with cardinality 0..1 [FHIR-47098](https://jira.hl7.org/browse/FHIR-47098)
- Added _include search parameters ServiceRequest:patient, ServiceRequest:requester and ServiceRequest:encounter to AU eRequesting Placer, Filler, Patient and Server CapabilityStatements [FHIR-46942](https://jira.hl7.org/browse/FHIR-46942)
- Renamed AU eRequesting Patient Access actor and CapabilityStatement to be AU eRequesting Patient [FHIR-46802](https://jira.hl7.org/browse/FHIR-46802)
- Clarified profile-specific implementation guidance on populating ServiceRequest.code and removed additional binding in AU eRequesting Pathology Request and AU eRequesting Imaging Request [FHIR-46847](https://jira.hl7.org/browse/FHIR-46847)
- Changed the conformance requirement for ServiceRequest create and update interactions from SHALL to SHOULD in AU eRequesting Server CapabilityStatement [FHIR-47141](https://jira.hl7.org/browse/FHIR-47141)
