<p class="request-for-feedback">Input is requested on the appropriateness of allowing Missing Data or Suppressed Data for all elements. Please comment by raising <a href="https://jira.hl7.org/projects/FHIR/issues">HL7 Jira Issues</a>.</p>

### Profile specific implementation guidance
- This abstract profile provides a shared base that is common across requests for specific domains. It is not intended for direct implementation. Where a profile is defined for a specific domain that profile **SHALL** be used:
  - pathology requests **SHALL** use [AU eRequesting Pathology Request](StructureDefinition-au-erequesting-servicerequest-path.html) profile
  - imaging requests **SHALL** use [AU eRequesting Imaging Request](StructureDefinition-au-erequesting-servicerequest-imag.html) profile 
- The provision of an insurance attribute describes a recommendation to be considered by the Filler and does not guarantee that this recommendation will be satisfied.
