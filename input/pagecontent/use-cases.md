## AU eRequesting R1 use cases
This page contains the use cases for AU eRequesting for the first release of the TDG Implementation Guide (R1). This is a working page and will reflect the current state of agreement by the TDG as well as the current draft of the use case material.

{% include use-case-feedback.md -%}

### Diagnostic imaging use cases

<table border="1">
<thead>
  <tr>
    <th style="width:5%">ID</th>
    <th style="width:45%">Description</th>
    <th style="width:17%">Actors</th>
    <th style="width:17%">Systems</th>
    <th style="width:18%">Data Groups</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>D01</td>
    <td><strong>Request for diagnostic imaging (generic data collection requirements)</strong><br><br>A requesting clinician requires diagnostic imaging for a patient, following a consultation about an affected body part. The request contains information such as: Patient demographics (including sex and gender), Targeted body part, Type of imaging required, Reason for requesting imaging, relevant clinical history, any precautions about the patient’s other conditions such as device implants/allergies/medicines/related pathology results, destination(s) where the results need to be sent back to (including Copy To/Carbon Copy/copy to practitioners, as well as the original requestor), and information to support billing.</td>
    <td>Patient<br/>Requesting Practitioner (e.g. GP)</td>
    <td>Requesting System</td>
    <td>Patient Details<br>Requestor Details<br>Requested Service Details<br>Relevant Clinical Details<br>Billing Details<br>Preferred Reporting Clinician</td>
  </tr>
  <tr>
    <td>D02</td>
    <td><strong>Request for diagnostic imaging (Assigned request)</strong><br><br>A requesting clinician decides that an MRI head scan is indicated for a patient. The clinician and patient agree upon a local diagnostic imaging service provider and the clinician submits the eRequest for the scan directly to that provider. The patient is not required to present an eRequest token to the provider when they make a booking or attend the test.</td>
    <td>Patient<br>Requesting Practitioner (e.g. GP)<br>Diagnostic imaging service provider</td>
    <td>Requesting System<br>Service provider booking system</td>
    <td>Patient Details<br>Requestor Details<br>Requested Service Details<br>Relevant Clinical Details<br>Billing Details<br>Provider Details</td>
  </tr>
  <tr>
    <td>D03</td>
    <td><strong>Request for diagnostic examination (Unassigned request)</strong><br><br>A requesting clinician requires a chest X-Ray for a patient, following a consultation about pain in their torso. The clinician creates the eRequest, then generates a token and gives this to the patient. The patient researches local diagnostic imaging service providers and makes a booking with one of them. When the patient makes a booking or attends the appointment, they present the token to the service provider who uses it to download the eRequest information into their booking system.</td>
    <td>Patient<br>Requesting Practitioner (e.g. GP)<br>Diagnostic imaging service provider</td>
    <td>Requesting System<br>Service provider booking system<br>Token management system</td>
    <td>Patient Details<br>Requestor Details<br>Requested Service Details<br>Relevant Clinical Details<br>Billing Details<br>Token Identifier</td>
  </tr>
  <tr>
    <td>D04</td>
    <td><strong>Request for diagnostic examination (Reassigned request)</strong><br><br>A requesting clinician requires a CT Brain scan (with contrast) for a patient, following a consultation about neurological  symptoms. The clinician and patient agree upon a local diagnostic imaging service provider and the clinician submits the eRequest for the scan to that provider.  Before the patient is due to attend the provider, the patient changes their mind and elects to have the test performed by a different provider. The patient makes a booking with the new provider and when they attend the appointment they present a token to the service provider who uses it to download the eRequest information into their booking system.</td>
    <td>Patient<br>Requesting Practitioner (e.g. GP)<br>Diagnostic imaging service provider</td>
    <td>Requesting System<br>Service provider booking system<br>Token management system</td>
    <td>Patient Details<br>Requestor Details<br>Requested Service Details<br>Relevant Clinical Details<br>Billing Details<br>Provider Details (initial provider)<br>Token Identifier?</td>
  </tr>
</tbody>
</table>

### Pathology use cases

<table border="1">
<thead>
  <tr>
    <th style="width:5%">ID</th>
    <th style="width:45%">Description</th>
    <th style="width:17%">Actors</th>
    <th style="width:17%">Systems</th>
    <th style="width:18%">Data Groups</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>P10</td>
    <td><strong>Request for a pathology test (generic data collection requirements)</strong><br><br>A requesting clinician requires a pathology test for a patient, following a consultation. The request contains information such as: Patient demographics (including sex and gender), Specimen type, Type of test required, Reason for requesting, any precautions about the patient’s other conditions such as device implants/allergies/medicines/related pathology results, destination(s) where the results need to be sent back to (including Copy To/Carbon Copy/copy to practitioners, as well as the original requestor), and information to support billing.</td>
    <td>Patient<br>Requesting Practitioner (e.g. GP)<br>Pathology service provider</td>
    <td>Requesting System</td>
    <td>Patient Details<br>Requestor Details<br>Requested Service Details<br>Relevant Clinical Details<br>Billing Details<br>Preferred Reporting Clinician</td>
  </tr>
  <tr>
    <td>P02</td>
    <td><strong>Request for a pathology test (Assigned request)</strong><br><br>A requesting clinician requires a Liver Function Test to be performed on a patient to assist with diagnosing a condition. The clinician creates the request and after discussing service providers with the patient, sends it directly to a pathology service that the clinician and patient agree upon.</td>
    <td>Patient<br>Requesting Practitioner (e.g. GP)<br>Pathology service provider</td>
    <td>Requesting System<br>Service provider booking system</td>
    <td>Patient Details<br>Requestor Details<br>Requested Service Details<br>Relevant Clinical Details<br>Billing Details<br>Provider Details</td>
  </tr>
  <tr>
    <td>P01</td>
    <td><strong>Request for a pathology test (Unassigned request)</strong><br><br>A requesting clinician requires a Full Blood Count test to be performed on a patient to assist with diagnosing a condition. The clinician creates the eRequest, then generates a token and gives this to the patient. The patient researches local pathology service providers and selects one to perform the test. The patient presents the token to the service provider who uses it to download the eRequest information into their Collection system or Laboratory Information System (LIS).</td>
    <td>Patient<br>Requesting Practitioner (e.g. GP)<br>Pathology service provider</td>
    <td>Requesting System<br>Service provider booking system<br>Token management system</td>
    <td>Patient Details<br>Requestor Details<br>Requested Service Details<br>Relevant Clinical Details<br>Billing Details<br>Token identifier</td>
  </tr>

  <tr>
    <td>P03</td>
    <td><strong>Request for a pathology test (Reassigned request)</strong><br><br>A requesting clinician requires a Thyroid Stimulating Hormone (TSH) test to be performed on a patient. The clinician creates the request and after discussing service providers with the patient, sends it directly to a pathology service that the clinician and patient agree upon. After leaving the clinician's office, the patient changes their mind and elects to have the test performed by a different provider. The patient proceeds directly to the new provider and presents a token for the request, which the provider uses to download the eRequest information into their testing management system.</td>
    <td>Patient<br>Requesting Practitioner (e.g. GP)<br>Pathology service provider</td>
    <td>Requesting System<br>Service provider booking system</td>
    <td>Patient Details<br>Requestor Details<br>Requested Service Details (includes site to be tested)<br>Relevant Clinical Details<br>Billing Details<br>Provider Details (initial provider)<br>Token Identifier?</td>
  </tr>
  <tr>
    <td>P09</td>
    <td><strong>Rule 3 INR Test</strong><br><br>A clinician requests an ongoing International Normalized Ratio (INR) test specifying a "Rule 3 Exemption" for a patient undergoing anticoagulant therapy. The requester requires 6 INR tests to be performed over the next 6 months.</td>
    <td>Patient<br>Requesting Practitioner (e.g. GP)<br>Pathology service provider</td>
    <td>Patient<br>Requesting System<br>Service Provider's LIS system</td>
    <td>Patient Details<br>Requestor Details<br>Requested Service Details<br>Relevant Clinical Details<br>Billing Details</td>
  </tr>
</tbody>
</table>

### General use cases

<table border="1">
<thead>
  <tr>
    <th width="5%">ID</th>
    <th width="45%">Description</th>
    <th width="17%">Actors</th>
    <th width="17%">Systems</th>
    <th width="18%">Data Groups</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>G01</td>
    <td><strong>Tracking fulfilment of a Service Request</strong><br><br>A GP checks the status of a requested test for a patient, e.g. Accepted, Cancelled, Pending, Collected, Preliminary, Completed, etc.</td>
    <td>Requesting Practitioner (e.g. GP)</td>
    <td>Requesting System<br>EHR</td>
    <td>Provider Details<br>Token Identifier?<br>Patient Identifiers?</td>
  </tr>
  <tr>
    <td>G02</td>
    <td><strong>Cancelling an eRequest (requestor)</strong><br><br>An eRequest is revoked/cancelled by the requesting health care professional because the requested service is no longer required.</td>
    <td>Requesting Practitioner (e.g. GP)</td>
    <td>Requesting System<br>EHR</td>
    <td>Provider Details<br>Token Identifier?<br>Patient Identifiers?</td>
  </tr>
  <tr>
    <td>G03</td>
    <td><strong>Cancelling an eRequest (provider)</strong><br><br>An eRequest is revoked/cancelled by the service provider because they are no longer able to provide the requested service for the patient. This cancellation has occurred before the provider has started the service (e.g. before the patient has attended the provider), hence it is not considered a non-fulfilment of the service.</td>
    <td>Service Provider</td>
    <td>EHR</td>
    <td>Requestor Details<br>Token Identifier?<br>Patient Identifiers?</td>
  </tr>
  <tr>
    <td>G07</td>
    <td><strong>Specification of results to be copied to another clinician</strong><br><br>A hospital clinician requests diagnostic imaging for a patient after they have been discharged from the hospital, as a follow-up test. The results are requested to be sent to the hospital clinician and the patient's GP.</td>
    <td>Hospital Clinician / Specialist<br>GP / Specialist<br>Service Provider</td>
    <td>Requesting System<br>Service provider booking system</td>
    <td>Patient Details<br>Requestor Details<br>Requested Service Details<br>Relevant Clinical Details<br>Billing Details<br>Results Copy To</td>
  </tr>
</tbody>
</table>
