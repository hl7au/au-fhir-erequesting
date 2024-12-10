This page lists all ValueSets and CodeSystems supported as part of AU eRequesting. 

As well as terminology defined in FHIR, this specification supports terminology defined in [AU Base](https://build.fhir.org/ig/hl7au/au-fhir-base/terminology.html) or [National Clinical Terminology Service (NCTS)](https://www.healthterminologies.gov.au/integration/R4/fhir) terminology resources. 

### Value Sets

Many value sets used in this guide are defined in the base FHIR specification, [AU Base](https://build.fhir.org/ig/hl7au/au-fhir-base/terminology.html), or [NCTS](https://www.healthterminologies.gov.au/integration/R4/fhir/metadata).


{% include rrv-dev-note.md %}

- The list below shows the value sets bound as [preferred](https://hl7.org/fhir/R4/terminologies.html#preferred) or greater to a supported element, element slice, or extension.

|ValueSet|Profile where used|Available from|Publisher|
|---|---|---|---|
|[AdministrativeGender](https://hl7.org/fhir/R4/valueset-administrative-gender.html)|[AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html)|FHIR|Health Level Seven International|
|[AddressUse](https://hl7.org/fhir/R4/valueset-address-use.html)|[AU Core Location](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-location.html), [AU Core Organization](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-organization.html), [AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html)|FHIR|Health Level Seven International|
|[AddressType](http://hl7.org/fhir/ValueSet/address-type)|[AU Core Location](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-location.html), [AU Core Organization](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-organization.html), [AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html)|FHIR|Health Level Seven International|
|[Australian Indigenous Status](https://healthterminologies.gov.au/fhir/ValueSet/australian-indigenous-status-1)|[AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html)|NCTS|Australian Digital Health Agency|
|[Australian Pronouns](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/australian-pronouns-1)|[Individual Pronouns](http://hl7.org/fhir/StructureDefinition/individual-pronouns)|NCTS|Australian Digital Health Agency|
|[Australian States and Territories](https://healthterminologies.gov.au/fhir/ValueSet/australian-states-territories-2)|[AU Core Location](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-location.html), [AU Core Organization](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-organization.html), [AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html)|NCTS|Australian Digital Health Agency|
|[Body Site](https://healthterminologies.gov.au/fhir/ValueSet/body-site-1)|[AU eRequesting Imaging Request](StructureDefinition-au-erequesting-servicerequest-imag.html), [AU eRequesting Pathology Request](StructureDefinition-au-erequesting-servicerequest-path.html)|NCTS|Australian Digital Health Agency|
|[Common Languages in Australia](https://healthterminologies.gov.au/fhir/ValueSet/common-languages-australia-2)|[AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html)|NCTS|Australian Digital Health Agency|
|[ContactPointSystem](http://hl7.org/fhir/ValueSet/contact-point-system)|[AU Core Organization](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-organization.html), [AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html), [AU Core PractitionerRole](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-practitionerrole.html)|FHIR|Health Level Seven International|
|[ContactPointUse](http://hl7.org/fhir/ValueSet/contact-point-use)|[AU Core Organization](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-organization.html), [AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html), [AU Core PractitionerRole](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-practitionerrole.html)|FHIR|Health Level Seven International|
|[DVA Entitlement](https://build.fhir.org/ig/hl7au/au-fhir-base/ValueSet-dva-entitlement.html)|[AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html)|AU Base|HL7 Australia|
|[Gender Identity Response](https://healthterminologies.gov.au/fhir/ValueSet/gender-identity-response-1)|[Individual Gender Identity](http://hl7.org/fhir/StructureDefinition/individual-genderIdentity)|NCTS|Australian Digital Health Agency|
|[IdentifierUse](https://hl7.org/fhir/R4/valueset-identifier-use.html)|[AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html)|FHIR|Health Level Seven International|
|[Imaging Procedure](https://healthterminologies.gov.au/fhir/ValueSet/imaging-procedure-1)|[AU eRequesting Imaging Request](StructureDefinition-au-erequesting-servicerequest-imag.html)|NCTS|Australian Digital Health Agency|
|[Individual Healthcare Identifier Status](https://healthterminologies.gov.au/fhir/ValueSet/ihi-status-1)|[AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html)|NCTS|Australian Digital Health Agency|
|[NameUse](https://hl7.org/fhir/R4/valueset-name-use.html)|[AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html)|FHIR|Health Level Seven International|
|[Order Identifier Type](https://build.fhir.org/ig/hl7au/au-fhir-base//ValueSet-order-identifier-type.html)|[AU eRequesting Diagnostic Request](StructureDefinition-au-erequesting-diagnosticrequest.html)|AU Base|HL7 Australia|
|[Pathology Procedure](https://healthterminologies.gov.au/fhir/ValueSet/pathology-procedure-1)|[AU eRequesting Pathology Request](StructureDefinition-au-erequesting-servicerequest-path.html)|NCTS|Australian Digital Health Agency|
|[RCPA - SPIA Requesting Pathology Terminology Reference Set](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/spia-requesting-refset-3)|[AU eRequesting Pathology Request](StructureDefinition-au-erequesting-servicerequest-path.html)|NCTS|Royal College of Pathologists of Australasia|
|[RANZCR Radiology Referral](ValueSet-ranzcr-radiology-referral.html)|[AU eRequesting Imaging Request](StructureDefinition-au-erequesting-servicerequest-imag.html)|AU eRequesting|Royal College of Australian and New Zealand Radiologists|
|[Reason for Request](https://healthterminologies.gov.au/fhir/ValueSet/reason-for-request-1)|[AU eRequesting Diagnostic Request](StructureDefinition-au-erequesting-diagnosticrequest.html)|NCTS|Australian Digital Health Agency|
|[RequestIntent](https://hl7.org/fhir/R4/valueset-request-intent.html)|[AU eRequesting Diagnostic Request](StructureDefinition-au-erequesting-diagnosticrequest.html)|FHIR|Health Level Seven International|
|[AU eRequesting Task Status](ValueSet-au-erequesting-task-status.html)|[AU eRequesting Task](StructureDefinition-au-erequesting-task.html)|AU eRequesting|?|
|[AU eRequesting Coverage Type and Self-Pay Codes](ValueSet-au-erequesting-coverage-type.html)|[AU eRequesting Coverage](StructureDefinition-au-erequesting-coverage.html)|AU eRequesting|HL7 International|
|[AU eRequesting RequestStatus](ValueSet-au-erequesting-request-status.html)|[AU eRequesting Diagnostic Request](StructureDefinition-au-erequesting-diagnosticrequest.html)|AU eRequesting|HL7 International|
{:.grid}



### Code systems

This implementation guide does not define any unique code systems. The code systems used in this guide are defined in the base FHIR specification, [AU Base](https://build.fhir.org/ig/hl7au/au-fhir-base/terminology.html), or [NCTS](https://www.healthterminologies.gov.au/integration/R4/fhir/metadata).  

The list below shows the code systems used in the value sets above.

|CodeSystem|ValueSet where used|Published|
|---|---|---|---|
|[AdministrativeGender](https://hl7.org/fhir/R4/codesystem-administrative-gender.html)|[AdministrativeGender](https://hl7.org/fhir/R4/valueset-administrative-gender.html)|FHIR|Health Level Seven International|
|[AddressUse](http://hl7.org/fhir/address-use)|[AddressUse](http://hl7.org/fhir/ValueSet/address-use)|FHIR|Health Level Seven International|
|[AddressType](http://hl7.org/fhir/address-type)|[AddressType](http://hl7.org/fhir/ValueSet/address-type)|FHIR|Health Level Seven International|
|[Australian Indigenous Status](https://healthterminologies.gov.au/fhir/CodeSystem/australian-indigenous-status-1)|[Australian Indigenous Status](https://healthterminologies.gov.au/fhir/ValueSet/australian-indigenous-status-1)|NCTS|Australian Digital Health Agency|
|[Australian States and Territories](https://healthterminologies.gov.au/fhir/CodeSystem/australian-states-territories-1)|[Australian States and Territories](https://healthterminologies.gov.au/fhir/ValueSet/australian-states-territories-2)|NCTS|Australian Digital Health Agency|
|[ContactPointSystem](http://hl7.org/fhir/contact-point-system)|[ContactPointSystem](http://hl7.org/fhir/ValueSet/contact-point-system)|FHIR|Health Level Seven International|
|[ContactPointUse](http://hl7.org/fhir/contact-point-use)|[ContactPointUse](http://hl7.org/fhir/ValueSet/contact-point-use)|FHIR|Health Level Seven International|
|[Coverage SelfPay Codes](http://terminology.hl7.org/CodeSystem/coverage-selfpay)|[AU eRequesting Coverage Type and Self-Pay Codes](ValueSet-au-erequesting-coverage-type.html)|HL7 Terminology|Health Level Seven International|
|[DataAbsentReason](https://hl7.org/fhir/R4/valueset-data-absent-reason.html)|[Australian Pronouns](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/australian-pronouns-1), [Gender Identity Response](https://healthterminologies.gov.au/fhir/ValueSet/gender-identity-response-1)|FHIR|Health Level Seven International|
|[IdentifierType AU](https://build.fhir.org/ig/hl7au/au-fhir-base//CodeSystem-au-v2-0203.html)|[DVA Entitlement](https://build.fhir.org/ig/hl7au/au-fhir-base/ValueSet-dva-entitlement.html), [hl7VS-identifierType - AU Extended](https://build.fhir.org/ig/hl7au/au-fhir-base/ValueSet-au-v2-0203-extended.html)|AU Base|HL7 Australia|
|[identifierType](https://terminology.hl7.org/5.5.0/CodeSystem-v2-0203.html)|[Order Identifier Type](https://build.fhir.org/ig/hl7au/au-fhir-base/ValueSet-order-identifier-type.html)|FHIR|Health Level Seven International|
|[IdentifierUse](https://hl7.org/fhir/R4/valueset-identifier-use.html)|[IdentifierUse](https://hl7.org/fhir/R4/valueset-identifier-use.html)|FHIR|
|[LOINC](https://www.healthterminologies.gov.au/access-clinical-terminology/access-fhir-terminology-resources/code-systems/?ui:filter=loinc)|[Australian Pronouns](https://healthterminologies.gov.au/fhir/ValueSet/australian-pronouns-1)|NCTS|
|[NameUse](https://hl7.org/fhir/R4/codesystem-name-use.html)|[NameUse](https://hl7.org/fhir/R4/valueset-name-use.html)|FHIR|Health Level Seven International|
|[RequestIntent](https://hl7.org/fhir/R4/codesystem-request-intent.html)|[RequestIntent](https://hl7.org/fhir/R4/valueset-request-intent.html)|FHIR|Health Level Seven International|
|[RequestStatus](https://hl7.org/fhir/R4/codesystem-request-status.html)|[AU eRequesting RequestStatus](ValueSet-au-erequesting-request-status.html)|FHIR|Health Level Seven International|
|[SNOMED CT (Australian extension)](https://www.healthterminologies.gov.au/access-clinical-terminology/access-fhir-terminology-resources/code-systems/?ui:filter=snomed)|[Gender Identity Response](https://healthterminologies.gov.au/fhir/ValueSet/gender-identity-response-1), [Reason for Request](https://healthterminologies.gov.au/fhir/ValueSet/reason-for-request-1),[RANZCR Radiology Referral](ValueSet-ranzcr-radiology-referral.html)|NCTS|Australian Digital Health Agency|
|[Tags for the Identification of Languages](https://terminology.hl7.org/CodeSystem-v3-ietf3066.html)|[Common Languages in Australia](https://healthterminologies.gov.au/fhir/ValueSet/common-languages-australia-2)|HL7 Terminology|Internet Engineering Task Force|
|[TaskStatus](https://hl7.org/fhir/R4/codesystem-task-status.html)|[AU eRequesting Task Status](ValueSet-au-erequesting-task-status.html)|FHIR|Health Level Seven International|
|[v3 Code System ActCode](https://www.hl7.org/fhir/R4/v3/ActCode/cs.html)|[AU eRequesting Coverage Type and Self-Pay Codes](ValueSet-au-erequesting-coverage-type.html)|FHIR|Health Level Seven International
{:.grid}
