
### Profile Specific Implementation Guidance
- This abstract profile provides a shared base that is common across communication requests. It is not intended for direct implementation. Where a CommunicationRequest profile is defined for a specific purpose that profile **SHALL** be used:
  - communication requests about providing a copy of the report to a patient or clinician **SHALL** use [AU eRequesting CommunicationRequest CopyTo](StructureDefinition-au-erequesting-communicationrequest-copyto.html) profile
  - communication requests about commmunication with a patient from a filler **SHALL** use [AU eRequesting CommunicationRequest Patient](StructureDefinition-au-erequesting-communicationrequest-patient.html) profile
  - communication requests about communication from a filler to a clinical provider to notify them of urgent results **SHALL** use [AU eRequesting CommunicationRequest Urgent Provider](StructureDefinition-au-erequesting-communicationrequest-urgentprovider.html) profile