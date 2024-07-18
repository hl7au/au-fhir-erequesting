<div class="stu-note">It is intended that this profile will always support the latest version of the RANZCR Radiology Referral value set in ServiceRequest.code. Work is underway to make that available shortly. Implementers are advised to take note that the current binding will be replaced as soon as a version of the RANZCR Radiology Referral value set is available.</div>

### Profile specific implementation guidance
- `ServiceRequest.code`:
  - **SHOULD** be selected from the preferred RANZCR Radiology Referral value set
  - if a system is unable to provide a code from the preferred RANZCR Radiology Referral value set , it is preferred to select a suitable code from the SNOMED CT <a href="https://healthterminologies.gov.au/fhir/ValueSet/imaging-procedure-1">Imaging Procedure</a> value set over only supplying local codes
  - coding is preferred over supplying only free text with no codes
- The use of coding can vary significantly across systems, implementers need to understand that they may encounter codes they do not recognise and be prepared to handle those resources appropriately. Systems **SHALL** populate `ServiceRequest.code.text` so that systems can at least display the service requested even if the system does not recognise the code supplied.
