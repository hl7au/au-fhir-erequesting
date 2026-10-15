This page addresses how sex and gender related concepts can be structured in FHIR and conformant to AU eRequesting.

AU eRequesting places *Must Support* on some concepts and inherits sex and gender related elements localised in AU Base, which has considered the logical data element models provided by [HL7 International’s Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1 specification (Gender Harmony IG)](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/). AU Core profiles referenced in AU eRequesting place *Must Support* on some concepts and inherit sex and gender elements localised in AU Base. 

The table below provides an overview of the sex and gender concepts that are included in AU eRequesting by definition, or by reference to AU Core or AU Base.

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
                <a href="StructureDefinition-au-erequesting-patient.html">AU eRequesting<br/>Patient</a>
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
                <a href="StructureDefinition-au-erequesting-practitioner.html">AU eRequesting <br/>Practitioner</a>
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
                <a href="https://hl7.org.au/fhir/core/2.0.0/StructureDefinition-au-core-relatedperson.html">AU Core<br/> RelatedPerson</a>
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
AU eRequesting supports the exchange of Administrative Gender, i.e. the basic `Patient.gender` property, as a *Must Support* element in [AU eRequesting Patient](StructureDefinition-au-erequesting-patient.html). As per AU Base, the `Patient.gender` value **SHALL** be regarded as a Recorded Sex or Gender. AU eRequesting adopts without change, the implementation guidance defined in the [Administrative Gender (Patient.gender)](https://hl7.org.au/fhir/6.0.0/sexgender.html#administrative-gender-patientgender) section of the AU Base [Sex and Gender](https://hl7.org.au/fhir/6.0.0/sexgender.html) page.

### Name to Use (NtU)
AU eRequesting supports the exchange of the Name to Use data element (as defined in the [HL7 Gender Harmony IG](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)), and `name.use` is a *Must Support* element in [AU eRequesting Patient](StructureDefinition-au-erequesting-patient.html) and in [AU Core RelatedPerson](https://hl7.org.au/fhir/core/2.0.0/StructureDefinition-au-core-relatedperson.html) (referenced by AU eRequesting). It is important to note that, `name.period` is not a *Must Support* element. AU eRequesting and AU Core adopts without change, the implementation guidance defined in the [Name to Use (NtU)](https://hl7.org.au/fhir/6.0.0/sexgender.html#name-to-use-ntu) section of the AU Base [Sex and Gender](https://hl7.org.au/fhir/6.0.0/sexgender.html) page.

### Pronouns​
AU eRequesting supports the exchange of the Pronouns data element (as defined in the [HL7 Gender Harmony IG](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)). The [Individual Pronouns](http://hl7.org/fhir/StructureDefinition/individual-pronouns) extension is a *Must Support* element in [AU eRequesting Patient](StructureDefinition-au-erequesting-patient.html), with the value element of the extension constrained to be [Australian Pronouns](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/australian-pronouns-1) ([extensible](http://hl7.org/fhir/R4/terminologies.html#extensible)). AU eRequesting adopts without change, the implementation guidance defined in the [Pronouns](https://hl7.org.au/fhir/6.0.0/sexgender.html#pronouns) section of the AU Base [Sex and Gender](https://hl7.org.au/fhir/6.0.0/sexgender.html) page.

### Gender Identity (GI)
AU eRequesting supports the exchange of the Gender Identity data element (as defined in the [HL7 Gender Harmony IG](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)).  The [Individual Gender Identity](http://hl7.org/fhir/StructureDefinition/individual-genderIdentity) extension is a *Must Support* element in [AU eRequesting Patient](StructureDefinition-au-erequesting-patient.html), with the value element of the extension constrained to be [Gender Identity Response](https://healthterminologies.gov.au/fhir/ValueSet/gender-identity-response-1) ([extensible](http://hl7.org/fhir/R4/terminologies.html#extensible)). AU eRequesting adopts without change, the implementation guidance defined in the [Gender Identity](https://hl7.org.au/fhir/6.0.0/sexgender.html#gender-identity-gi) section of the AU Base [Sex and Gender](https://hl7.org.au/fhir/6.0.0/sexgender.html) page.

### Recorded Sex or Gender
In AU eRequesting profiles, or AU Core profiles referenced by AU eRequesting, Recorded Sex or Gender is not *Must Support*. See the implementation guidance defined in the [Recorded Sex or Gender](https://hl7.org.au/fhir/6.0.0/sexgender.html#recorded-sex-or-gender) section of the AU Base [Sex and Gender](https://hl7.org.au/fhir/6.0.0/sexgender.html) page for more information.

### Sex Assigned at Birth
Sex Assigned at Birth is profiled in AU Core as [AU Core Sex Assigned At Birth](https://hl7.org.au/fhir/core/2.0.0/StructureDefinition-au-core-rsg-sexassignedab.html). While elements within AU Core Sex Assigned at Birth are *Must Support*, usage of the profile is not *Must Support* in [AU eRequesting Patient](StructureDefinition-au-erequesting-patient.html). The AU Core Sex Assigned at Birth profile provides an implementation of the guidance in the [Sex Assigned at Birth](https://hl7.org.au/fhir/6.0.0/sexgender.html#sex-assigned-at-birth) section of the AU Base [Sex and Gender](https://hl7.org.au/fhir/6.0.0/sexgender.html) page.

### Sex Parameter for Clinical Use (SPCU)

<p class="stu-note">
When implementing Sex Parameter for Clinical Use, implementers should be aware that there is currently no national clinical framework supporting its use. It has not yet been endorsed by the Sparked CDG and has not been included in the AUCDI and AUeReqDI as a clinical concept for national use.
</p>

<p class="stu-note">
The guidance on this page is dependent on the availability of the <code class=" highlighter-rouge language-plaintext">intendedClinicalUse</code> element, added to the SPCU extension in the September 2025 Ballot of the HL7 International FHIR Extensions Pack.
</p>

AU eRequesting supports the exchange of the Sex Parameter for Clinical Use (SPCU) data element (as defined by the [HL7 Gender Harmony IG](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)). The [Patient Sex Parameter for Clinical Use](http://hl7.org/fhir/extensions/StructureDefinition-patient-sexParameterForClinicalUse.html) extension is a *Must Support* element in [AU eRequesting Diagnostic Request](StructureDefinition-au-erequesting-diagnosticrequest.html), [AU eRequesting Imaging Request](StructureDefinition-au-erequesting-servicerequest-imag.html) and [AU eRequesting Pathology Request](StructureDefinition-au-erequesting-servicerequest-path.html) and a maximum of one SPCU value is allowed. The [Patient Sex Parameter for Clinical Use](http://hl7.org/fhir/extensions/StructureDefinition-patient-sexParameterForClinicalUse.html) extension is not a *Must Support* element in [AU eRequesting Patient](StructureDefinition-au-erequesting-patient.html).

The inclusion of an SPCU value indicates that the requester is explicitly providing a sex parameter intended for use in fulfilment of the requested diagnostic service. When it is present in an [AU eRequesting Imaging Request](StructureDefinition-au-erequesting-servicerequest-imag.html) or [AU eRequesting Pathology Request](StructureDefinition-au-erequesting-servicerequest-path.html), it conveys the AU eRequesting Placer's intended SPCU for the diagnostic request and can be relied upon by AU eRequesting Filler to support the requested service.

It is recommended that the clinical context for the SPCU value is also provided (e.g. Use female reference intervals when interpreting results). Clinical context clarifies the intended use of the SPCU, supports accurate interpretation by AU eRequesting Fillers, and reduces ambiguity where the patient's other sex and gender attributes may differ. Clinical context can be included in either the [`comment`](https://hl7.org/fhir/extensions/StructureDefinition-patient-sexParameterForClinicalUse-definitions.html#Extension.extension:comment) or [`intendedClinicalUse`](https://hl7.org/fhir/extensions/StructureDefinition-patient-sexParameterForClinicalUse-definitions.html#Extension.extension:intendedClinicalUse) element.

See the implementation guidance defined in the [Sex Parameter for Clinical Use (SPCU)](https://hl7.org.au/fhir/6.0.0/sexgender.html#sex-parameter-for-clinical-use-spcu) section of the AU Base [Sex and Gender](https://hl7.org.au/fhir/6.0.0/sexgender.html) page.