### Usage scenarios
TBD

### Profile specific implementation guidance
- `ServiceRequest.code` represents the type of service being requested or ordered, such as a diagnostic test or a procedure. Depending on the context provided by `ServiceRequest.category`, `ServiceRequest.code` **SHOULD** be selected from a corresponding domain-specific value set:
  - When representing a pathology order (`ServiceRequest.category` is SNOMED CT 108252007 |Laboratory procedure), `ServiceRequest.code`:
    - **SHOULD** use a code from the preferred <a href="https://www.rcpa.edu.au/fhir/ValueSet/spia-requesting-refset-3">RCPA SPIA Pathology Requesting</a> value set
    - if a suitable code from the preferred value set is not available, **SHOULD** use a suitable code from the SNOMED CT <a href="https://healthterminologies.gov.au/fhir/ValueSet/pathology-procedure-1">Pathology Procedure</a> value set 
    - if a suitable code from SNOMED CT is not available, **SHOULD** use a local code 
    - **SHOULD** use a code over sending free text (`Condition.code.text`) when appropriate codes are available, otherwise **SHOULD** send free text only
  - When representing an imaging order (`ServiceRequest.category` is SNOMED CT 363679005 |Imaging), `ServiceRequest.code`:
    - **SHOULD** use a code from the preferred RANZCR Radiology Referral value set
    - if a suitable code from the preferred value set is not available, **SHOULD** use a suitable code from the SNOMED CT <a href="https://healthterminologies.gov.au/fhir/ValueSet/imaging-procedure-1">Imaging Procedure</a> value set
    - if a suitable code from SNOMED CT is not available, **SHOULD** use a local code
    - **SHOULD** use a code over sending free text (`Condition.code.text`) when appropriate codes are available, otherwise **SHOULD** send free text only