This page lists all ValueSets and CodeSystems supported as part of AU eRequesting. 

As well as terminology defined in FHIR, this specification supports terminology defined in [AU Base](https://build.fhir.org/ig/hl7au/au-fhir-base/terminology.html) or [National Clinical Terminology Service (NCTS)](https://www.healthterminologies.gov.au/integration/R4/fhir) terminology resources. 

### Value Sets

This implementation guide does not define any unique value sets. The value sets used in this guide are defined in the base FHIR specification, [AU Base](https://build.fhir.org/ig/hl7au/au-fhir-base/terminology.html), or [NCTS](https://www.healthterminologies.gov.au/integration/R4/fhir/metadata).  

The list below shows the value sets bound as [preferred](https://hl7.org/fhir/R4/terminologies.html#preferred) or greater to a supported element, element slice, or extension.

|ValueSet|Profile where used|Published|
|---| ---| ---|
|[AdministrativeGender](https://hl7.org/fhir/R4/valueset-administrative-gender.html)|[AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html)|FHIR|
|[AddressUse](http://hl7.org/fhir/ValueSet/address-use)|[AU Core Location](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-location.html), [AU Core Organization](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-organization.html), [AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html)|FHIR|
|[AddressType](http://hl7.org/fhir/ValueSet/address-type)|[AU Core Location](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-location.html), [AU Core Organization](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-organization.html), [AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html)|FHIR|
|[Australian Indigenous Status](https://healthterminologies.gov.au/fhir/ValueSet/australian-indigenous-status-1)|[AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html)|NCTS|
|[Australian Pronouns](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/australian-pronouns-1)|[AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html)|NCTS|
|[Australian States and Territories](https://healthterminologies.gov.au/fhir/ValueSet/australian-states-territories-2)|[AU Core Location](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-location.html), [AU Core Organization](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-organization.html), [AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html)|NCTS|
|[Body Site](https://healthterminologies.gov.au/fhir/ValueSet/body-site-1)|[AU eRequesting Imaging Request](StructureDefinition-au-erequesting-servicerequest-imag.html), [AU eRequesting Pathology Request](StructureDefinition-au-erequesting-servicerequest-path.html)|NCTS|
|[Common Languages in Australia](https://healthterminologies.gov.au/fhir/ValueSet/common-languages-australia-2)|[AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html)|NCTS|
|[ContactPointSystem](http://hl7.org/fhir/ValueSet/contact-point-system)|[AU Core Organization](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-organization.html), [AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html), [AU Core PractitionerRole](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-practitionerrole.html)|FHIR|
|[ContactPointUse](http://hl7.org/fhir/ValueSet/contact-point-use)|[AU Core Organization](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-organization.html), [AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html), [AU Core PractitionerRole](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-practitionerrole.html)|FHIR|
|[DVA Entitlement](https://build.fhir.org/ig/hl7au/au-fhir-base/ValueSet-dva-entitlement.html)|[AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html)|AU Base|
|[Gender Identity Response](https://healthterminologies.gov.au/fhir/ValueSet/gender-identity-response-1)|[AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html)|NCTS|
|[IdentifierUse](https://hl7.org/fhir/R4/valueset-identifier-use.html)|[AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html)|FHIR|
|[Imaging Procedure](https://healthterminologies.gov.au/fhir/ValueSet/imaging-procedure-1)|[AU eRequesting Imaging Request](StructureDefinition-au-erequesting-servicerequest-imag.html)|NCTS|
|[Individual Healthcare Identifier Status](https://healthterminologies.gov.au/fhir/ValueSet/ihi-status-1)|[AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html)|NCTS|
|[NameUse](https://hl7.org/fhir/R4/valueset-name-use.html)|[AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html)|FHIR|
|[Order Identifier Type](https://build.fhir.org/ig/hl7au/au-fhir-base//ValueSet-order-identifier-type.html)|[AU eRequesting ServiceRequest](StructureDefinition-au-erequesting-servicerequest.html), [AU eRequesting Imaging Request](StructureDefinition-au-erequesting-servicerequest-imag.html), [AU eRequesting Pathology Request](StructureDefinition-au-erequesting-servicerequest-path.html)|AU Base|
|[Pathology Procedure](https://healthterminologies.gov.au/fhir/ValueSet/pathology-procedure-1)|[AU eRequesting Pathology Request](StructureDefinition-au-erequesting-servicerequest-path.html)|NCTS|
|[RCPA - SPIA Requesting Pathology Terminology Reference Set](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/spia-requesting-refset-3)|[AU eRequesting Pathology Request](StructureDefinition-au-erequesting-servicerequest-path.html)|NCTS|
|[Reason for Request](https://healthterminologies.gov.au/fhir/ValueSet/reason-for-request-1)|[AU eRequesting ServiceRequest](StructureDefinition-au-erequesting-servicerequest.html), [AU eRequesting Imaging Request](StructureDefinition-au-erequesting-servicerequest-imag.html), [AU eRequesting Pathology Request](StructureDefinition-au-erequesting-servicerequest-path.html)|NCTS|
|[RequestIntent](https://hl7.org/fhir/R4/valueset-request-intent.html)|[AU eRequesting ServiceRequest](StructureDefinition-au-erequesting-servicerequest.html), [AU eRequesting Imaging Request](StructureDefinition-au-erequesting-servicerequest-imag.html), [AU eRequesting Pathology Request](StructureDefinition-au-erequesting-servicerequest-path.html)|FHIR|
|[RequestStatus](https://hl7.org/fhir/R4/valueset-request-status.html)|[AU eRequesting ServiceRequest](StructureDefinition-au-erequesting-servicerequest.html), [AU eRequesting Imaging Request](StructureDefinition-au-erequesting-servicerequest-imag.html), [AU eRequesting Pathology Request](StructureDefinition-au-erequesting-servicerequest-path.html)|FHIR|
{:.grid}



### Code systems

This implementation guide does not define any unique code systems. The code systems used in this guide are defined in the base FHIR specification, [AU Base](https://build.fhir.org/ig/hl7au/au-fhir-base/terminology.html), or [NCTS](https://www.healthterminologies.gov.au/integration/R4/fhir/metadata).  

The list below shows the code systems used in the value sets above.

|CodeSystem|ValueSet where used|Published|
|---|---|---|---|
|[AdministrativeGender](https://hl7.org/fhir/R4/codesystem-administrative-gender.html)|[AdministrativeGender](https://hl7.org/fhir/R4/valueset-administrative-gender.html)|FHIR|
|[AddressUse](http://hl7.org/fhir/address-use)|[AddressUse](http://hl7.org/fhir/ValueSet/address-use)|FHIR|
|[AddressType](http://hl7.org/fhir/address-type)|[AddressType](http://hl7.org/fhir/ValueSet/address-type)|FHIR|
|[Australian Indigenous Status](https://healthterminologies.gov.au/fhir/CodeSystem/australian-indigenous-status-1)|[Australian Indigenous Status](https://healthterminologies.gov.au/fhir/ValueSet/australian-indigenous-status-1)|NCTS|
|[Australian States and Territories](https://healthterminologies.gov.au/fhir/CodeSystem/australian-states-territories-1)|[Australian States and Territories](https://healthterminologies.gov.au/fhir/ValueSet/australian-states-territories-2)|NCTS|
|[ContactPointSystem](http://hl7.org/fhir/contact-point-system)|[ContactPointSystem](http://hl7.org/fhir/ValueSet/contact-point-system)|FHIR|
|[ContactPointUse](http://hl7.org/fhir/contact-point-use)|[ContactPointUse](http://hl7.org/fhir/ValueSet/contact-point-use)|FHIR|
|[DataAbsentReason](https://hl7.org/fhir/R4/valueset-data-absent-reason.html)|[Australian Pronouns](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/australian-pronouns-1), [Gender Identity Response](https://healthterminologies.gov.au/fhir/ValueSet/gender-identity-response-1)|FHIR|
|[IdentifierType AU](https://build.fhir.org/ig/hl7au/au-fhir-base//CodeSystem-au-v2-0203.html)|[DVA Entitlement](https://build.fhir.org/ig/hl7au/au-fhir-base/ValueSet-dva-entitlement.html), [hl7VS-identifierType - AU Extended](https://build.fhir.org/ig/hl7au/au-fhir-base/ValueSet-au-v2-0203-extended.html)|AU Base|
|[identifierType](https://terminology.hl7.org/5.5.0/CodeSystem-v2-0203.html)|[Order Identifier Type](https://build.fhir.org/ig/hl7au/au-fhir-base/ValueSet-order-identifier-type.html)|FHIR|
|[IdentifierUse](https://hl7.org/fhir/R4/valueset-identifier-use.html)|[IdentifierUse](https://hl7.org/fhir/R4/valueset-identifier-use.html)|FHIR|
|[LOINC](https://www.healthterminologies.gov.au/access-clinical-terminology/access-fhir-terminology-resources/code-systems/?ui:filter=loinc)|[Australian Pronouns](https://healthterminologies.gov.au/fhir/ValueSet/australian-pronouns-1)|NCTS|
|[NameUse](https://hl7.org/fhir/R4/codesystem-name-use.html)|[NameUse](https://hl7.org/fhir/R4/valueset-name-use.html)|FHIR|
|[RequestIntent](https://hl7.org/fhir/R4/codesystem-request-intent.html)|[RequestIntent](https://hl7.org/fhir/R4/valueset-request-intent.html)|FHIR|
|[RequestStatus](https://hl7.org/fhir/R4/codesystem-request-status.html)|[RequestStatus](https://hl7.org/fhir/R4/valueset-request-status.html)|FHIR|
|[SNOMED CT (Australian extension)](https://www.healthterminologies.gov.au/access-clinical-terminology/access-fhir-terminology-resources/code-systems/?ui:filter=snomed)|[Gender Identity Response](https://healthterminologies.gov.au/fhir/ValueSet/gender-identity-response-1), [Reason for Request](https://healthterminologies.gov.au/fhir/ValueSet/reason-for-request-1)|NCTS|
|[Tags for the Identification of Languages](https://terminology.hl7.org/CodeSystem-v3-ietf3066.html)|[Common Languages in Australia](https://healthterminologies.gov.au/fhir/ValueSet/common-languages-australia-2)|FHIR|
{:.grid}




