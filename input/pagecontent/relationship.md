This guide is built on top of the FHIR standard and, where available, [AU Base](https://build.fhir.org/ig/hl7au/au-fhir-base/). It is compliant with the profile conformance requirements in [AU Core](https://build.fhir.org/ig/hl7au/au-fhir-core/).

<div> 
    <img src="relationship.png" alt="Relationship with HL7 AU Base" style="width:70%"/>
  </div>
*Figure 1: Relationship with HL7 AU Base and AU Core*
<br/>

The context of AU eRequesting within the set of HL7 AU standards is shown in the figure below:
- the **FHIR standard** is the foundation, which creates a common platform or foundation on which a variety of different solutions are implemented. 
- **AU Base** defines local concepts for use in an Australian context introducing relevant identifiers, terminology, extensions. 
- **AU Core** defines a set of conformance requirements that enforce a set of 'minimum requirements' on the local concepts from AU Base through cardinality constraints, required/extensible binding strengths, RESTful API, and conformance requirements.
- **Use case IGs** (e.g AU eRequesting and Provider Directory) build on AU Core to address specific use cases, defining a set of conformance requirements on top of AU Core, using additional building blocks from AU Base as needed.

This layering of IGs balances relative adoption and implementation maturity of FHIR and requirements of the use cases involved.

  <div> 
    <img src="architecture.png" alt="Context of AU Core within the set of HL7 AU standards" style="width:70%"/>
  </div>
*Figure 2: Context of AU eRequesting within the set of HL7 AU standards*
<br/>

### Relationship to AUeReqDI and other IGs
[Australian eRequesting Data for Interoperability (AUeReqDI)](https://sparked.csiro.au/index.php/sparked-products-resources/auereqdi/auereqdi-release-1/) builds upon and complements the foundational Australian Core Data for Interoperability (AUCDI) and focuses on the specific use case of eRequesting. The first release of AUeReqDI is focused on electronic pathology and medical imaging requests in primary and community-based care provision.

AUeReqDI defines the clinical data requirements for eRequesting, incorporating relevant data groups from AUCDI and contains additional data groups and elements that facilitate the exchange of a pathology test and medical imaging request.

With AUeReqDI defining clinical data requirements and FHIR AU eRequesting providing detailed FHIR-based profiles for meeting clinical data requirements and administrative data requirements, an interpretation of AUeReqDI is necessary which is undertaken through the community.

Updates to AU eRequesting depend upon community input and we encourage our audience to submit questions and feedback to AU eRequesting specifications by clicking on the Propose a change link in the footer of every page. In addition, we encourage requesting any necessary clarifications to AUeReqDI through the <a href="https://sparked.csiro.au/index.php/sparked-products-resources/auereqdi/auereqdi-release-1/">AUeReqDI process</a> that helps inform future updates to AU eRequesting.

See [AU eRequesting data for interoperability](auereqdi.html) for the relationship between AUeReqDI data groups, elements, and AU eRequesting profiles.

The relationship of AU eRequesting to AUeReqDI and other implementation guides is shown in the figure below.

 <div> 
    <img src="context-colour.png" alt="Relationship to AUeReqDI and Other IGs" style="width:70%"/>
  </div>
*Figure 3: Relationship to AUeReqDI and Other IGs*
<br/>

Implementation Guide |Relationship
---|---
[AU Base](https://build.fhir.org/ig/hl7au/au-fhir-base/)|This IG defines Australian realm concepts including terminology, identifiers, and extensions. AU Core uses AU Base, where available, as the basis for profiles that define the FHIR resources to be supported, and the elements, extensions, vocabularies, and value sets that SHALL be present are identified, and how they are used is defined.
[AU Core](https://build.fhir.org/ig/hl7au/au-fhir-core/)|This IG defines a set of conformance requirements that enforce a set of 'minimum requirements' on the local concepts from AU Base through cardinality constraints, required/extensible binding strengths, RESTful API, and conformance requirements. AU Core uses AU Base as the basis for profiles that define the FHIR resources to be supported, and the elements, extensions, vocabularies, and value sets that SHALL be present are identified, and how they are used is defined. AU eRequesting is compliant with the profile conformance requirements in [AU Core](https://build.fhir.org/ig/hl7au/au-fhir-core/).
[HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)|This IG provides definitive guidance on how to exchange clinical sex and gender affirming information using HL7 models. Sex and gender concepts from this IG have been reviewed for the potential for adoption in Australia. Where adopted, these concepts are included by reference in AU Base and profiled in AU Core.
{:.grid}


