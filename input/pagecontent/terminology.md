This page lists all ValueSets and CodeSystems supported as part of AU eRequesting. 

Terminology supported in AU eRequesting are published in AU Base, the base FHIR specification, [HL7 Terminology (THO)](https://terminology.hl7.org/), or the [National Clinical Terminology Service (NCTS)](https://www.healthterminologies.gov.au/).

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
|[AddressUse](https://hl7.org/fhir/R4/valueset-address-use.html)|[AU Core Location](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-location.html), [AU Core Organization](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-organization.html), [AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html)|FHIR|
|[AddressType](https://hl7.org/fhir/R4/valueset-address-type.html)|[AU Core Location](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-location.html), [AU Core Organization](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-organization.html), [AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html)|FHIR|
|[Australian Indigenous Status](https://healthterminologies.gov.au/fhir/ValueSet/australian-indigenous-status-1)|[AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html)|NCTS|
|[Australian Pronouns](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/australian-pronouns-1)|[Individual Pronouns](http://hl7.org/fhir/StructureDefinition/individual-pronouns)|NCTS|
|[Australian States and Territories](https://healthterminologies.gov.au/fhir/ValueSet/australian-states-territories-2)|[AU Core Location](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-location.html), [AU Core Organization](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-organization.html), [AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html)|NCTS|
|[Body Site](https://healthterminologies.gov.au/fhir/ValueSet/body-site-1)|[AU eRequesting Imaging Request](StructureDefinition-au-erequesting-servicerequest-imag.html), [AU eRequesting Pathology Request](StructureDefinition-au-erequesting-servicerequest-path.html)|NCTS|
|[Common Languages in Australia](https://healthterminologies.gov.au/fhir/ValueSet/common-languages-australia-2)|[AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html)|NCTS|
|[ContactPointSystem](https://hl7.org/fhir/R4/valueset-contact-point-system.html)|[AU Core Organization](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-organization.html), [AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html), [AU Core PractitionerRole](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-practitionerrole.html)|FHIR|
|[ContactPointUse](https://hl7.org/fhir/R4/valueset-contact-point-use.html)|[AU Core Organization](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-organization.html), [AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html), [AU Core PractitionerRole](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-practitionerrole.html)|FHIR|
|[DVA Entitlement](https://build.fhir.org/ig/hl7au/au-fhir-base/ValueSet-dva-entitlement.html)|[AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html)|AU Base|
|[Gender Identity Response](https://healthterminologies.gov.au/fhir/ValueSet/gender-identity-response-1)|[Individual Gender Identity](http://hl7.org/fhir/StructureDefinition/individual-genderIdentity)|NCTS|
|[IdentifierUse](https://hl7.org/fhir/R4/valueset-identifier-use.html)|[AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html)|FHIR|
|[Imaging Procedure](https://healthterminologies.gov.au/fhir/ValueSet/imaging-procedure-1)|[AU eRequesting Imaging Request](StructureDefinition-au-erequesting-servicerequest-imag.html)|NCTS|
|[Individual Healthcare Identifier Status](https://healthterminologies.gov.au/fhir/ValueSet/ihi-status-1)|[AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html)|NCTS|
|[NameUse](https://hl7.org/fhir/R4/valueset-name-use.html)|[AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html)|FHIR|
|[Order Identifier Type](https://build.fhir.org/ig/hl7au/au-fhir-base//ValueSet-order-identifier-type.html)|[AU eRequesting Diagnostic Request](StructureDefinition-au-erequesting-diagnosticrequest.html)|AU Base|
|[Pathology Procedure](https://healthterminologies.gov.au/fhir/ValueSet/pathology-procedure-1)|[AU eRequesting Pathology Request](StructureDefinition-au-erequesting-servicerequest-path.html)|NCTS|
|[RCPA - SPIA Requesting Pathology Terminology Reference Set](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/spia-requesting-refset-3)|[AU eRequesting Pathology Request](StructureDefinition-au-erequesting-servicerequest-path.html)|NCTS|
|[RANZCR Radiology Referral](ValueSet-ranzcr-radiology-referral.html)|[AU eRequesting Imaging Request](StructureDefinition-au-erequesting-servicerequest-imag.html)|AU eRequesting|
|[Reason for Request](https://healthterminologies.gov.au/fhir/ValueSet/reason-for-request-1)|[AU eRequesting Diagnostic Request](StructureDefinition-au-erequesting-diagnosticrequest.html)|NCTS|
|[RequestIntent](https://hl7.org/fhir/R4/valueset-request-intent.html)|[AU eRequesting Diagnostic Request](StructureDefinition-au-erequesting-diagnosticrequest.html)|FHIR|
|[AU eRequesting Task Status](ValueSet-au-erequesting-task-status.html)|[AU eRequesting Task](StructureDefinition-au-erequesting-task.html)|AU eRequesting|
|[AU eRequesting Coverage Type and Self-Pay Codes](ValueSet-au-erequesting-coverage-type.html)|[AU eRequesting Coverage](StructureDefinition-au-erequesting-coverage.html)|AU eRequesting|
|[AU eRequesting RequestStatus](ValueSet-au-erequesting-request-status.html)|[AU eRequesting Diagnostic Request](StructureDefinition-au-erequesting-diagnosticrequest.html)|AU eRequesting|
{:.grid}



### Code systems

See the [FHIR terminology section]({{site.data.fhir.path}}terminologies-systems.html) for a complete discussion on code systems and a list of code system names used in FHIR.

The following code systems are referenced by the value sets listed above.

Column attribute descriptions are as follows:
<ul>
  <li><strong>CodeSystem:</strong> The title of a code system.</li>
  <li><strong>ValueSet where used:</strong> The value set(s) that reference the code system.</li>
  <li><strong>Available from:</strong> Where the code system is published.</li>
  <li><strong>Publisher:</strong> Identifies the organisation responsible for maintaining the code system.</li>
</ul>

|CodeSystem|ValueSet where used|Available from|Publisher|
|---|---|---|---|
|[AdministrativeGender](https://hl7.org/fhir/R4/codesystem-administrative-gender.html)|[AdministrativeGender](https://hl7.org/fhir/R4/valueset-administrative-gender.html)|FHIR|Health Level Seven International|
|[AddressUse](https://hl7.org/fhir/R4/codesystem-address-use.html)|[AddressUse](https://hl7.org/fhir/R4/valueset-address-use.html)|FHIR|Health Level Seven International|
|[AddressType](https://hl7.org/fhir/R4/codesystem-address-type.html)|[AddressType](https://hl7.org/fhir/R4/valueset-address-type.html)|FHIR|Health Level Seven International|
|[Australian Indigenous Status](https://healthterminologies.gov.au/fhir/CodeSystem/australian-indigenous-status-1)|[Australian Indigenous Status](https://healthterminologies.gov.au/fhir/ValueSet/australian-indigenous-status-1)|NCTS|Australian Digital Health Agency|
|[Australian States and Territories](https://healthterminologies.gov.au/fhir/CodeSystem/australian-states-territories-1)|[Australian States and Territories](https://healthterminologies.gov.au/fhir/ValueSet/australian-states-territories-2)|NCTS|Australian Digital Health Agency|
|[ContactPointSystem](https://hl7.org/fhir/R4/valueset-contact-point-system.html)|[ContactPointSystem](https://hl7.org/fhir/R4/valueset-contact-point-system.html)|FHIR|Health Level Seven International|
|[ContactPointUse](https://hl7.org/fhir/R4/codesystem-contact-point-use.html)|[ContactPointUse](https://hl7.org/fhir/R4/valueset-contact-point-use.html)|FHIR|Health Level Seven International|
|[Coverage SelfPay Codes](http://terminology.hl7.org/CodeSystem/coverage-selfpay)|[AU eRequesting Coverage Type and Self-Pay Codes](ValueSet-au-erequesting-coverage-type.html)|HL7 Terminology (THO)|Health Level Seven International|
|[DataAbsentReason](https://hl7.org/fhir/R4/valueset-data-absent-reason.html)|[Australian Pronouns](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/australian-pronouns-1), [Gender Identity Response](https://healthterminologies.gov.au/fhir/ValueSet/gender-identity-response-1)|FHIR|Health Level Seven International|
|[IdentifierType AU](https://build.fhir.org/ig/hl7au/au-fhir-base//CodeSystem-au-v2-0203.html)|[DVA Entitlement](https://build.fhir.org/ig/hl7au/au-fhir-base/ValueSet-dva-entitlement.html), [hl7VS-identifierType - AU Extended](https://build.fhir.org/ig/hl7au/au-fhir-base/ValueSet-au-v2-0203-extended.html)|AU Base|HL7 Australia|
|[identifierType](https://terminology.hl7.org/6.1.0/CodeSystem-v2-0203.html)|[Order Identifier Type](https://build.fhir.org/ig/hl7au/au-fhir-base/ValueSet-order-identifier-type.html)|FHIR|HL7 Terminology (THO)|
|[IdentifierUse](https://hl7.org/fhir/R4/codesystem-identifier-use.html)|[IdentifierUse](https://hl7.org/fhir/R4/valueset-identifier-use.html)|FHIR|Health Level Seven International|
|[LOINC](https://www.healthterminologies.gov.au/access-clinical-terminology/access-fhir-terminology-resources/code-systems/?ui:filter=loinc)|[Australian Pronouns](https://healthterminologies.gov.au/fhir/ValueSet/australian-pronouns-1)|NCTS|Regenstrief Institute, Inc|
|[NameUse](https://hl7.org/fhir/R4/codesystem-name-use.html)|[NameUse](https://hl7.org/fhir/R4/valueset-name-use.html)|FHIR|Health Level Seven International|
|[RequestIntent](https://hl7.org/fhir/R4/codesystem-request-intent.html)|[RequestIntent](https://hl7.org/fhir/R4/valueset-request-intent.html)|FHIR|Health Level Seven International|
|[RequestStatus](https://hl7.org/fhir/R4/codesystem-request-status.html)|[AU eRequesting RequestStatus](ValueSet-au-erequesting-request-status.html)|FHIR|Health Level Seven International|
|[SNOMED CT (Australian extension)](https://www.healthterminologies.gov.au/access-clinical-terminology/access-fhir-terminology-resources/code-systems/?ui:filter=snomed)|[Gender Identity Response](https://healthterminologies.gov.au/fhir/ValueSet/gender-identity-response-1), [Reason for Request](https://healthterminologies.gov.au/fhir/ValueSet/reason-for-request-1),[RANZCR Radiology Referral](ValueSet-ranzcr-radiology-referral.html)|NCTS|Australian Digital Health Agency|
|[Tags for the Identification of Languages](https://terminology.hl7.org/CodeSystem-v3-ietf3066.html)|[Common Languages in Australia](https://healthterminologies.gov.au/fhir/ValueSet/common-languages-australia-2)|HL7 Terminology (THO)|Internet Engineering Task Force|
|[TaskStatus](https://hl7.org/fhir/R4/codesystem-task-status.html)|[AU eRequesting Task Status](ValueSet-au-erequesting-task-status.html)|FHIR|Health Level Seven International|
|[v3 Code System ActCode](https://www.hl7.org/fhir/R4/v3/ActCode/cs.html)|[AU eRequesting Coverage Type and Self-Pay Codes](ValueSet-au-erequesting-coverage-type.html)|FHIR|Health Level Seven International
{:.grid}
