### Release TBD
- Expected Publication date: TBD
- Expected Publication status: TBD
- Based on FHIR version: 4.0.1

This change log documents the significant updates and resolutions implemented from version 0.1.0-ballot to TBD.

#### Changes in this version
- New profiles: 
  - AU eRequesting Task ([FHIR-46947](https://jira.hl7.org/browse/FHIR-46947), [FHIR-46950](https://jira.hl7.org/browse/FHIR-46950), [FHIR-46956](https://jira.hl7.org/browse/FHIR-46956), [FHIR-46958](https://jira.hl7.org/browse/FHIR-46958), [FHIR-46959](https://jira.hl7.org/browse/FHIR-46959), [FHIR-47081](https://jira.hl7.org/browse/FHIR-47081), [FHIR-47082](https://jira.hl7.org/browse/FHIR-47082), [FHIR-47083](https://jira.hl7.org/browse/FHIR-47083), [FHIR-47084](https://jira.hl7.org/browse/FHIR-47084), [FHIR-47086](https://jira.hl7.org/browse/FHIR-47086), [FHIR-47102](https://jira.hl7.org/browse/FHIR-47102).
  - AU eRequesting Coverage ([FHIR-46848](https://jira.hl7.org/browse/FHIR-46848))
- Added [Sex and Gender](sex-and-gender.html) page to consolidate implementation guidance on sex and gender concepts in AU eRequesting, with references to guidance in AU Core and AU Base [FHIR-47176](https://jira.hl7.org/browse/FHIR-47176), [FHIR-47178](https://jira.hl7.org/browse/FHIR-47178), [FHIR-47182](https://jira.hl7.org/browse/FHIR-47182), [FHIR-47183](https://jira.hl7.org/browse/FHIR-47183), [FHIR-46892](https://jira.hl7.org/browse/FHIR-46892), [FHIR-46896](https://jira.hl7.org/browse/FHIR-46896).
- Made the following changes to AU eRequesting ServiceRequest:
  - made the profile abstract ([FHIR-46813](https://jira.hl7.org/browse/FHIR-46813))
  - made ServiceRequest.encounter mandatory (1..1) [FHIR-47008](https://jira.hl7.org/browse/FHIR-47008)
  - added Must Support to ServiceRequest.priority [FHIR-46939](https://jira.hl7.org/browse/FHIR-46939)
  - changed ServiceRequest.insurance reference type to the AU eRequesting Coverage [FHIR-46848](https://jira.hl7.org/browse/FHIR-46848)
  - AU eRequesting ServiceRequest profile renamed to be AU eRequesting Diagnostic Request [FHIR-46842](https://jira.hl7.org/browse/FHIR-46842)
  - Removed draft and unknown from ServiceRequest.status [FHIR-47097](https://jira.hl7.org/browse/FHIR-47097)
  - added Request status reason extension as a Must Support element with cardinality 0..1 [FHIR-47098](https://jira.hl7.org/browse/FHIR-47098)
  - added Patient Sex Parameter for Clinical Use extension [FHIR-46997](https://jira.hl7.org/browse/FHIR-46997)
- Added _include search parameters ServiceRequest:patient, ServiceRequest:requester and ServiceRequest:encounter to AU eRequesting Placer, Filler, Patient and Server CapabilityStatements [FHIR-46942](https://jira.hl7.org/browse/FHIR-46942)
- Renamed AU eRequesting Patient Access actor and CapabilityStatement to be AU eRequesting Patient [FHIR-46802](https://jira.hl7.org/browse/FHIR-46802)
- Clarified profile-specific implementation guidance on populating ServiceRequest.code and removed additional binding in AU eRequesting Pathology Request and AU eRequesting Imaging Request [FHIR-46847](https://jira.hl7.org/browse/FHIR-46847)
- Made the following changes in AU eRequesting Server CapabilityStatement:
  - changed the conformance requirement for ServiceRequest create and update interactions from SHALL to SHOULD [FHIR-47141](https://jira.hl7.org/browse/FHIR-47141)
  - added read and search-type interactions as SHALL, and create and update interactions as SHOULD for all currently supported resource types [FHIR-48934](https://jira.hl7.org/browse/FHIR-48934), [FHIR-47145](https://jira.hl7.org/browse/FHIR-47145), [FHIR-47143](https://jira.hl7.org/browse/FHIR-47143) [FHIR-48915](https://jira.hl7.org/browse/FHIR-48915)
  - added _id search parameter as SHALL for all currently supported resource types [FHIR-48934](https://jira.hl7.org/browse/FHIR-48934), [FHIR-47145](https://jira.hl7.org/browse/FHIR-47145), [FHIR-48915](https://jira.hl7.org/browse/FHIR-48915)
  - added identifier search parameter support for Organization, Patient, Practitioner, and PractitionerRole as SHALL [FHIR-48934](https://jira.hl7.org/browse/FHIR-48934), [FHIR-47145](https://jira.hl7.org/browse/FHIR-47145)
  - added _include support for PractitionerRole:practitioner and PractitionerRole:organization as SHALL for the PractitionerRole resource type [FHIR-48934](https://jira.hl7.org/browse/FHIR-48934), [FHIR-47145](https://jira.hl7.org/browse/FHIR-47145)
  - added the following Task search parameters as SHALL: group-identifier, owner, patient, requester, focus, status, _lastUpdated, patient+status, owner+status, requester+status, _lastUpdated+status+owner, patient.identifier, owner.identifier, requester.identifier, Task:patient, Task:requester, Task:owner and Task:focus [FHIR-48915](https://jira.hl7.org/browse/FHIR-48915)
