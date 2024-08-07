<p class="request-for-feedback">Input is requested on the appropriateness of allowing Missing Data or Suppressed Data for all elements. Please comment by raising <a href="https://jira.hl7.org/projects/FHIR/issues">HL7 Jira Issues</a>.</p>

### Profile specific implementation guidance
- This profile provides a shared base that is common across requests for specific domains. Where a profile is defined for a specific domain that profile **SHALL** be used:
  - pathology requests **SHALL** use [AU eRequesting Pathology Request](StructureDefinition-au-erequesting-servicerequest-path.html) profile
  - imaging requests **SHALL** use [AU eRequesting Imaging Request](StructureDefinition-au-erequesting-servicerequest-imag.html) profile 
- The use of coding can vary significantly across systems, implementers need to understand that they may encounter codes they do not recognise and be prepared to handle those resources appropriately. Systems **SHALL** populate `ServiceRequest.code.text` so that systems can at least display the service requested even if the system does not recognise the code supplied.
- See guidance on the construction of identifiers in each Identifier profile and the section on [Business Identifiers](https://build.fhir.org/ig/hl7au/au-fhir-base/generalguidance.html#business-identifiers) in AU Base.
