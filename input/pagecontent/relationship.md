This guide is built on top of the FHIR standard and [AU Base](https://build.fhir.org/ig/hl7au/au-fhir-base/).

<div> 
    <img src="relationship.png" alt="Relationship with HL7 AU Base" style="width:70%"/>
  </div>
*Figure 1: Relationship with HL7 AU Base and AU Core*
<br/>

The context of AU eRequesting within the set of HL7 AU standards is shown in the figure below:
- the **FHIR standard** is the foundation, which creates a common platform or foundation on which a variety of different solutions are implemented. 
- **AU Base** defines local concepts for use in an Australian context introducing relevant identifiers, terminology, extensions. 
- **AU Core** defines a set of conformance requirements that enforce a set of 'minimum requirements' on the Australian localised concepts from AU Base through cardinality constraints, must support flags, required/extensible binding strengths, and capability statements.
- **Provider Directory** defines a set of conformance requirements for the purpose of implementation of provider directory services.
- **AU eRequesting** (and other use case IGs) build on AU Core to address specific use cases, defining a set of conformance requirements for electronic requesting, using additional building blocks from AU Base as needed.

This layering of IGs balances relative adoption and implementation maturity of FHIR and requirements of the use cases involved.

  <div> 
    <img src="architecture.png" alt="Context of AU Core within the set of HL7 AU standards" style="width:70%"/>
  </div>
*Figure 2: Context of AU eRequesting within the set of HL7 AU standards*
<br/>

### Relationship to AUeReqDI and other IGs

TBD AU eRequesting Data for Interoperability (AUeReqDI) statement.

TBD statement on relationship between AUeReqDI and AU eRequesting IG.

See [AU eRequesting data for interoperability](aureqdi.html) for the relationship between the AUeReqDI Data Groups and Elements and AU eRequesting profiles.

The relationship of AU eRequesting to AUeReqDI and other implementation guides is shown in the figure below.

 <div> 
    <img src="context-colour.png" alt="Relationship to AUeReqDI and Other IGs" style="width:70%"/>
  </div>
*Figure 3: Relationship to AUeReqDI and Other IGs*
<br/>

Implementation Guide |Relationship
---|---
[AU Base](https://build.fhir.org/ig/hl7au/au-fhir-base/)|This IG defines Australian realm concepts including terminology, identifiers, and extensions. AU Core uses AU Base as the basis for profiles that define the FHIR resources to be supported, and the elements, extensions, vocabularies, and value sets that SHALL be present are identified, and how they are used is defined.
[AU Core](https://build.fhir.org/ig/hl7au/au-fhir-core/)|This IG defines a set of conformance requirements that enforce a set of 'minimum requirements' on the Australian localised concepts from AU Base through cardinality constraints, must support flags, required/extensible binding strengths, and capability statements. AU Core uses AU Base as the basis for profiles that define the FHIR resources to be supported, and the elements, extensions, vocabularies, and value sets that SHALL be present are identified, and how they are used is defined.
[HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)|This IG provides definitive guidance on how to exchange clinical sex and gender affirming information using HL7 models. Sex and gender concepts from this IG have been reviewed for the potential for adoption in Australia. Where adopted, these concepts are included by reference in AU Base and are available for use in AU Core via AU Base.
{:.grid}


