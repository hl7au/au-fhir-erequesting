This page lists all ValueSets and CodeSystems supported as part of AU eRequesting. 

As well as terminology defined in FHIR, this specification supports terminology defined in [AU Base](https://build.fhir.org/ig/hl7au/au-fhir-base/terminology.html) or [National Clinical Terminology Service (NCTS)](https://www.healthterminologies.gov.au/integration/R4/fhir) terminology resources. 

### Value Sets

This implementation guide does not define any unique value sets. The value sets used in this guide are defined in the base FHIR specification, [AU Base](https://build.fhir.org/ig/hl7au/au-fhir-base/terminology.html), or [NCTS](https://www.healthterminologies.gov.au/integration/R4/fhir/metadata).  

The list below shows the value sets bound to a supported element or element slice.

|ValueSet|Profile where used in|Published in|
|---| ---| ---|
|[AdministrativeGender](https://hl7.org/fhir/R4/valueset-administrative-gender.html)|AU Core Patient|FHIR|
|[Australian Indigenous Status](https://healthterminologies.gov.au/fhir/ValueSet/australian-indigenous-status-1)|AU Core Patient|NCTS|
|[Australian Pronouns](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/australian-pronouns-1)|AU Core Patient|NCTS|
|[Australian States and Territories](https://healthterminologies.gov.au/fhir/ValueSet/australian-states-territories-2)|AU Core Patient,AU Core Organization,AU Core Location|NCTS|
|[Common Languages in Australia](https://healthterminologies.gov.au/fhir/ValueSet/common-languages-australia-2)|AU Core Patient|NCTS|
|[DVA Entitlement](https://build.fhir.org/ig/hl7au/au-fhir-base/ValueSet-dva-entitlement.html)|AU Core Patient|AU Base|
|[Gender Identity Response](https://healthterminologies.gov.au/fhir/ValueSet/gender-identity-response-1)|AU Core Patient|NCTS|
|[IdentifierUse](https://hl7.org/fhir/R4/valueset-identifier-use.html)|AU Core Patient|FHIR|
|[Individual Healthcare Identifier Record Status](https://healthterminologies.gov.au/fhir/ValueSet/ihi-record-status-1)|AU Core Patient|NCTS|
|[Individual Healthcare Identifier Status](https://healthterminologies.gov.au/fhir/ValueSet/ihi-status-1)|AU Core Patient|NCTS|
|[NameUse](https://hl7.org/fhir/R4/valueset-name-use.html)|AU Core Patient|FHIR|
|[Order Identifier Type](https://build.fhir.org/ig/hl7au/au-fhir-base//ValueSet-order-identifier-type.html)|AU eRequesting ServiceRequest|AU Base|
|[Reason for Request](https://healthterminologies.gov.au/fhir/ValueSet/reason-for-request-1)|AU eRequesting ServiceRequest|NCTS|
|[RequestIntent](https://hl7.org/fhir/R4/valueset-request-intent.html)|AU eRequesting ServiceRequest|FHIR|
|[RequestStatus](https://hl7.org/fhir/R4/valueset-request-status.html)|AU eRequesting ServiceRequest|FHIR|
{:.grid}



### Code systems

This implementation guide does not define any unique code systems. The code systems used in this guide are defined in the base FHIR specification, [AU Base](https://build.fhir.org/ig/hl7au/au-fhir-base/terminology.html), or [NCTS](https://www.healthterminologies.gov.au/integration/R4/fhir/metadata).  

The list below shows the code systems used in a value set that is bound to a supported element or element slice.

|CodeSystem|CodeSystem URI|ValueSet where used|Published in|
|---|---|---|---|
|[AdministrativeGender](https://hl7.org/fhir/R4/codesystem-administrative-gender.html)|http://hl7.org/fhir/administrative-gender|AdministrativeGender|FHIR|
|[Australian Indigenous Status](https://www.healthterminologies.gov.au/integration/R4/fhir/CodeSystem/australian-indigenous-status-1)|https://healthterminologies.gov.au/fhir/CodeSystem/australian-indigenous-status-1|Australian Indigenous Status|AU Base|
|[Australian States and Territories](https://healthterminologies.gov.au/fhir/CodeSystem/australian-states-territories-1)|https://healthterminologies.gov.au/fhir/CodeSystem/australian-states-territories-1|Australian States and Territories|NCTS|
|[DataAbsentReason](https://hl7.org/fhir/R4/valueset-data-absent-reason.html)|http://terminology.hl7.org/CodeSystem/data-absent-reason|Australian Pronouns,Gender Identity Response|FHIR|
|[IdentifierType AU](https://build.fhir.org/ig/hl7au/au-fhir-base//CodeSystem-au-v2-0203.html)|https://build.fhir.org/ig/hl7au/au-fhir-base//CodeSystem-au-v2-0203.html|DVA Entitlement|FHIR|
|[identifierType](https://terminology.hl7.org/5.5.0/CodeSystem-v2-0203.html)|http://terminology.hl7.org/CodeSystem/v2-0203|Order Identifier Type|FHIR|
|[IdentifierUse](https://hl7.org/fhir/R4/valueset-identifier-use.html)|http://hl7.org/fhir/identifier-use|IdentifierUse|FHIR|
|[Individual Healthcare Identifier Record Status](https://healthterminologies.gov.au/fhir/CodeSystem/ihi-record-status-1)|https://healthterminologies.gov.au/fhir/CodeSystem/ihi-record-status-1|Individual Healthcare Identifier Record Status|NCTS|
|[Individual Healthcare Identifier Status](https://www.healthterminologies.gov.au/integration/R4/fhir/CodeSystem/ihi-status-1?ui:source=search)|https://healthterminologies.gov.au/fhir/CodeSystem/ihi-status-1|Individual Healthcare Identifier Status|NCTS|
|[LOINC](https://www.healthterminologies.gov.au/access-clinical-terminology/access-fhir-terminology-resources/code-systems/?ui:filter=loinc)|http://loinc.org|Australian Pronouns|NCTS|
|[NameUse](https://hl7.org/fhir/R4/codesystem-name-use.html)|http://hl7.org/fhir/name-use|NameUse|FHIR|
|[RequestIntent](https://hl7.org/fhir/R4/codesystem-request-intent.html)|http://hl7.org/fhir/request-intent|RequestIntent|FHIR|
|[RequestStatus](https://hl7.org/fhir/R4/codesystem-request-status.html)|http://hl7.org/fhir/request-status|RequestStatus|FHIR|
|[SNOMED CT (SNOMED CT AU (Australian Medicines Terminology))](https://www.healthterminologies.gov.au/access-clinical-terminology/access-fhir-terminology-resources/code-systems/?ui:filter=snomed)|http://snomed.info/sct|Reason for Request,Gender Identity Response|NCTS|
|[Tags for the Identification of Languages](https://terminology.hl7.org/CodeSystem-v3-ietf3066.html)|urn:ietf:bcp:47|Common Languages in Australia|FHIR|
{:.grid}




