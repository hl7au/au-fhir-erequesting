[Australian eRequesting Data for Interoperability (AUeReqDI)](https://sparked.csiro.au/index.php/sparked-products-resources/auereqdi/auereqdi-release-1/) is the product of a national clinician focussed requirements gathering project operating as part of the [Sparked AU FHIR Accelerator](https://sparked.csiro.au/).  AUeReqDI outputs form a set of data requirements to be considered and referred to as part of the development and definition of AU eRequesting. 

The primary intent of AUeReqDI is to design and govern a collection of coherent, reusable building blocks known as ‘data groups’. These data groups specify “what” the clinical requirements of the clinical information that should be included for eRequests. However, it does not specify “how” the data is exchanged; this is the role fulfilled by the FHIR standard. AUeReqDI is not required to be implemented as a whole single product.  AUeReqDI builds upon and complements the foundational [Australian Core Data for Interoperability (AUCDI)](https://sparked.csiro.au/index.php/sparked-products-resources/australian-core-data-for-interoperability/aucdi-release-1/) and focuses on the specific use case of eRequesting.

AUeReqDI Release 1 (R1) is focused on an agreement of the minimum data required to support standardised eRequesting within the Australian health context, and forms a common language foundation that allows systems to exchange semantically accurate data for eRequests. It incorporates and builds upon prior work from national and international programs and initiatives, including the Royal College of Pathologists of Australiasia (RCPA)'s Pathology information, Terminology and Units Standardisation (PITUS) framework and the Royal Australian New Zealand College of Radiology (RANZCR's) Radiology Referral Set.

With AUeReqDI defining clinical data requirements and FHIR AU eRequesting providing the Implementation Guide for FHIR-based electronic requesting of diagnostic imaging and pathology services, an interpretation of AUeReqDI is necessary which is undertaken through the community.

Updates to AU eRequesting and AU Core depend upon community input and we encourage our audience to submit questions and feedback on implementation guides by clicking on the Propose a change link in the footer of every page.  We encourage requesting any necessary clarifications to AUeReqDI or AUCDI through through the respective process that helps inform future updates to FHIR AU eRequesting and AU Core. 


### AUeReqDI mappings into AU eRequesting

The table below shows the relationship between AUeReqDI and AUCDI Data Groups and Elements and AU eRequesting and AU Core profiles.<br/>
Column attribute descriptions are as follows:
- <b>AUeReqDI/AUCDI Data Group</b>: Represents a grouping of one or more AUeReqDI or AUCDI Data Elements.
- <b>AUeReqDI/AUCDI Data Element</b>: Represents a single, discreet clinical concept defined by AUeReqDI or AUCDI.
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
    <td>TBD</td>
    <td>TBD</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Clinical indication</td>
    <td>TBD</td>
    <td>TBD</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Clinical context</td>
    <td>TBD</td>
    <td>TBD</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Urgency</td>
    <td>TBD</td>
    <td>TBD</td>
    <td></td>
  </tr>
   <tr>
    <td colspan="2">Service due</td>
    <td>TBD</td>
    <td>TBD</td>
    <td></td>
  </tr>
   <tr>
    <td colspan="2">Comment</td>
    <td>TBD</td>
    <td>TBD</td>
    <td></td>
  </tr>
   <tr>
    <td colspan="2">Distribution list</td>
    <td>TBD</td>
    <td>TBD</td>
    <td></td>
  </tr>
   <tr>
    <td colspan="2">Urgent contact</td>
    <td>TBD</td>
    <td>TBD</td>
    <td></td>
  </tr>
   <tr>
    <td colspan="2">Billing guidance</td>
    <td>TBD</td>
    <td>TBD</td>
    <td></td>
  </tr>
  <tr>
    <td rowspan="12">Medical imaging request</td>
    <td colspan="2">Test name</td>
    <td>TBD</td>
    <td>TBD</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Modality</td>
    <td>TBD</td>
    <td>TBD</td>
    <td></td>
  </tr>
    <tr>
    <td colspan="2">Target body site</td>
    <td>TBD</td>
    <td>TBD</td>
    <td></td>
  </tr>
    <tr>
    <td colspan="2">Contrast use</td>
    <td>TBD</td>
    <td>TBD</td>
    <td></td>
  </tr>
    <tr>
    <td colspan="2">Clinical indication</td>
    <td>TBD</td>
    <td>TBD</td>
    <td></td>
  </tr>
    <tr>
    <td colspan="2">Clinical context</td>
    <td>TBD</td>
    <td>TBD</td>
    <td></td>
  </tr>
    <tr>
    <td colspan="2">Urgency</td>
    <td>TBD</td>
    <td>TBD</td>
    <td></td>
  </tr>
    <tr>
    <td colspan="2">Service due</td>
    <td>TBD</td>
    <td>TBD</td>
    <td></td>
  </tr>
    <tr>
    <td colspan="2">Comment</td>
    <td>TBD</td>
    <td>TBD</td>
    <td></td>
  </tr>
    <tr>
    <td colspan="2">Distribution list</td>
    <td>TBD</td>
    <td>TBD</td>
    <td></td>
  </tr>
    <tr>
    <td colspan="2">Urgent contact</td>
    <td>TBD</td>
    <td>TBD</td>
    <td></td>
  </tr>
    <tr>
    <td colspan="2">Billing guidance</td>
    <td>TBD</td>
    <td>TBD</td>
    <td></td>
  </tr>
 <tr>
    <td rowspan="10">Pathology test request</td>
    <td colspan="2">Test name</td>
    <td>TBD</td>
    <td>TBD</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Fasting status</td>
    <td>TBD</td>
    <td>TBD</td>
    <td></td>
  </tr>
    <tr>
    <td colspan="2">Clinical indication</td>
    <td>TBD</td>
    <td>TBD</td>
    <td></td>
  </tr>
    <tr>
    <td colspan="2">Clinical context</td>
    <td>TBD</td>
    <td>TBD</td>
    <td></td>
  </tr>
    <tr>
    <td colspan="2">Urgency</td>
    <td>TBD</td>
    <td>TBD</td>
    <td></td>
  </tr>
    <tr>
    <td colspan="2">Service due</td>
    <td>TBD</td>
    <td>TBD</td>
    <td></td>
  </tr>
    <tr>
    <td colspan="2">Comment</td>
    <td>TBD</td>
    <td>TBD</td>
    <td></td>
  </tr>
    <tr>
    <td colspan="2">Distribution list</td>
    <td>TBD</td>
    <td>TBD</td>
    <td></td>
  </tr>
    <tr>
    <td colspan="2">Urgent contact</td>
    <td>TBD</td>
    <td>TBD</td>
    <td></td>
  </tr>
    <tr>
    <td colspan="2">Billing guidance</td>
    <td>TBD</td>
    <td>TBD</td>
    <td></td>
  </tr>
  <tr>
    <td rowspan="10">Implanted medical device summary</td>
    <td colspan="2">Device type name</td>
    <td>TBD</td>
    <td>TBD</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Overall status</td>
    <td>TBD</td>
    <td>TBD</td>
    <td></td>
  </tr>
    <tr>
    <td colspan="2">Overall comment</td>
    <td>TBD</td>
    <td>TBD</td>
    <td></td>
  </tr>
    <tr>
    <td colspan="2">Last updated</td>
    <td>TBD</td>
    <td>TBD</td>
    <td></td>
  </tr>
</tbody>
<thead>
  <tr style="background-color: #f2f2f2;">
    <th>AUCDI Data Group</th>
    <th colspan="2">AUCDI Data Element</th>
    <th>AU Core Profile(s)</th>
    <th>FHIR Path</th>
    <th>Comment</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td rowspan="4">Adverse reaction risk summary</td>
    <td colspan="2">Substance name</td>
    <td><a href="https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-allergyintolerance.html">AU Core AllergyIntolerance</a></td>
    <td>AllergyIntolerance.code</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Manifestation</td>
    <td><a href="https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-allergyintolerance.html">AU Core AllergyIntolerance</a></td>
    <td>AllergyInterolance.reaction</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Comment</td>
    <td><a href="https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-allergyintolerance.html">AU Core AllergyIntolerance</a></td>
    <td>AllergyIntolerance.note</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Last updated</td>
    <td>-</td>
    <td>-</td>
    <td>This AUCDI element is a <a href="https://build.fhir.org/ig/hl7au/au-fhir-core/future.html#future-candidate-requirements-under-consideration">Future Candidate Requirement Under Consideration</a>. Future versions of AU Core will develop and test approaches to addressing Last Updated.</td>
  </tr>
  <tr>
    <td rowspan="5">Problem/Diagnosis summary</td>
    <td colspan="2">Problem / Diagnosis name</td>
    <td><a href="https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-condition.html">AU Core Condition</a></td>
    <td>Condition.code</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Body site/laterality</td>
    <td><a href="https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-condition.html">AU Core Condition</a></td>
    <td>Condition.code</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Status</td>
    <td><a href="https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-condition.html">AU Core Condition</a></td>
    <td>Condition.clinicalStatus</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Comment</td>
    <td><a href="https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-condition.html">AU Core Condition</a></td>
    <td>Condition.note</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Last updated</td>
    <td>-</td>
    <td>-</td>
    <td>This AUCDI element is a <a href="https://build.fhir.org/ig/hl7au/au-fhir-core/future.html#future-candidate-requirements-under-consideration">Future Candidate Requirement Under Consideration</a>. Future versions of AU Core will develop and test approaches to addressing Last Updated.</td>
  </tr>
    <tr>
    <td rowspan="4">Sex and gender summary</td>
    <td colspan="2">Sex assigned at birth</td>
    <td><a href="https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html">AU Core Patient</a></td>
    <td>Patient.extension.where(url='http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender')</td>
    <td>The <a href="http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender">Person Recorded Sex or Gender extension</a> is profiled by <a href="https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-rsg-sexassignedab.html">AU Core Sex Assigned At Birth (RSG)</a> to represent the concept of Sex assigned at birth.</td>
  </tr>
  <tr>
    <td colspan="2">Gender identity</td>
    <td><a href="https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html">AU Core Patient</a></td>
    <td>Patient.extension.where(url='http://hl7.org/fhir/StructureDefinition/individual-genderIdentity')</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Pronoun/s</td>
    <td><a href="https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html">AU Core Patient</a></td>
    <td>Patient.extension.where(url='http://hl7.org/fhir/StructureDefinition/individual-pronouns')</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Last updated</td>
    <td>-</td>
    <td>-</td>
    <td>This AUCDI element is a <a href="https://build.fhir.org/ig/hl7au/au-fhir-core/future.html#future-candidate-requirements-under-consideration">Future Candidate Requirement Under Consideration</a>. Future versions of AU Core will develop and test approaches to addressing Last Updated.</td>
  </tr>
</tbody>
</table>
