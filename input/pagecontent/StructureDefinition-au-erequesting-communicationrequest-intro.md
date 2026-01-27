
### Profile Specific Implementation Guidance
- This abstract profile provides a shared base that is common across communication requests. It is not intended for direct implementation. Where a CommunicationRequest profile is defined for a specific purpose that profile **SHALL** be used:
  - Communication requests about providing a copy of the report to a patient or clinician **SHALL** use the [AU eRequesting CommunicationRequest CopyTo](StructureDefinition-au-erequesting-communicationrequest-copyto.html) profile
  - Communication requests about communication with a patient from a filler **SHALL** use the [AU eRequesting CommunicationRequest Patient](StructureDefinition-au-erequesting-communicationrequest-patient.html) profile
  - Communication requests about communication from a filler to a clinical provider to notify them of urgent results **SHALL** use the [AU eRequesting CommunicationRequest Urgent Provider](StructureDefinition-au-erequesting-communicationrequest-urgentprovider.html) profile
- See guidance on the construction of identifiers in each Identifier profile and the section on [Business Identifiers](https://hl7.org.au/fhir/6.0.0/generalguidance.html#business-identifiers) in AU Base.
- The key *Must Support* elements that distinguish the AU eRequesting CommunicationRequest profiles are outlined below:

|Element|AU eRequesting CommunicationRequest CopyTo|AU eRequesting CommunicationRequest Patient|AU eRequesting CommunicationRequest Urgent Provider|
|---|---|---|---|
|category|"copyto-reports"|"patient-preference"|"urgent-results"|
|priority|-|-|"urgent"|
|doNotPerform|Prohibited|Permitted|Prohibited|
|medium|-|Binding: AU eRequesting CommunicationRequest Patient Medium (required)|Binding: ParticipationMode (example)|
|requester|AU eRequesting PractitionerRole|AU eRequesting PractitionerRole, AU eRequesting Patient, AU eRequesting Organization|AU eRequesting PractitionerRole|
|recipient|AU eRequesting PractitionerRole, AU eRequesting Patient|AU eRequesting Patient|AU eRequesting PractitionerRole|
{:.grid}