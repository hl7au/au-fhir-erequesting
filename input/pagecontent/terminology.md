This page lists all ValueSets and CodeSystems supported as part of AU eRequesting. 

Terminology supported in AU eRequesting is published in AU eRequesting, AU Base, the base FHIR specification, [HL7 Terminology (THO)](https://terminology.hl7.org/), or the [National Clinical Terminology Service (NCTS)](https://www.healthterminologies.gov.au/).

### Value Sets

The following value sets are supported in AU eRequesting, i.e bound as [preferred](https://hl7.org/fhir/R4/terminologies.html#preferred) or stronger to a supported element, element slice, or extension in an AU Core profile.


{% include rrv-dev-note.md %}

Column attribute descriptions are as follows:
<ul>
  <li><strong>ValueSet:</strong> The title of the value set.</li>
  <li><strong>Profiles and Extensions where used:</strong> The profiles and extensions that reference the value set.</li>
  <li><strong>Available from:</strong> Where the value set is published.</li>
</ul>

|ValueSet|Profiles and Extensions where used|Available from|
|---|---|---|
|[AdministrativeGender](https://hl7.org/fhir/R4/valueset-administrative-gender.html)|[AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html)|FHIR|
|[AddressUse](http://hl7.org/fhir/ValueSet/address-use)|[AU Core Location](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-location.html), [AU Core Organization](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-organization.html), [AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html)|FHIR|
|[AddressType](http://hl7.org/fhir/ValueSet/address-type)|[AU Core Location](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-location.html), [AU Core Organization](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-organization.html), [AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html)|FHIR|
|[AU eRequesting Coverage Type and Self-Pay Codes](ValueSet-au-erequesting-coverage-type.html)|[AU eRequesting Coverage](StructureDefinition-au-erequesting-coverage.html)|AU eRequesting|
|[AU eRequesting CommunicationRequest Patient Category](ValueSet-au-erequesting-communicationrequest-patient-category.html)|[AU eRequesting CommunicationRequest Patient](StructureDefinition-au-erequesting-communicationrequest-patient.html)|AU eRequesting|
|[AU eRequesting CommunicationRequest Patient Medium](ValueSet-au-erequesting-communicationrequest-patient-medium.html)|[AU eRequesting CommunicationRequest Patient](StructureDefinition-au-erequesting-communicationrequest-patient.html)|AU eRequesting|
|[AU eRequesting CommunicationRequest Reason](ValueSet-au-erequesting-communicationrequest-reason.html)|[AU eRequesting CommunicationRequest](StructureDefinition-au-erequesting-communicationrequest.html), [AU eRequesting CommunicationRequest CopyTo](StructureDefinition-au-erequesting-communicationrequest-copyto.html), [AU eRequesting CommunicationRequest Patient](StructureDefinition-au-erequesting-communicationrequest-patient.html), [AU eRequesting CommunicationRequest Urgent Provider](StructureDefinition-au-erequesting-communicationrequest-urgentprovider.html)|AU eRequesting|
|[AU eRequesting Fulfilment Task Tags](ValueSet-au-erequesting-fulfilment-task-tags.html)|[AU eRequesting Task](StructureDefinition-au-erequesting-task.html), [AU eRequesting Task Group](StructureDefinition-au-erequesting-task-group.html), [AU eRequesting Task Diagnostic Request](StructureDefinition-au-erequesting-task-diagnosticrequest.html), [AU eRequesting Task Communication Request](StructureDefinition-au-erequesting-task-communicationrequest.html)|AU eRequesting|
|[AU eRequesting RequestStatus](ValueSet-au-erequesting-request-status.html)|[AU eRequesting Diagnostic Request](StructureDefinition-au-erequesting-diagnosticrequest.html), [AU eRequesting Imaging Request](StructureDefinition-au-erequesting-servicerequest-imag.html), [AU eRequesting Pathology Request](StructureDefinition-au-erequesting-servicerequest-path.html)|AU eRequesting|
|[AU eRequesting TaskStatus](ValueSet-au-erequesting-task-status.html)|[AU eRequesting Task](StructureDefinition-au-erequesting-task.html), [AU eRequesting Task Group](StructureDefinition-au-erequesting-task-group.html), [AU eRequesting Task Diagnostic Request](StructureDefinition-au-erequesting-task-diagnosticrequest.html), [AU eRequesting Task Communication Request](StructureDefinition-au-erequesting-task-communicationrequest.html)|AU eRequesting|
|[Australian Indigenous Status](https://healthterminologies.gov.au/fhir/ValueSet/australian-indigenous-status-1)|[AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html)|NCTS|
|[Australian Pronouns](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/australian-pronouns-1)|[Individual Pronouns](http://hl7.org/fhir/StructureDefinition/individual-pronouns)|NCTS|
|[Australian States and Territories](https://healthterminologies.gov.au/fhir/ValueSet/australian-states-territories-2)|[AU Core Location](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-location.html), [AU Core Organization](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-organization.html), [AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html)|NCTS|
|[Body Site](https://healthterminologies.gov.au/fhir/ValueSet/body-site-1)|[AU eRequesting Diagnostic Request](StructureDefinition-au-erequesting-diagnosticrequest.html), [AU eRequesting Imaging Request](StructureDefinition-au-erequesting-servicerequest-imag.html), [AU eRequesting Pathology Request](StructureDefinition-au-erequesting-servicerequest-path.html)|NCTS|
|[Common Languages in Australia](https://healthterminologies.gov.au/fhir/ValueSet/common-languages-australia-2)|[AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html)|NCTS|
|[Consent Data Meaning](http://hl7.org/fhir/ValueSet/consent-data-meaning)|[AU eRequesting MHR Consent Withdrawal](StructureDefinition-au-erequesting-mhrconsentwithdrawal.html)|FHIR|
|[ConsentProvisionType](http://hl7.org/fhir/ValueSet/consent-provision-type)|[AU eRequesting MHR Consent Withdrawal](StructureDefinition-au-erequesting-mhrconsentwithdrawal.html)|FHIR|
|[ConsentScopeCodes](http://terminology.hl7.org/ValueSet/consent-scope)|[AU eRequesting MHR Consent Withdrawal](StructureDefinition-au-erequesting-mhrconsentwithdrawal.html)|FHIR|
|[ConsentState](http://hl7.org/fhir/ValueSet/consent-state-codes)|[AU eRequesting MHR Consent Withdrawal](StructureDefinition-au-erequesting-mhrconsentwithdrawal.html)|FHIR|
|[ContactPointSystem](http://hl7.org/fhir/ValueSet/contact-point-system)|[AU Core Organization](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-organization.html), [AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html), [AU Core PractitionerRole](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-practitionerrole.html)|FHIR|
|[ContactPointUse](http://hl7.org/fhir/ValueSet/contact-point-use)|[AU Core Organization](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-organization.html), [AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html), [AU Core PractitionerRole](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-practitionerrole.html)|FHIR|
|[DVA Entitlement](https://build.fhir.org/ig/hl7au/au-fhir-base/ValueSet-dva-entitlement.html)|[AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html)|AU Base|
|[Gender Identity Response](https://healthterminologies.gov.au/fhir/ValueSet/gender-identity-response-1)|[Individual Gender Identity](http://hl7.org/fhir/StructureDefinition/individual-genderIdentity)|NCTS|
|[IdentifierUse](https://hl7.org/fhir/R4/valueset-identifier-use.html)|[AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html)|FHIR|
|[Imaging Procedure](https://healthterminologies.gov.au/fhir/ValueSet/imaging-procedure-1)|[AU eRequesting Imaging Request](StructureDefinition-au-erequesting-servicerequest-imag.html)|NCTS|
|[Individual Healthcare Identifier Status](https://healthterminologies.gov.au/fhir/ValueSet/ihi-status-1)|[AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html)|NCTS|
|[NameUse](https://hl7.org/fhir/R4/valueset-name-use.html)|[AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html)|FHIR|
|[Order Identifier Type](https://build.fhir.org/ig/hl7au/au-fhir-base//ValueSet-order-identifier-type.html)|[AU eRequesting Diagnostic Request](StructureDefinition-au-erequesting-diagnosticrequest.html), [AU eRequesting Imaging Request](StructureDefinition-au-erequesting-servicerequest-imag.html), [AU eRequesting Pathology Request](StructureDefinition-au-erequesting-servicerequest-path.html), [AU eRequesting CommunicationRequest](StructureDefinition-au-erequesting-communicationrequest.html), [AU eRequesting CommunicationRequest CopyTo](StructureDefinition-au-erequesting-communicationrequest-copyto.html), [AU eRequesting CommunicationRequest Patient](StructureDefinition-au-erequesting-communicationrequest-patient.html), [AU eRequesting CommunicationRequest Urgent Provider](StructureDefinition-au-erequesting-communicationrequest-urgentprovider.html), [AU eRequesting Task](StructureDefinition-au-erequesting-task.html), [AU eRequesting Task Group](StructureDefinition-au-erequesting-task-group.html), [AU eRequesting Task Diagnostic Request](StructureDefinition-au-erequesting-task-diagnosticrequest.html), [AU eRequesting Task Communication Request](StructureDefinition-au-erequesting-task-communicationrequest.html)|AU Base|
|[Pathology Fasting Status](https://healthterminologies.gov.au/fhir/ValueSet/pathology-fasting-status-1)|[AU eRequesting Diagnostic Request](StructureDefinition-au-erequesting-diagnosticrequest.html), [AU eRequesting Imaging Request](StructureDefinition-au-erequesting-servicerequest-imag.html), [AU eRequesting Pathology Request](StructureDefinition-au-erequesting-servicerequest-path.html)|NCTS|
|[Pathology Procedure](https://healthterminologies.gov.au/fhir/ValueSet/pathology-procedure-1)|[AU eRequesting Pathology Request](StructureDefinition-au-erequesting-servicerequest-path.html)|NCTS|
|[Pregnancy Status - IPS](https://build.fhir.org/ig/HL7/fhir-ips/ValueSet-pregnancy-status-uv-ips.html)|[Observation Pregnancy - Status (IPS)](https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-Observation-pregnancy-status-uv-ips.html)|FHIR
|[Request priority](https://hl7.org/fhir/R4/valueset-request-priority.html)|[AU eRequesting Task](StructureDefinition-au-erequesting-task.html), [AU eRequesting Task Group](StructureDefinition-au-erequesting-task-group.html), [AU eRequesting Task Diagnostic Request](StructureDefinition-au-erequesting-task-diagnosticrequest.html), [AU eRequesting Task Communication Request](StructureDefinition-au-erequesting-task-communicationrequest.html)|FHIR|
|[RCPA - SPIA Requesting Pathology Terminology Reference Set](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/spia-requesting-refset-3)|[AU eRequesting Pathology Request](StructureDefinition-au-erequesting-servicerequest-path.html)|NCTS|
|[RANZCR Radiology Referral](ValueSet-ranzcr-radiology-referral.html)|[AU eRequesting Imaging Request](StructureDefinition-au-erequesting-servicerequest-imag.html)|AU eRequesting|
|[Reason for Request](https://healthterminologies.gov.au/fhir/ValueSet/reason-for-request-1)|[AU eRequesting Diagnostic Request](StructureDefinition-au-erequesting-diagnosticrequest.html), [AU eRequesting Imaging Request](StructureDefinition-au-erequesting-servicerequest-imag.html), [AU eRequesting Pathology Request](StructureDefinition-au-erequesting-servicerequest-path.html)|NCTS|
|[RequestIntent](https://hl7.org/fhir/R4/valueset-request-intent.html)|[AU eRequesting Diagnostic Request](StructureDefinition-au-erequesting-diagnosticrequest.html), [AU eRequesting Imaging Request](StructureDefinition-au-erequesting-servicerequest-imag.html), [AU eRequesting Pathology Request](StructureDefinition-au-erequesting-servicerequest-path.html)|FHIR|
|[RequestStatus](http://hl7.org/fhir/ValueSet/request-status)|[AU eRequesting CommunicationRequest](StructureDefinition-au-erequesting-communicationrequest.html), [AU eRequesting CommunicationRequest CopyTo](StructureDefinition-au-erequesting-communicationrequest-copyto.html), [AU eRequesting CommunicationRequest Patient](StructureDefinition-au-erequesting-communicationrequest-patient.html), [AU eRequesting CommunicationRequest Urgent Provider](StructureDefinition-au-erequesting-communicationrequest-urgentprovider.html)|FHIR|
|[Sex Parameter For Clinical Use](http://terminology.hl7.org/ValueSet/sex-parameter-for-clinical-use)|[AU eRequesting Diagnostic Request](StructureDefinition-au-erequesting-diagnosticrequest.html), [AU eRequesting Imaging Request](StructureDefinition-au-erequesting-servicerequest-imag.html), [AU eRequesting Pathology Request](StructureDefinition-au-erequesting-servicerequest-path.html)|HL7 Terminology|
{:.grid}



### Code systems

See the [FHIR terminology section]({{site.data.fhir.path}}terminologies-systems.html) for a complete discussion on code systems and a list of code system names used in FHIR.

The following code systems are referenced by the value sets listed above or are the code system for a fixed value in an AU eRequesting profile.

Column attribute descriptions are as follows:
<ul>
  <li><strong>CodeSystem:</strong> The title of a code system.</li>
  <li><strong>ValueSet where used:</strong> The value set(s) that reference the code system or the profile where a fixed value is applied.</li>
  <li><strong>Available from:</strong> Where the code system is published.</li>
  <li><strong>Publisher:</strong> Identifies the organisation responsible for maintaining the code system.</li>
</ul>

|CodeSystem|ValueSet where used|Available from|Publisher|
|---|---|---|---|
|[AdministrativeGender](https://hl7.org/fhir/R4/codesystem-administrative-gender.html)|[AdministrativeGender](https://hl7.org/fhir/R4/valueset-administrative-gender.html)|FHIR|Health Level Seven International|
|[AddressUse](http://hl7.org/fhir/address-use)|[AddressUse](http://hl7.org/fhir/ValueSet/address-use)|FHIR|Health Level Seven International|
|[AddressType](http://hl7.org/fhir/address-type)|[AddressType](http://hl7.org/fhir/ValueSet/address-type)|FHIR|Health Level Seven International|
|[AU eRequesting CommunicationRequest Reason](CodeSystem-au-erequesting-communicationrequest-reason.html)|[AU eRequesting CommunicationRequest Reason](ValueSet-au-erequesting-communicationrequest-reason.html)|AU eRequesting|AU eRequesting|
|[AU eRequesting Task Tag](CodeSystem-au-erequesting-task-tag.html)|[AU eRequesting Fulfilment Task Tags](ValueSet-au-erequesting-fulfilment-task-tags.html)|AU eRequesting|AU eRequesting|
|[Australian Indigenous Status](https://healthterminologies.gov.au/fhir/CodeSystem/australian-indigenous-status-1)|[Australian Indigenous Status](https://healthterminologies.gov.au/fhir/ValueSet/australian-indigenous-status-1)|NCTS|Australian Digital Health Agency|
|[Australian States and Territories](https://healthterminologies.gov.au/fhir/CodeSystem/australian-states-territories-1)|[Australian States and Territories](https://healthterminologies.gov.au/fhir/ValueSet/australian-states-territories-2)|NCTS|Australian Digital Health Agency|
|[CommunicationCategory](https://hl7.org/fhir/R4/codesystem-communication-category.html)|[AU eRequesting CommunicationRequest Patient Category](ValueSet-au-erequesting-communicationrequest-patient-category.html)|FHIR|Health Level Seven International|
|[Consent Action Codes](http://terminology.hl7.org/CodeSystem/consentaction)|[AU eRequesting MHR Consent Withdrawal](StructureDefinition-au-erequesting-mhrconsentwithdrawal.html)|FHIR|Health Level Seven International|
|[ConsentDataMeaning](http://hl7.org/fhir/consent-data-meaning)|[ConsentDataMeaning](http://hl7.org/fhir/ValueSet/consent-data-meaning)|FHIR|Health Level Seven International|
|[ConsentProvisionType](http://hl7.org/fhir/consent-provision-type)|[ConsentProvisionType](http://hl7.org/fhir/ValueSet/consent-provision-type)|FHIR|Health Level Seven International|
|[Consent Scope Codes](http://terminology.hl7.org/CodeSystem/consentscope)|[Consent Scope Codes](http://terminology.hl7.org/ValueSet/consent-scope)|FHIR|Health Level Seven International|
|[ConsentState](http://hl7.org/fhir/consent-state-codes)|[ConsentState](http://hl7.org/fhir/ValueSet/consent-state-codes)|FHIR|Health Level Seven International|
|[ContactPointSystem](http://hl7.org/fhir/contact-point-system)|[ContactPointSystem](http://hl7.org/fhir/ValueSet/contact-point-system)|FHIR|Health Level Seven International|
|[ContactPointUse](http://hl7.org/fhir/contact-point-use)|[ContactPointUse](http://hl7.org/fhir/ValueSet/contact-point-use)|FHIR|Health Level Seven International|
|[Coverage SelfPay Codes](http://terminology.hl7.org/CodeSystem/coverage-selfpay)|[AU eRequesting Coverage Type and Self-Pay Codes](ValueSet-au-erequesting-coverage-type.html)|HL7 Terminology (THO)|Health Level Seven International|
|[DataAbsentReason](https://terminology.hl7.org/CodeSystem-data-absent-reason.html)|[Australian Pronouns](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/australian-pronouns-1), [Gender Identity Response](https://healthterminologies.gov.au/fhir/ValueSet/gender-identity-response-1), [Sex Parameter For Clinical Use](http://terminology.hl7.org/ValueSet/sex-parameter-for-clinical-use)|FHIR|Health Level Seven International|
|[IdentifierType AU](https://build.fhir.org/ig/hl7au/au-fhir-base//CodeSystem-au-v2-0203.html)|[DVA Entitlement](https://build.fhir.org/ig/hl7au/au-fhir-base/ValueSet-dva-entitlement.html), [hl7VS-identifierType - AU Extended](https://build.fhir.org/ig/hl7au/au-fhir-base/ValueSet-au-v2-0203-extended.html)|AU Base|HL7 Australia|
|[identifierType](https://terminology.hl7.org/5.5.0/CodeSystem-v2-0203.html)|[AU eRequesting Diagnostic Request](StructureDefinition-au-erequesting-diagnosticrequest.html), [Order Identifier Type](https://build.fhir.org/ig/hl7au/au-fhir-base/ValueSet-order-identifier-type.html)|FHIR|HL7 Terminology (THO)|
|[IdentifierUse](https://hl7.org/fhir/R4/valueset-identifier-use.html)|[IdentifierUse](https://hl7.org/fhir/R4/valueset-identifier-use.html)|FHIR|HL7 Terminology (THO)|
|[LOINC](https://www.healthterminologies.gov.au/access-clinical-terminology/access-fhir-terminology-resources/code-systems/?ui:filter=loinc)|[Australian Pronouns](https://healthterminologies.gov.au/fhir/ValueSet/australian-pronouns-1)|NCTS|Regenstrief Institute, Inc|
|[NameUse](https://hl7.org/fhir/R4/codesystem-name-use.html)|[NameUse](https://hl7.org/fhir/R4/valueset-name-use.html)|FHIR|Health Level Seven International|
|[ParticipationMode](https://terminology.hl7.org/CodeSystem-v3-ParticipationMode.html)|[AU eRequesting CommunicationRequest Patient Medium](ValueSet-au-erequesting-communicationrequest-patient-medium.html)
|[RequestIntent](https://hl7.org/fhir/R4/codesystem-request-intent.html)|[RequestIntent](https://hl7.org/fhir/R4/valueset-request-intent.html)|FHIR|Health Level Seven International|
|[RequestStatus](https://hl7.org/fhir/R4/codesystem-request-status.html)|[AU eRequesting RequestStatus](ValueSet-au-erequesting-request-status.html), [RequestStatus](http://hl7.org/fhir/ValueSet/request-status)|FHIR|Health Level Seven International|
|[Sex Parameter For Clinical Use](http://terminology.hl7.org/CodeSystem/sex-parameter-for-clinical-use)|[Sex Parameter For Clinical Use](http://terminology.hl7.org/ValueSet/sex-parameter-for-clinical-use)|FHIR|Health Level Seven International|
|[SNOMED CT (Australian extension)](https://www.healthterminologies.gov.au/access-clinical-terminology/access-fhir-terminology-resources/code-systems/?ui:filter=snomed)|[AU eRequesting Imaging Request](StructureDefinition-au-erequesting-servicerequest-imag.html), [AU eRequesting Pathology Request](StructureDefinition-au-erequesting-servicerequest-path.html), [Gender Identity Response](https://healthterminologies.gov.au/fhir/ValueSet/gender-identity-response-1), [Pathology Fasting Status](https://healthterminologies.gov.au/fhir/ValueSet/pathology-fasting-status-1), [Pregnancy Status - IPS](https://build.fhir.org/ig/HL7/fhir-ips/ValueSet-pregnancy-status-uv-ips.html), [RANZCR Radiology Referral](ValueSet-ranzcr-radiology-referral.html), [Reason for Request](https://healthterminologies.gov.au/fhir/ValueSet/reason-for-request-1)|NCTS|Australian Digital Health Agency|
|[Tags for the Identification of Languages](https://terminology.hl7.org/CodeSystem-v3-ietf3066.html)|[Common Languages in Australia](https://healthterminologies.gov.au/fhir/ValueSet/common-languages-australia-2)|HL7 Terminology (THO)|Internet Engineering Task Force|
|[TaskStatus](https://hl7.org/fhir/R4/codesystem-task-status.html)|[AU eRequesting TaskStatus](ValueSet-au-erequesting-task-status.html)|FHIR|Health Level Seven International|
|[v3 Code System ActCode](https://www.hl7.org/fhir/R4/v3/ActCode/cs.html)|[AU eRequesting Coverage Type and Self-Pay Codes](ValueSet-au-erequesting-coverage-type.html), [AU eRequesting MHR Consent Withdrawal](StructureDefinition-au-erequesting-mhrconsentwithdrawal.html)|FHIR|Health Level Seven International
{:.grid}
