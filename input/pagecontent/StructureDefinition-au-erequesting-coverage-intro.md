### Profile Specific Implementation Guidance
- See guidance on the construction of identifiers in each Identifier profile and the section on [Business Identifiers](https://build.fhir.org/ig/hl7au/au-fhir-base/generalguidance.html#business-identifiers) in AU Base.
- See guidance on populating `Coverage.type` in [AU Base Coverage Profile Specific Implementation Guidance](https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-coverage.html#usage-notes).
- When using one of the below Coverage types, at least one of the corresponding identifiers **SHOULD** be populated:

|Coverage|Coverage.type|Coverage.identifier|
|---|---|---|
|Medicare|PUBLICPOL|[AU Medicare Card Number](https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-medicarecardnumber.html)|
|Department of Veterans Affairs (DVA)|VET|[AU DVA Number](https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-dvanumber.html)|
|Concession|payconc|[AU Pensioner Concession Card Number](https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-pensionerconcessioncardnumber.html), [AU Commonwealth Seniors Health Card Number](https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-cwlthseniorshealthcardnumber.html), [AU Health Care Card Number](https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-healthcarecardnumber.html)|
|Private health insurance|HIP|[AU Insurance Member Number](https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-insurancemembernumber.html)|
|Private (self funded)|pay|N/A|
{:.grid}