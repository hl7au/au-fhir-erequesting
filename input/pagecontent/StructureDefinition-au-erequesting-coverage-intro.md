### Profile Specific Implementation Guidance
- See guidance on the construction of identifiers in each Identifier profile and the section on [Business Identifiers](https://build.fhir.org/ig/hl7au/au-fhir-base/generalguidance.html#business-identifiers) in AU Base.
- See guidance on populating `Coverage.type` in [AU Base Coverage](https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-coverage.html) Profile Specific Implementation Guidance.
- When using one of the below Coverage types, at least one of the corresponding identifiers **SHOULD** be populated:
<table border="1" cellspacing="0" cellpadding="0" width="100%">
    <tr style="background-color: #f2f2f2;">
        <th>Coverage</th>
        <th>Coverage.type</th>
        <th>Coverage.identifier</th>
    </tr>
    <tr>
        <td>Department of Veterans Affairs (DVA)</td>
        <td>VET</td>
        <td><a href="https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-dvanumber.html">AU DVA Number</a></td>
    </tr>
    <tr>
        <td>Concession</td>
        <td>payconc</td>
        <td><a href="https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-pensionerconcessioncardnumber.html">AU Pensioner Concession Card Number</a>, <a href="https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-cwlthseniorshealthcardnumber.html">AU Commonwealth Seniors Health Card Number</a>, <a href="https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-healthcarecardnumber.html">AU Health Care Card Number</a></td>
    </tr>
    <tr>
        <td>Private health insurance</td>
        <td>HIP</td>
        <td><a href="https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-insurancemembernumber.html">AU Insurance Member Number</a></td>
    </tr>
    <tr>
        <td>Private (self funded)</td>
        <td>pay</td>
        <td>N/A</td>
    </tr>
</table>