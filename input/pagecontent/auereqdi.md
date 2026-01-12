[Australian eRequesting Data for Interoperability (AUeReqDI)](https://sparked.csiro.au/index.php/products-resources/auereqdi/) is the product of a national clinician focused requirements gathering project operating as part of the [Sparked AU FHIR Accelerator](https://sparked.csiro.au/).  AUeReqDI outputs form a set of data requirements to be considered and referred to as part of the development and definition of AU eRequesting. 

The primary intent of AUeReqDI is to design and govern a collection of coherent, reusable building blocks known as ‘data groups’. These data groups define what clinical information is required to support eRequests. However, they do not specify how the data is exchanged; this is the role of the FHIR standard. AUeReqDI is not required to be implemented as a whole single product.  AUeReqDI builds upon and complements the foundational [Australian Clinical Data for Interoperability (AUCDI)](https://sparked.csiro.au/index.php/products-resources/aucdi/) and focuses on the specific use case of eRequesting.


AUeReqDI Release 1 (R1) is focused on an agreement of the minimum data required to support standardised eRequesting within the Australian health context, and forms a common language foundation that allows systems to exchange semantically accurate data for eRequests. It incorporates and builds upon prior work from national and international programs and initiatives, including the Royal College of Pathologists of Australasia (RCPA)'s Pathology information, Terminology and Units Standardisation (PITUS) framework and the Royal Australian New Zealand College of Radiology (RANZCR's) Radiology Referral Set.

AU eRequesting is intended to provide an implementable standard for FHIR based interfaces for diagnostic requesting in Australia, providing:
- an exchange standard for AUeReqDI (the underpinning clinical data model)
- data model and RESTful API interactions that set minimum expectations for a system to create, update, search, and retrieve electronic diagnostic requests
- a foundation focused on pathology and medical imaging requests in community-based care provision, with consideration for future eRequesting use cases beyond this scope 

With AUeReqDI defining clinical data requirements and FHIR AU eRequesting providing the Implementation Guide for FHIR-based electronic requesting of diagnostic imaging and pathology services, an interpretation of AUeReqDI is necessary which is undertaken through the community.

### AU eRequesting, AUeReqDI and AUCDI Versions

AU eRequesting, AUeReqDI and AUCDI are updated periodically. AUeReqDI R1 contains data groups required to facilitate the exchange of a pathology test and medical imaging request, and reuses data groups from AUCDI where relevant.

AUeReqDI R1 is aligned with AUCDI R1.

AUCDI R2 was published after AUeReqDI R1, introducing additional and expanded data groups to support different use cases. These are not reflected in AUeReqDI R1.

The following table shows the version alignment between AU eRequesting, AUeReqDI and AUCDI:
<table border="1" cellspacing="0" cellpadding="0" width="50%">
  <tr style="background-color: #f2f2f2;">
    <th>AU eRequesting Version</th>
    <th>AUeReqDI Version</th>
    <th>AUCDI Version</th>
  </tr>
  <tr>
    <td>1.0.0</td>
    <td>R1</td>
    <td>R1</td>
  </tr>
</table>

### AUeReqDI Mappings Into AU eRequesting

The table below shows the relationship between AUeReqDI and AUCDI Data Groups and Elements and AU eRequesting and AU Core profiles.<br/>
Column attribute descriptions are as follows:
- <b>AUeReqDI/AUCDI Data Group</b>: Represents a grouping of one or more AUeReqDI or AUCDI Data Elements.
- <b>AUeReqDI/AUCDI Data Element</b>: Represents a single, discrete clinical concept defined by AUeReqDI or AUCDI.
- <b>AU eRequesting Profile(s)/AU Core Profile(s)</b>: Represents the mapping of AUeReqDI or AUCDI Data Groups and Data Elements to AU eRequesting or AU Core FHIR artefacts.
- <b>FHIR Path</b>: The specific path in the FHIR standards for each AUeReqDI or AUCDI Data Element within, showing where and how to implement these elements in FHIR-based systems. 
- <b>Comment</b>: Additional information about the mapping including an explanation of where an element or group is not yet mapped.

<table border="1" cellspacing="0" cellpadding="0" width="100%">
<thead>
  <tr style="background-color: #f2f2f2;">
    <th>AUeReqDI Data Group</th>
    <th colspan="2">AUeReqDI Data Element</th>
    <th>AU eRequesting Profile(s)</th>
    <th>FHIR Path</th>
    <th>Comment</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td rowspan="9">Service request</td>
    <td colspan="2">Service name</td>
    <td><a href="StructureDefinition-au-erequesting-diagnosticrequest.html">AU eRequesting Diagnostic Request</a></td>
    <td><code>ServiceRequest.code</code></td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Clinical indication</td>
    <td><a href="StructureDefinition-au-erequesting-diagnosticrequest.html">AU eRequesting Diagnostic Request</a></td>
    <td><code>ServiceRequest.reasonCode</code></td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Clinical context</td>
    <td><a href="StructureDefinition-au-erequesting-diagnosticrequest.html">AU eRequesting Diagnostic Request</a></td>
    <td><code>ServiceRequest.supportingInfo:clinicalContext</code></td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Urgency</td>
    <td><a href="StructureDefinition-au-erequesting-diagnosticrequest.html">AU eRequesting Diagnostic Request</a></td>
    <td><code>ServiceRequest.priority</code></td>
    <td></td>
  </tr>
   <tr>
    <td colspan="2">Service timing</td>
    <td><a href="StructureDefinition-au-erequesting-diagnosticrequest.html">AU eRequesting Diagnostic Request</a></td>
    <td><code>ServiceRequest.occurrence[x]</code></td>
    <td>This element is choice between occurrenceTiming | occurrenceDateTime | occurrencePeriod.</td>
  </tr>
   <tr>
    <td colspan="2">Comment</td>
    <td><a href="StructureDefinition-au-erequesting-diagnosticrequest.html">AU eRequesting Diagnostic Request</a></td>
    <td><code>ServiceRequest.note</code></td>
    <td></td>
  </tr>
   <tr>
    <td colspan="2">Distribution list</td>
    <td><a href="StructureDefinition-au-erequesting-communicationrequest-copyto.html">AU eRequesting CommunicationRequest CopyTo</a></td>
    <td><code>CommunicationRequest.recipient</code></td>
    <td></td>
  </tr>
   <tr>
    <td colspan="2">Urgent contact</td>
    <td><a href="StructureDefinition-au-erequesting-communicationrequest-urgentprovider.html">AU eRequesting CommunicationRequest Urgent Provider</a></td>
    <td><code>CommunicationRequest.recipient</code></td>
    <td></td>
  </tr>
   <tr>
    <td colspan="2">Billing guidance</td>
    <td><a href="StructureDefinition-au-erequesting-diagnosticrequest.html">AU eRequesting Diagnostic Request</a><br><br><a href="StructureDefinition-au-erequesting-coverage.html">AU eRequesting Coverage</a></td>
    <td><code>ServiceRequest.insurance</code><br><br><code>Coverage</code></td>
    <td><code>ServiceRequest.insurance</code> references a Coverage resource.</td>
  </tr>
  <tr>
    <td rowspan="12">Medical imaging request</td>
    <td colspan="2">Test name</td>
    <td><a href="StructureDefinition-au-erequesting-servicerequest-imag.html">AU eRequesting Imaging Request</a></td>
    <td><code>ServiceRequest.code</code></td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Modality</td>
    <td><a href="StructureDefinition-au-erequesting-servicerequest-imag.html">AU eRequesting Imaging Request</a></td>
    <td><code>ServiceRequest.code</code></td>
    <td></td>
  </tr>
    <tr>
    <td colspan="2">Target body site</td>
   <td><a href="StructureDefinition-au-erequesting-servicerequest-imag.html">AU eRequesting Imaging Request</a></td>
    <td><code>ServiceRequest.code</code> | <code>ServiceRequest.bodySite</code></td>
    <td></td>
  </tr>
    <tr>
    <td colspan="2">Contrast use</td>
    <td><a href="StructureDefinition-au-erequesting-servicerequest-imag.html">AU eRequesting Imaging Request</a></td>
    <td><code>ServiceRequest.code</code></td>
    <td></td>
  </tr>
    <tr>
    <td colspan="2">Clinical indication</td>
    <td><a href="StructureDefinition-au-erequesting-servicerequest-imag.html">AU eRequesting Imaging Request</a></td>
    <td><code>ServiceRequest.reasonCode</code></td>
    <td></td>
  </tr>
    <tr>
    <td colspan="2">Clinical context</td>
    <td><a href="StructureDefinition-au-erequesting-servicerequest-imag.html">AU eRequesting Imaging Request</a></td>
    <td><code>ServiceRequest.supportingInfo:clinicalContext</code></td>
    <td></td>
  </tr>
    <tr>
    <td colspan="2">Urgency</td>
    <td><a href="StructureDefinition-au-erequesting-servicerequest-imag.html">AU eRequesting Imaging Request</a></td>
    <td><code>ServiceRequest.priority</code></td>
    <td></td>
  </tr>
    <tr>
    <td colspan="2">Service timing</td>
    <td><a href="StructureDefinition-au-erequesting-servicerequest-imag.html">AU eRequesting Imaging Request</a></td>
    <td><code>ServiceRequest.occurrence[x]</code></td>
    <td>This element is choice between occurrenceTiming | occurrenceDateTime | occurrencePeriod.</td>
  </tr>
    <tr>
    <td colspan="2">Comment</td>
    <td><a href="StructureDefinition-au-erequesting-servicerequest-imag.html">AU eRequesting Imaging Request</a></td>
    <td><code>ServiceRequest.note</code></td>
    <td></td>
  </tr>
    <tr>
    <td colspan="2">Distribution list</td>
    <td><a href="StructureDefinition-au-erequesting-communicationrequest-copyto.html">AU eRequesting CommunicationRequest CopyTo</a></td>
    <td><code>CommunicationRequest.recipient</code></td>
    <td></td>
  </tr>
    <tr>
    <td colspan="2">Urgent contact</td>
    <td><a href="StructureDefinition-au-erequesting-communicationrequest-urgentprovider.html">AU eRequesting CommunicationRequest Urgent Provider</a></td>
    <td><code>CommunicationRequest.recipient</code></td>
    <td></td>
  </tr>
    <tr>
    <td colspan="2">Billing guidance</td>
    <td><a href="StructureDefinition-au-erequesting-servicerequest-imag.html">AU eRequesting Imaging Request</a><br><br><a href="StructureDefinition-au-erequesting-coverage.html">AU eRequesting Coverage</a></td>
    <td><code>ServiceRequest.insurance</code><br><br><code>Coverage</code></td>
    <td><code>ServiceRequest.insurance</code> references a Coverage resource.</td>
  </tr>
 <tr>
    <td rowspan="10">Pathology test request</td>
    <td colspan="2">Test name</td>
    <td><a href="StructureDefinition-au-erequesting-servicerequest-path.html">AU eRequesting Pathology Request</a></td>
    <td><code>ServiceRequest.code</code></td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Fasting status</td>
    <td><a href="StructureDefinition-au-erequesting-servicerequest-path.html">AU eRequesting Pathology Request</a></td>
    <td><code>ServiceRequest.extension:fastingPrecondition</code></td>
    <td></td>
  </tr>
    <tr>
    <td colspan="2">Clinical indication</td>
    <td><a href="StructureDefinition-au-erequesting-servicerequest-path.html">AU eRequesting Pathology Request</a></td>
    <td><code>ServiceRequest.reasonCode</code></td>
    <td></td>
  </tr>
    <tr>
    <td colspan="2">Clinical context</td>
    <td><a href="StructureDefinition-au-erequesting-servicerequest-path.html">AU eRequesting Pathology Request</a></td>
    <td><code>ServiceRequest.supportingInfo.clinicalContext</code></td>
    <td></td>
  </tr>
    <tr>
    <td colspan="2">Urgency</td>
    <td><a href="StructureDefinition-au-erequesting-servicerequest-path.html">AU eRequesting Pathology Request</a></td>
    <td><code>ServiceRequest.priority</code></td>
    <td></td>
  </tr>
    <tr>
    <td colspan="2">Service timing</td>
    <td><a href="StructureDefinition-au-erequesting-servicerequest-path.html">AU eRequesting Pathology Request</a></td>
    <td><code>ServiceRequest.occurrence[x]</code></td>
    <td>This element is choice between occurrenceTiming | occurrenceDateTime | occurrencePeriod.</td>
  </tr>
    <tr>
    <td colspan="2">Comment</td>
    <td><a href="StructureDefinition-au-erequesting-servicerequest-path.html">AU eRequesting Pathology Request</a></td>
    <td><code>ServiceRequest.note</code></td>
    <td></td>
  </tr>
    <tr>
    <td colspan="2">Distribution list</td>
    <td><a href="StructureDefinition-au-erequesting-communicationrequest-copyto.html">AU eRequesting CommunicationRequest CopyTo</a></td>
    <td><code>CommunicationRequest.recipient</code></td>
    <td></td>
  </tr>
    <tr>
    <td colspan="2">Urgent contact</td>
    <td><a href="StructureDefinition-au-erequesting-communicationrequest-urgentprovider.html">AU eRequesting CommunicationRequest Urgent Provider</a></td>
    <td><code>CommunicationRequest.recipient</code></td>
    <td></td>
  </tr>
    <tr>
    <td colspan="2">Billing guidance</td>
    <td><a href="StructureDefinition-au-erequesting-servicerequest-path.html">AU eRequesting Pathology Request</a><br><br><a href="StructureDefinition-au-erequesting-coverage.html">AU eRequesting Coverage</a></td>
    <td><code>ServiceRequest.insurance</code><br><br><code>Coverage</code></td>
    <td><code>ServiceRequest.insurance</code> references a Coverage resource.</td>
  </tr>
  <tr>
    <td rowspan="4">Implanted medical device summary</td>
    <td colspan="2">Device type name</td>
    <td>Device</td>
    <td><code>Device.type</code></td>
    <td rowspan="4">This AUeReqDI Data Group is a <a href="future.html#future-candidate-requirements-under-consideration">Future Candidate Requirement Under Consideration</a>. Future versions of AU eRequesting will develop and test approaches to addressing Implanted medical device summary.</td>
  </tr>
  <tr>
    <td colspan="2">Current status</td>
    <td>Device</td>
    <td><code>Device.status</code></td>
  </tr>
    <tr>
    <td colspan="2">Overall comment</td>
    <td>Device</td>
    <td><code>Device.note</code></td>
  </tr>
    <tr>
    <td colspan="2">Last updated</td>
    <td>-</td>
    <td>-</td>
  </tr>
  <tr>
    <td>Pregnancy summary (AUCDI R3+ backlog)</td>
    <td colspan="2">TBD</td>
    <td><a href="StructureDefinition-au-erequesting-diagnosticrequest.html">AU eRequesting Diagnostic Request</a></td>
    <td><code>ServiceRequest.supportingInfo:pregnancyStatus</code></td>
    <td>Proposed to correspond to a future AUCDI pregnancy summary concept (in the AUCDI R3+ backlog), which is expected to describe pregnancy status within a single pregnancy and potentially include more granular states to encompass a continuum of pregnancy states. In AU eRequesting R1, the pregnancy status is constrained to Pregnant only, as advised by AUCDI authors, to ensure future compatibility.</td>
  </tr>
</tbody>
<thead>
  <tr style="background-color: #f2f2f2;">
    <th>AUCDI Data Group</th>
    <th colspan="2">AUCDI Data Element</th>
    <th>AU Core/AU eRequesting Profile(s)</th>
    <th>FHIR Path</th>
    <th>Comment</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td rowspan="4">Adverse reaction risk summary</td>
    <td colspan="2">Substance name</td>
    <td><a href="https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-allergyintolerance.html">AU Core AllergyIntolerance</a></td>
    <td><code>AllergyIntolerance.code</code></td>
    <td rowspan="4">This AUCDI Data Group is a <a href="future.html#future-candidate-requirements-under-consideration">Future Candidate Requirement Under Consideration</a>. Future versions of AU eRequesting will develop and test approaches to addressing Adverse reaction risk summary.</td>
  </tr>
  <tr>
    <td colspan="2">Manifestation</td>
    <td><a href="https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-allergyintolerance.html">AU Core AllergyIntolerance</a></td>
    <td><code>AllergyInterolance.reaction</code></td>
  </tr>
  <tr>
    <td colspan="2">Comment</td>
    <td><a href="https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-allergyintolerance.html">AU Core AllergyIntolerance</a></td>
    <td><code>AllergyIntolerance.note</code></td>
  </tr>
  <tr>
    <td colspan="2">Last updated</td>
    <td>-</td>
    <td>-</td>
  </tr>
  <tr>
    <td rowspan="5">Problem/Diagnosis summary</td>
    <td colspan="2">Problem / Diagnosis name</td>
    <td><a href="https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-condition.html">AU Core Condition</a></td>
    <td><code>Condition.code</code></td>
    <td rowspan="5">This AUCDI Data Group is a <a href="future.html#future-candidate-requirements-under-consideration">Future Candidate Requirement Under Consideration</a>. Future versions of AU eRequesting will develop and test approaches to addressing Problem/Diagnosis summary.</td>
  </tr>
  <tr>
    <td colspan="2">Body site/laterality</td>
    <td><a href="https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-condition.html">AU Core Condition</a></td>
    <td><code>Condition.code</code></td>
  </tr>
  <tr>
    <td colspan="2">Status</td>
    <td><a href="https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-condition.html">AU Core Condition</a></td>
    <td><code>Condition.clinicalStatus</code></td>
  </tr>
  <tr>
    <td colspan="2">Comment</td>
    <td><a href="https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-condition.html">AU Core Condition</a></td>
    <td><code>Condition.note</code></td>
  </tr>
  <tr>
    <td colspan="2">Last updated</td>
    <td>-</td>
    <td>-</td>
  </tr>
    <tr>
    <td rowspan="4">Sex and gender summary</td>
    <td colspan="2">Sex assigned at birth</td>
    <td><a href="StructureDefinition-au-erequesting-patient.html">AU eRequesting Patient</a></td>
    <td><code>Patient.extension.where(url='http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender')</code></td>
    <td>The <a href="http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender">Person Recorded Sex or Gender extension</a> is profiled by <a href="https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-rsg-sexassignedab.html">AU Core Sex Assigned At Birth (RSG)</a> to represent the concept of Sex assigned at birth.</td>
  </tr>
  <tr>
    <td colspan="2">Gender identity</td>
    <td><a href="StructureDefinition-au-erequesting-patient.html">AU eRequesting Patient</a></td>
    <td><code>Patient.extension.where(url='http://hl7.org/fhir/StructureDefinition/individual-genderIdentity')</code></td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Pronoun/s</td>
    <td><a href="StructureDefinition-au-erequesting-patient.html">AU eRequesting Patient</a></td>
    <td><code>Patient.extension.where(url='http://hl7.org/fhir/StructureDefinition/individual-pronouns')</code></td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Last updated</td>
    <td>-</td>
    <td>-</td>
    <td>This AUCDI element is a <a href="https://build.fhir.org/ig/hl7au/au-fhir-core/future.html#future-candidate-requirements-under-consideration">Future Candidate Requirement Under Consideration</a> in AU Core. Future versions of AU Core will develop and test approaches to addressing Last Updated.</td>
  </tr>
</tbody>
</table>
