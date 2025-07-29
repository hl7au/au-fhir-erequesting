This page addresses how sex and gender related concepts can be structured in FHIR and conformant to AU eRequesting.

AU eRequesting references AU Base and AU Core profiles which represent sex and gender concepts. AU Cores places *Must Support* on some concepts and inherits sex and gender related elements localised in AU Base, which has considered the logical data element models provided by [HL7 International’s Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1 specification (Gender Harmony IG)](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/).

The table below provides an overview of the sex and gender concepts that are included in AU eRequesting by definition, or by reference to AU Core.

**Legend:**

<img src="green_checkmark.png" width="20"/> **Supported**: The sex or gender related concept is marked as *Must Support*.

<img src="orange_checkmark.png" width="20"/> **Localised**: The sex or gender related concept is localised for use in an Australian context but is not marked as *Must Support*.

<img src="blue_checkmark.png" width="20"/> **Not Localised**: The sex or gender related concept is relevant and not yet localised for use in an Australian context.

<img src="minus_symbol.png" width="20"/> **Not Applicable**: This sex or gender related concept is not applicable for use with this resource type.


<table border="1" style="width: 100%; margin: auto; border-collapse: collapse;">
    <thead>
        <tr>
            <th style="width: 12%; text-align: center; vertical-align: middle;">
                Sex and<br/>Gender Concept
            </th>
            <th style="width: 12%; text-align: center; vertical-align: middle;">
                <a href="sex-and-gender.html#administrative-gender-patientgender">Administrative Gender</a>
            </th>
            <th style="width: 12%; text-align: center; vertical-align: middle;">
                <a href="sex-and-gender.html#name-to-use-ntu">Name to Use</a>
            </th>
            <th style="width: 12%; text-align: center; vertical-align: middle;">
                <a href="sex-and-gender.html#pronouns">Pronouns</a>
            </th>
            <th style="width: 12%; text-align: center; vertical-align: middle;">
                <a href="sex-and-gender.html#gender-identity-gi">Gender Identity</a>
            </th>
            <th style="width: 12%; text-align: center; vertical-align: middle;">
                <a href="sex-and-gender.html#recorded-sex-or-gender">
                    Recorded Sex <br/>or Gender
                </a>
            </th>
            <th style="width: 12%; text-align: center; vertical-align: middle;">
                <a href="sex-and-gender.html#sex-assigned-at-birth">
                    Sex Assigned <br/>at Birth
                </a>
            </th>
            <th style="width: 12%; text-align: center; vertical-align: middle;">
                <a href="sex-and-gender.html#sex-parameter-for-clinical-use-spcu">
                    Sex Parameter<br/>for Clinical Use<br/>(SPCU)
                </a>
            </th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td style=" text-align: center; vertical-align: middle;">
                <a href="StructureDefinition-au-erequesting-diagnosticrequest.html">AU eRequesting <br/>Diagnostic Request</a>
            </td>
            <td style=" text-align: center; vertical-align: middle;">
                <img src="minus_symbol.png" width="20"/>
            </td>
            <td style=" text-align: center; vertical-align: middle;">
                <img src="minus_symbol.png" width="20"/>
            </td>
            <td style=" text-align: center; vertical-align: middle;">
                <img src="minus_symbol.png" width="20"/>
            </td>
            <td style=" text-align: center; vertical-align: middle;">
                <img src="minus_symbol.png" width="20"/>
            </td>
            <td style=" text-align: center; vertical-align: middle;">
                <img src="minus_symbol.png" width="20"/>
            </td>
            <td style=" text-align: center; vertical-align: middle;">
                <img src="minus_symbol.png" width="20"/>
            </td>
            <td style=" text-align: center; vertical-align: middle;">
                <img src="green_checkmark.png" width="20"/>
            </td>
        </tr>
        <tr>
            <td style=" text-align: center; vertical-align: middle;">
                <a href="StructureDefinition-au-erequesting-servicerequest-imag.html">AU eRequesting <br/>Imaging Request</a>
            </td>
            <td style=" text-align: center; vertical-align: middle;">
                <img src="minus_symbol.png" width="20"/>
            </td>
            <td style=" text-align: center; vertical-align: middle;">
                <img src="minus_symbol.png" width="20"/>
            </td>
            <td style=" text-align: center; vertical-align: middle;">
                <img src="minus_symbol.png" width="20"/>
            </td>
            <td style=" text-align: center; vertical-align: middle;">
                <img src="minus_symbol.png" width="20"/>
            </td>
            <td style=" text-align: center; vertical-align: middle;">
                <img src="minus_symbol.png" width="20"/>
            </td>
            <td style=" text-align: center; vertical-align: middle;">
                <img src="minus_symbol.png" width="20"/>
            </td>
            <td style=" text-align: center; vertical-align: middle;">
                <img src="green_checkmark.png" width="20"/>
            </td>
        </tr>
        <tr>
            <td style=" text-align: center; vertical-align: middle;">
                <a href="StructureDefinition-au-erequesting-servicerequest-path.html">AU eRequesting <br/>Pathology Request</a>
            </td>
            <td style=" text-align: center; vertical-align: middle;">
                <img src="minus_symbol.png" width="20"/>
            </td>
            <td style=" text-align: center; vertical-align: middle;">
                <img src="minus_symbol.png" width="20"/>
            </td>
            <td style=" text-align: center; vertical-align: middle;">
                <img src="minus_symbol.png" width="20"/>
            </td>
            <td style=" text-align: center; vertical-align: middle;">
                <img src="minus_symbol.png" width="20"/>
            </td>
            <td style=" text-align: center; vertical-align: middle;">
                <img src="minus_symbol.png" width="20"/>
            </td>
            <td style=" text-align: center; vertical-align: middle;">
                <img src="minus_symbol.png" width="20"/>
            </td>
            <td style=" text-align: center; vertical-align: middle;">
                <img src="green_checkmark.png" width="20"/>
            </td>
        </tr>
        <tr>
            <td style=" text-align: center; vertical-align: middle;">
                <a href="StructureDefinition-au-core-patient.html">AU Core<br/>Patient</a>
            </td>
            <td style=" text-align: center; vertical-align: middle;">
                <img src="green_checkmark.png" width="20"/>
            </td>
            <td style=" text-align: center; vertical-align: middle;">
                <img src="green_checkmark.png" width="20"/>
            </td>
            <td style=" text-align: center; vertical-align: middle;">
                <img src="green_checkmark.png" width="20"/>
            </td>
            <td style=" text-align: center; vertical-align: middle;">
                <img src="green_checkmark.png" width="20"/>
            </td>
            <td style=" text-align: center; vertical-align: middle;">
                <img src="orange_checkmark.png" width="20"/>
            </td>
            <td style=" text-align: center; vertical-align: middle;">
                <img src="orange_checkmark.png" width="20"/>
            </td>
            <td style=" text-align: center; vertical-align: middle;">
                <img src="orange_checkmark.png" width="20"/>
            </td>
        </tr>
        <tr>
            <td style=" text-align: center; vertical-align: middle;">
                <a href="StructureDefinition-au-core-practitioner.html">AU Core <br/>Practitioner</a>
            </td>
            <td style=" text-align: center; vertical-align: middle;">
                <img src="blue_checkmark.png" width="20"/>
            </td>
            <td style=" text-align: center; vertical-align: middle;">
                <img src="orange_checkmark.png" width="20"/>
            </td>
            <td style=" text-align: center; vertical-align: middle;">
                <img src="orange_checkmark.png" width="20"/>
            </td>
            <td style=" text-align: center; vertical-align: middle;">
                <img src="orange_checkmark.png" width="20"/>
            </td>
            <td style=" text-align: center; vertical-align: middle;">
                <img src="orange_checkmark.png" width="20"/>
            </td>
            <td style=" text-align: center; vertical-align: middle;">
                <img src="orange_checkmark.png" width="20"/>
            </td>
            <td style=" text-align: center; vertical-align: middle;">
                <img src="minus_symbol.png" width="20"/>
            </td>
        </tr>
        <tr>
            <td style=" text-align: center; vertical-align: middle;">
                <a href="StructureDefinition-au-core-relatedperson.html">AU Core<br/> RelatedPerson</a>
            </td>
            <td style=" text-align: center; vertical-align: middle;">
                <img src="blue_checkmark.png" width="20"/>
            </td>
            <td style=" text-align: center; vertical-align: middle;">
                <img src="green_checkmark.png" width="20"/>
            </td>
            <td style=" text-align: center; vertical-align: middle;">
                <img src="orange_checkmark.png" width="20"/>
            </td>
            <td style=" text-align: center; vertical-align: middle;">
                <img src="orange_checkmark.png" width="20"/>
            </td>
            <td style=" text-align: center; vertical-align: middle;">
                <img src="orange_checkmark.png" width="20"/>
            </td>
            <td style=" text-align: center; vertical-align: middle;">
                <img src="orange_checkmark.png" width="20"/>
            </td>
            <td style=" text-align: center; vertical-align: middle;">
                <img src="minus_symbol.png" width="20"/>
            </td>
        </tr>
    </tbody>
</table>


### Administrative Gender (Patient.gender)
By reference to AU Core Patient, AU eRequesting supports the exchange of Administrative Gender, i.e. the basic `Patient.gender` property, as a *Must Support* element in [AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html). As per AU Base, the `Patient.gender` value **SHALL** be regarded as a Recorded Sex or Gender. AU Core adopts without change, the implementation guidance defined in the [Administrative Gender (Patient.gender)](https://build.fhir.org/ig/hl7au/au-fhir-base/sexgender.html#administrative-gender-patientgender) section of the AU Base [Sex and Gender](https://build.fhir.org/ig/hl7au/au-fhir-base/sexgender.html) page.

### Name to Use (NtU)
By reference to AU Core Patient, AU eRequesting supports the exchange of the Name to Use data element (as defined in the [HL7 Gender Harmony IG](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)), and `name.use` is a *Must Support* element in [AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html) and [AU Core RelatedPerson](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-relatedperson.html). It is important to note that, `name.period` is not a *Must Support* element. AU Core adopts without change, the implementation guidance defined in the [Name to Use (NtU)](https://build.fhir.org/ig/hl7au/au-fhir-base/sexgender.html#name-to-use-ntu) section of the AU Base [Sex and Gender](https://build.fhir.org/ig/hl7au/au-fhir-base/sexgender.html) page.

### Pronouns​
By reference to AU Core Patient, AU eRequesting supports the exchange of the Pronouns data element (as defined in the [HL7 Gender Harmony IG](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)). The [Individual Pronouns](https://build.fhir.org/ig/HL7/fhir-extensions//StructureDefinition-individual-pronouns.html) extension is a *Must Support* element in [AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html), with the value element of the extension constrained to be [Australian Pronouns](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/australian-pronouns-1) ([extensible](http://hl7.org/fhir/R4/terminologies.html#extensible)). AU Core adopts without change, the implementation guidance defined in the [Pronouns](https://build.fhir.org/ig/hl7au/au-fhir-base/sexgender.html#pronouns) section of the AU Base [Sex and Gender](https://build.fhir.org/ig/hl7au/au-fhir-base/sexgender.html) page.

### Gender Identity (GI)
By reference to AU Core Patient, AU eRequesting supports the exchange of the Gender Identity data element (as defined in the [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)).  The [Individual Gender Identity](https://build.fhir.org/ig/HL7/fhir-extensions//StructureDefinition-individual-genderIdentity.html) extension is a *Must Support* element in [AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html), with the value element of the extension constrained to be [Gender Identity Response](https://healthterminologies.gov.au/fhir/ValueSet/gender-identity-response-1) ([extensible](http://hl7.org/fhir/R4/terminologies.html#extensible)). AU Core adopts without change, the implementation guidance defined in the [Gender Identity](https://build.fhir.org/ig/hl7au/au-fhir-base/sexgender.html#gender-identity-gi) section of the AU Base [Sex and Gender](https://build.fhir.org/ig/hl7au/au-fhir-base/sexgender.html) page.

### Recorded Sex or Gender
In AU Core referenced profiles, Recorded Sex or Gender is not *Must Support*. See the implementation guidance defined in the [Recorded Sex or Gender](https://build.fhir.org/ig/hl7au/au-fhir-base/sexgender.html#recorded-sex-or-gender) section of the AU Base [Sex and Gender](https://build.fhir.org/ig/hl7au/au-fhir-base/sexgender.html) page for more information.

### Sex Assigned at Birth
In AU Core, Sex Assigned at Birth is profiled as [AU Core Sex Assigned At Birth](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-rsg-sexassignedab.html). While elements within AU Core Sex Assigned at Birth are *Must Support*, usage of the profile is not *Must Support* in [AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html) which is referenced by AU eRequesting. That profile provides an implementation of the guidance in the [Sex Assigned at Birth](https://build.fhir.org/ig/hl7au/au-fhir-base/sexgender.html#sex-assigned-at-birth) section of the AU Base [Sex and Gender](https://build.fhir.org/ig/hl7au/au-fhir-base/sexgender.html) page.

### Sex Parameter for Clinical Use (SPCU)
AU eRequesting supports the exchange of the Sex Parameter for Clinical Use (SPCU) data element (as defined by the [HL7 Gender Harmony IG](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)). The [Patient Sex Parameter for Clinical Use](https://hl7.org/fhir/extensions/5.2.0/StructureDefinition-patient-sexParameterForClinicalUse.html) extension is a *Must Support* element in [AU eRequesting Diagnostic Request](StructureDefinition-au-erequesting-diagnosticrequest.html), [AU eRequesting Imaging Request](StructureDefinition-au-erequesting-servicerequest-imag.html) and [AU eRequesting Pathology Request](StructureDefinition-au-erequesting-servicerequest-path.html). In AU eRequesting, a single SPCU value is allowed, and indicates that the sex parameter is relevant to the service request. 

See the implementation guidance defined in the [Sex Parameter for Clinical Use (SPCU)](https://build.fhir.org/ig/hl7au/au-fhir-base/sexgender.html#sex-parameter-for-clinical-use-spcu) section of the AU Base [Sex and Gender](https://build.fhir.org/ig/hl7au/au-fhir-base/sexgender.html) page for more information.