{% include rrv-dev-note.md %}

### Profile specific implementation guidance
- `ServiceRequest.code`
  - The use of coding for the requested exam can vary significantly across systems, filler systems need to understand that they may encounter codes they do not recognise and be prepared to handle those resources appropriately. Placer systems **SHALL** populate `ServiceRequest.code.text` so that fillers can at least display the service requested, even if they do not recognise the code supplied.
  - Placer systems **SHALL** adhere to the following order of preference when populating the `ServiceRequest.code`:
     1. A code selected from the [RANZCR Radiology Referral](https://api.healthterminologies.gov.au/integration/R4/fhir/ValueSet/ranzcr-radiology-referral-1) value set is the preferred option
     2. A code selected from the SNOMED CT [Imaging Procedure](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/imaging-procedure-1) value set is the second most preferred option
     3. A local code is preferred over free text, preferably from a published and accessible FHIR code system​
     4. Free text is the least preferred option which should not be used if a local code is known

<div>
  <img src="eReqServiceRequestCodeImaging.png" alt="ServiceRequest Code Diagram 1" style="width:70%"/>
</div>
<br/>
>While the current RANZCR Radiology Referral binding is preferred, it is intended that this binding will move to extensible in the future to ensure the consistent coding of eRequests. The approach to strengthened binding will consider a number of factors including, industry adoption and progress on development of the RANZCR Radiology Referral value set, subject to discussion with the Technical Design Group. National registries or exchange networks may make additional conformance requirements around support for nationally agreed value sets, even if this specification does not require their use.

- See guidance on the construction of identifiers in each Identifier profile and the section on [Business Identifiers](https://build.fhir.org/ig/hl7au/au-fhir-base/generalguidance.html#business-identifiers) in AU Base.
- The provision of an insurance attribute describes a recommendation to be considered by the Filler and does not guarantee that this recommendation will be satisfied.

