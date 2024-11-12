### Release TBD
- Expected Publication date: TBD
- Expected Publication status: TBD
- Based on FHIR version: 4.0.1

This change log documents the significant updates and resolutions implemented from version 0.1.0-ballot to TBD.

#### Changes in this version
- New profiles: 
<<<<<<< HEAD
  - AU eRequesting Task ([FHIR-46947](https://jira.hl7.org/browse/FHIR-46947), [FHIR-46950](https://jira.hl7.org/browse/FHIR-46950), [FHIR-46956](https://jira.hl7.org/browse/FHIR-46956), [FHIR-46958](https://jira.hl7.org/browse/FHIR-46958), [FHIR-46959](https://jira.hl7.org/browse/FHIR-46959), [FHIR-47081](https://jira.hl7.org/browse/FHIR-47081), [FHIR-47082](https://jira.hl7.org/browse/FHIR-47082), [FHIR-47083](https://jira.hl7.org/browse/FHIR-47083), [FHIR-47084](https://jira.hl7.org/browse/FHIR-47084), [FHIR-47086](https://jira.hl7.org/browse/FHIR-47086), [FHIR-47102](https://jira.hl7.org/browse/FHIR-47102)).
- Made AU eRequesting ServiceRequest [abstract](https://hl7.org/fhir/R4/structuredefinition-definitions.html#StructureDefinition.abstract) ([FHIR-46813](https://jira.hl7.org/browse/FHIR-46813)).
  - AU eRequesting Coverage ([FHIR-46848](https://jira.hl7.org/browse/FHIR-46848))083](https://jira.hl7.org/browse/FHIR-47083), [FHIR-47084](https://jira.hl7.org/browse/FHIR-47084), [FHIR-47086](https://jira.hl7.org/browse/FHIR-47086), [FHIR-47102](https://jira.hl7.org/browse/FHIR-47102)).
- Made AU eRequesting ServiceRequest [abstract](https://hl7.org/fhir/R4/structuredefinition-definitions.html#StructureDefinition.abstract) ([FHIR-46813](https://jira.hl7.org/browse/FHIR-46813)).
- Added / Updated the Create, Read, Update, and Search interactions and search parameters for all [Capability Statements](https://build.fhir.org/ig/hl7au/au-fhir-erequesting/capability-statements.html) ([FHIR-47142](https://jira.hl7.org/browse/FHIR-47142), [FHIR-47143](https://jira.hl7.org/browse/FHIR-47143), [FHIR-47144](https://jira.hl7.org/browse/FHIR-47144), [FHIR-47145](https://jira.hl7.org/browse/FHIR-47145), [FHIR-47146](https://jira.hl7.org/browse/FHIR-47146)). 
- Added AU eRequesting ServiceRequest _include search parameters to [Capability Statements](https://build.fhir.org/ig/hl7au/au-fhir-erequesting/capability-statements.html) ([FHIR-46942](https://jira.hl7.org/browse/FHIR-46942)).
=======
  - AU eRequesting Task ([FHIR-46947](https://jira.hl7.org/browse/FHIR-46947), [FHIR-46950](https://jira.hl7.org/browse/FHIR-46950), [FHIR-46956](https://jira.hl7.org/browse/FHIR-46956), [FHIR-46958](https://jira.hl7.org/browse/FHIR-46958), [FHIR-46959](https://jira.hl7.org/browse/FHIR-46959), [FHIR-47081](https://jira.hl7.org/browse/FHIR-47081), [FHIR-47082](https://jira.hl7.org/browse/FHIR-47082), [FHIR-47083](https://jira.hl7.org/browse/FHIR-47083), [FHIR-47084](https://jira.hl7.org/browse/FHIR-47084), [FHIR-47086](https://jira.hl7.org/browse/FHIR-47086), [FHIR-47102](https://jira.hl7.org/browse/FHIR-47102).
  - AU eRequesting Coverage ([FHIR-46848](https://jira.hl7.org/browse/FHIR-46848))
- Made the following changes to AU eRequesting ServiceRequest:
  - made the profile abstract ([FHIR-46813](https://jira.hl7.org/browse/FHIR-46813))
  - made ServiceRequest.encounter mandatory (1..1) [FHIR-47008](https://jira.hl7.org/browse/FHIR-47008)
  - added Must Support to ServiceRequest.priority [FHIR-46939](https://jira.hl7.org/browse/FHIR-46939)
  - AU eRequesting ServiceRequest profile renamed to be AU eRequesting Diagnostic Request [FHIR-46842](https://jira.hl7.org/browse/FHIR-46842)
- Renamed AU eRequesting Patient Access actor and CapabilityStatement to be AU eRequesting Patient [FHIR-46802](https://jira.hl7.org/browse/FHIR-46802)
>>>>>>> d693ea205df95bc260279adb24f560af0eeace24
