### Profile specific implementation guidance
- This profile provides a shared base that is common across requests for specific domains. Where a profile is defined for a specific domain that profile **SHALL** be used:
  - pathology requests **SHALL** use [AU eRequesting Pathology Request](StructureDefinition-au-erequesting-pathrequest.html) profile
  - imaging requests **SHALL** use [AU eRequesting Imaging Request](StructureDefinition-au-erequesting-imagingrequest.html) profile 
- The use of coding can vary significantly across systems, implementers need to understand that they may encounter codes they do not recognise and be prepared to handle those resources appropriately. Systems **SHALL** populate `ServiceRequest.code.text` so that systems can at least display the service requested even if the system does not recognise the code supplied.
