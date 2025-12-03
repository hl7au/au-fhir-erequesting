
### Profile Specific Implementation Guidance
- This abstract profile provides a shared base that is common across communication requests. It is not intended for direct implementation. Where a CommunicationRequest profile is defined for a specific purpose that profile **SHALL** be used:
  - Communication requests about providing a copy of the report to a patient or clinician **SHALL** use the [AU eRequesting CommunicationRequest CopyTo](StructureDefinition-au-erequesting-communicationrequest-copyto.html) profile
  - Communication requests about communication with a patient from a filler **SHALL** use the [AU eRequesting CommunicationRequest Patient](StructureDefinition-au-erequesting-communicationrequest-patient.html) profile
  - Communication requests about communication from a filler to a clinical provider to notify them of urgent results **SHALL** use the [AU eRequesting CommunicationRequest Urgent Provider](StructureDefinition-au-erequesting-communicationrequest-urgentprovider.html) profile
- The key Must Support elements that distinguish the AU eRequesting CommunicationRequest profiles are outlined below:

<table border="1" cellspacing="0" cellpadding="6" width="100%">  
    <tr style="background-color: #f2f2f2;">
      <th>Element</th>
      <th>AU eRequesting CommunicationRequest CopyTo</th>
      <th>AU eRequesting CommunicationRequest Patient</th>
      <th>AU eRequesting CommunicationRequest Urgent Provider</th>
    </tr>
    <tr>
      <td>category</td>
      <td>"copyto-reports"</td>
      <td>"patient-preference"</td>
      <td>"urgent-results"</td>
    </tr>
    <tr>
      <td>priority</td>
      <td>-</td>
      <td>-</td>
      <td>"urgent"</td>
    </tr>
    <tr>
      <td>doNotPerform</td>
      <td>Prohibited</td>
      <td>Permitted</td>
      <td>Prohibited</td>
    </tr>
    <tr>
      <td>medium</td>
      <td>-</td>
      <td>Binding: AU eRequesting CommunicationRequest Patient Medium (required)</td>
      <td>Binding: ParticipationMode (example)</td>
    </tr>
    <tr>
      <td>requester</td>
      <td>AU eRequesting PractitionerRole</td>
      <td>AU eRequesting PractitionerRole, AU eRequesting Patient, AU eRequesting Organization</td>
      <td>AU eRequesting PractitionerRole</td>
    </tr>
    <tr>
      <td>recipient</td>
      <td>AU eRequesting PractitionerRole, AU eRequesting Patient</td>
      <td>AU eRequesting Patient</td>
      <td>AU eRequesting PractitionerRole</td>
    </tr>
</table>

