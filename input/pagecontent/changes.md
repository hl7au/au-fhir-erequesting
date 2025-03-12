### Release TBD
- Expected Publication date: TBD
- Expected Publication status: TBD
- Based on FHIR version: 4.0.1

This change log documents the significant updates and resolutions implemented from version 0.1.0-ballot to TBD.

#### Changes in this version
- New profiles: 
  - AU eRequesting Communication Request CopyTo ([FHIR-49807](https://jira.hl7.org/browse/FHIR-49807))
  - AU eRequesting Task ([FHIR-46947](https://jira.hl7.org/browse/FHIR-46947), [FHIR-46950](https://jira.hl7.org/browse/FHIR-46950), [FHIR-46956](https://jira.hl7.org/browse/FHIR-46956), [FHIR-46958](https://jira.hl7.org/browse/FHIR-46958), [FHIR-46959](https://jira.hl7.org/browse/FHIR-46959), [FHIR-47081](https://jira.hl7.org/browse/FHIR-47081), [FHIR-47082](https://jira.hl7.org/browse/FHIR-47082), [FHIR-47083](https://jira.hl7.org/browse/FHIR-47083), [FHIR-47084](https://jira.hl7.org/browse/FHIR-47084), [FHIR-47086](https://jira.hl7.org/browse/FHIR-47086), [FHIR-47102](https://jira.hl7.org/browse/FHIR-47102), [FHIR-49717](https://jira.hl7.org/browse/FHIR-49717))
  - AU eRequesting MHR Consent Withdrawal ([FHIR-49806](https://jira.hl7.org/browse/FHIR-49806))
  - AU eRequesting Task Diagnostic Request ([FHIR-49718](https://jira.hl7.org/browse/FHIR-49718))
  - AU eRequesting Task Group ([FHIR-49719](https://jira.hl7.org/browse/FHIR-49719))
  - AU eRequesting Coverage ([FHIR-46848](https://jira.hl7.org/browse/FHIR-46848))
- New value sets:
  - AU eRequesting Task Status ([FHIR-47081](https://jira.hl7.org/browse/FHIR-47081))
  - AU eRequesting RequestStatus ([FHIR-47097](https://jira.hl7.org/browse/FHIR-47097))
  - AU eRequesting Task Tag Fulfilment ([FHIR-49718](https://jira.hl7.org/browse/FHIR-49718), [FHIR-49719](https://jira.hl7.org/browse/FHIR-49719))
- New code systems:
  - AU eRequesting Communication Request Reason ([FHIR-49807](https://jira.hl7.org/browse/FHIR-49807))
  - AU eRequesting Task Tag Codes ([FHIR-49718](https://jira.hl7.org/browse/FHIR-49718), [FHIR-49719](https://jira.hl7.org/browse/FHIR-49719))
- New extensions:  
  - AU eRequesting Display Sequence [FHIR-49715](https://jira.hl7.org/browse/FHIR-49715)
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
  - added AU eRequesting Display Sequence extension as Must Support element with cardinality 1..1 [FHIR-49715](https://jira.hl7.org/browse/FHIR-49715), [FHIR-49716](https://jira.hl7.org/browse/FHIR-49716)
  - added AU eRequesting Fasting Precondition extension as Must Support element with cardinality 0..1 [FHIR-49917](https://jira.hl7.org/browse/FHIR-49917)
  - added Must Support to ServiceRequest.occurrence [FHIR-49918](https://jira.hl7.org/browse/FHIR-49918)
  - added Must Support to ServiceRequest.quantity [FHIR-49919](https://jira.hl7.org/browse/FHIR-49919)
  - added pregnancy status slice to ServiceRequest.supportingInfo referencing [Observation Pregnancy - Status (IPS)](https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-Observation-pregnancy-status-uv-ips.html) [FHIR-47006](https://jira.hl7.org/browse/FHIR-47006)
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
- Updated AU eRequesting ValueSet resources to remove conformance to HL7 International <a href="http://hl7.org/fhir/StructureDefinition/shareablevalueset">ShareableValueSet</a> and instead claim conformance to <a href="https://healthterminologies.gov.au/fhir/StructureDefinition/composed-value-set-4"> NCTS Composed ValueSet</a> (<a href="https://jira.hl7.org/browse/FHIR-47149">FHIR-47149</a>).