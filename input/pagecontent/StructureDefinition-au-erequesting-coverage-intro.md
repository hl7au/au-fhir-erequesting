### Profile Specific Implementation Guidance
- See guidance on the construction of identifiers in each Identifier profile and the section on [Business Identifiers](https://build.fhir.org/ig/hl7au/au-fhir-base/generalguidance.html#business-identifiers) in AU Base.
- See guidance on populating `Coverage.type` in [AU Base Coverage](https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-coverage.html) Profile Specific Implementation Guidance.
- When using one of the below Coverage types, at least one of the corresponding identifiers **SHOULD** be populated:
<table>
    <tr>
        <td>**Coverage**</td>
        <td>**Coverage.type**</td>
        <td>**Coverage.identifier**</td>
    </tr>
    <tr>
        <td>Department of Veterans Affairs (DVA)</td>
        <td>VET</td>
        <td>[AU DVA Number](https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-dvanumber.html)</td>
    </tr>
    <tr>
        <td>Concession</td>
        <td>payconc</td>
        <td>[AU Pensioner Concession Card Number](https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-pensionerconcessioncardnumber.html), [AU Commonwealth Seniors Health Card Number](https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-cwlthseniorshealthcardnumber.html), [AU Health Care Card Number](https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-healthcarecardnumber.html)</td>
    </tr>
    <tr>
        <td>Private health insurance</td>
        <td>HIP</td>
        <td>[AU Insurance Member Number](https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-insurancemembernumber.html)</td>
    </tr>
    <tr>
        <td>Private (self funded)</td>
        <td>pay</td>
        <td>N/A</td>
    </tr>
</table>