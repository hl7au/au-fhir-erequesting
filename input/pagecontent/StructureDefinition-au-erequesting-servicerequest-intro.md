### Usage scenarios
TBD

### Profile specific implementation guidance
- The use of coding can vary significantly across systems, implementers need to understand that they may encounter codes they do not recognise and be prepared to handle those resources appropriately. Systems **SHALL** populate `ServiceRequest.code.text` so that systems can at least display the service requested even if the system does not recognise the code supplied.
- Pathology orders are represented as:
  - `ServiceRequest.category` = "108252007" (Laboratory procedure)
  - `ServiceRequest.code`:
    - **SHOULD** be selected from the preferred <a href="https://www.rcpa.edu.au/fhir/ValueSet/spia-requesting-refset-3">RCPA SPIA Pathology Requesting</a> value set
    - if a system is unable to provide a code from the preferred <a href="https://www.rcpa.edu.au/fhir/ValueSet/spia-requesting-refset-3">RCPA SPIA Pathology Requesting</a>, it is preferred to select a suitable code from the SNOMED CT <a href="https://healthterminologies.gov.au/fhir/ValueSet/pathology-procedure-1">Pathology Procedure</a> value set over only supplying local codes
    - coding is preferred over supplying only free text with no codes
- Imaging orders are represented as:
  - `ServiceRequest.category` = "363679005 " (Imaging)
  - `ServiceRequest.code`:
    - **SHOULD** be selected from the preferred RANZCR Radiology Referral value set
    - if a system is unable to provide a code from the preferred RANZCR Radiology Referral value set , it is preferred to select a suitable code from the SNOMED CT <a href="https://healthterminologies.gov.au/fhir/ValueSet/imaging-procedure-1">Imaging Procedure</a> value set over only supplying local codes
    - coding is preferred over supplying only free text with no codes