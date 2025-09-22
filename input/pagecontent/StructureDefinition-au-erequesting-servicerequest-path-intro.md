<div class="stu-note">It is intended that this profile will always support the latest version of the SPIA Requesting Pathology Terminology Reference Set available. At this time the latest version of the SPIA Requesting Pathology Terminology Reference Set is v4.2. Implementers are advised to take note that the current binding <a href="https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/spia-requesting-refset-3">RCPA - SPIA Requesting Pathology Terminology Reference Set</a> currently supports v3.1 and will be replaced with a version that support v4.2 as soon as it is available in the National Clinical Terminology Service.</div>

### Profile Specific Implementation Guidance
- This profile supports the sex and gender related concept of Sex Parameter for Clinical Use:
   - When exchanging concepts of sex or gender, refer to the guidance in [Sex and Gender](sex-and-gender.html) and the [Gender Harmony Implementation Guide](http://hl7.org/xprod/ig/uv/gender-harmony/).
- `ServiceRequest.code`
  - The use of coding for the requested test can vary significantly across systems, filler systems need to understand that they may encounter codes they do not recognise and be prepared to handle those resources appropriately. Placer systems **SHALL** populate `ServiceRequest.code.text` so that fillers can at least display the service requested, even if they do not recognise the code supplied.
  - Placer systems **SHALL** adhere to the following order of preference when populating the `ServiceRequest.code`:
  1. A code selected from the [RCPA - SPIA Requesting Pathology Terminology Reference Set](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/spia-requesting-refset-3) value set is the preferred option
  2. A code selected from the SNOMED CT [Pathology Procedure](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/pathology-procedure-1) value set is the second most preferred option
  3. A local code is preferred over free text, preferably from a published and accessible FHIR code system​
  4. Free text is the least preferred option which should not be used if a local code is known

<div> 
  <img src="eReqServiceRequestCodePathology.png" alt="ServiceRequest Code Diagram 1" style="width:70%"/>
</div>
<br/>
>While the current RCPA - SPIA Requesting Pathology Reference Set binding is preferred, it is intended that this binding will move to extensible in the future to ensure the consistent coding of eRequests. Subject to discussion with the Technical Design Group this could commence with a progressive move to extensible through stronger binding of identified subsets of the RCPA - SPIA Requesting Pathology Terminology Reference Set.  National registries or exchange networks may make additional conformance requirements around support for nationally agreed value sets, even if this specification does not require their use.

- See guidance on the construction of identifiers in each Identifier profile and the section on [Business Identifiers](https://build.fhir.org/ig/hl7au/au-fhir-base/generalguidance.html#business-identifiers) in AU Base.
- The provision of an insurance attribute describes a recommendation to be considered by the Filler and does not guarantee that this recommendation will be satisfied.
- In the scenario where specimens are collected by the requesting organisation, [AU eRequesting Specimen](StructureDefinition-au-erequesting-specimen.html) can be used to capture data about the specimens and referenced in the ServiceRequest.
