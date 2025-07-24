### Introduction
AU eRequesting is provided to support the use of HL7<sup>&reg;</sup> FHIR<sup>&reg;&copy;</sup> for diagnostic requesting in an Australian context. It sets the minimum expectations on FHIR resources to support conformance and implementation in systems.

AU eRequesting defines the data model and RESTful API interactions that set minimum expectations for placing and accessing electronic requests.

The focus of AU eRequesting Release 1 (R1) is support of pathology and medical imaging requests in community-based care provision, with consideration for future use beyond this scope. 


### Project background

This implementation guide is under development through the AU eRequesting project as part of the [Sparked AU FHIR Accelerator](https://sparked.csiro.au). The Sparked AU FHIR Accelerator is a community comprising government, technology vendors, provider organisations, peak bodies, practitioners, and domain experts, to accelerate the creation and use of national FHIR standards in health care information exchange.

The Sparked AU FHIR Accelerator includes:
- AU eRequesting Data for Interoperability - clinician focussed data requirements
- AU eRequesting FHIR Implementation Guide - HL7 Australia technical data access and exchange specification

The [Australian eRequesting Data for Interoperability (AUeReqDI)](https://sparked.csiro.au/index.php/sparked-products-resources/auereqdi/auereqdi-release-1/) is focused on an agreement of the minimum data required to support standardised eRequesting within the Australian health context, and forms a common language foundation that allows systems to exchange semantically accurate data for eRequests. AUeReqDI outputs form a set of data requirements to be considered and referred to as part of the development and definition of AU eRequesting. 

{% include dev-note.md -%}

### Dependencies

{% include dependency-table.xhtml %}

### AU eRequesting FHIR RESTful interactions

AU eRequesting defines four system actors involved in the exchange of diagnostic requests: the AU eRequesting Placer, Filler, Patient and Server actors. The [Actors and Capabilities](capability-statements.html) page provides a summary of these actors and includes links to their definitions and CapabilityStatements. Each CapabilityStatement outlines the RESTful interactions supported by that actor, including operations such as `create`, `update`,`read` and `search`.

The diagram below shows typical FHIR RESTful interactions between these AU eRequesting actors:

<div> 
  <img src="au-erequesting-actor-interactions.png" alt="FHIR RESTful read interactions" style="width:80%"/>
</div>
*Figure 1: FHIR RESTful interactions*
<br/>

### Example AU eRequesting interaction flow
The diagram below shows an example of FHIR interactions between AU eRequesting actors.

It demonstrates the use of ServiceRequest and Task to support the placement and tracking of pathology and imaging requests. While the diagram focuses on these coordinating resources, the associated exchange also includes other FHIR resources that provide clinical, administrative and contextual information. The full set of profiles used to support the requests is provided on the [Profiles and Extensions](profiles-and-extensions.html) page.

<div> 
    <img src="actors-sequence.png" alt="Actors Typical Sequence" style="width:80%"/>
</div>
*Figure 2: Example interaction flow*
<br/>

The steps illustrated in Figure 2 are summarised below:
- The AU eRequesting Placer actor creates a new ServiceRequest and Task on the Server, along with associated resources that collectively represent the request.
- The AU eRequesting Filler actor searches for available Task resources and uses them to retrieve the associated ServiceRequest and other resources that make up the request.
- The AU eRequesting Filler actor updates the Task to reflect acceptance, progress or completion.
- The AU eRequesting Placer actor searches the Server to monitor their requests.
- The AU eRequesting Patient actor searches the Server to view their own request details.

### How to read this guide

This guide is divided into several pages which are listed at the top of each page in the menu bar.

- [Home](index.html): This page provides the introduction and scope for this guide.
- [Conformance](conformance.html): This page describes the set of rules to claim conformance to this guide
- [Guidance](guidance.html): These pages list the guidance for this guide. 
  - [General Guidance](general-guidance.html): This page provides guidance on using the profiles defined in this guide.
  - [AU eRequesting Workflow State Guidance](workflow-state.html): This page provides guidance on managing workflow states in AU eRequesting, where Tasks track the fulfilment of ServiceRequests, including the relationship between their respective status values.
  - [Sex and Gender](sex-and-gender.html): This page provides guidance on the representation of sex, gender, and related concepts.
  - [AU eRequesting Data for Interoperability Mappings](auereqdi.html): This page maps AUeReqDI data groups and elements to FHIR artefacts in AU eRequesting.
  - [Relationships to Other Specifications](relationship.html): This page provides guidance on the relationship between AU eRequesting, AUeReqDI, and other implementation guides.
  - [AU Variance Statement](variance.html): This page documents variance from AU Base and AU Core.
  - [Future of AU eRequesting](future.html): This page outlines the approach to developing AU eRequesting and yearly update cycle.
- [Use Cases](use-cases.html): This page describes the use cases in scope of eRequesting R1. 
- [Security and Privacy](security.html): This page documents the AU eRequesting general security and privacy  recommendations. 
- [FHIR Artefacts](artifacts.html): These pages provide detailed descriptions and formal definitions for all the FHIR artefacts defined in this guide.
  - [Artefacts Summary](artifacts.html): This page lists the FHIR artefacts defined in this guide.
  - [Profiles and Extensions](profiles-and-extensions.html): This page describes the profiles and extensions that are defined in this guide to support electronic requesting. Each profile page includes a narrative description and guidance, formal definition and a "Notes" section which summarises the supported search transactions for each profile. Although the guidance typically focuses on the profiled elements, it may also may focus on un-profiled elements to aid with implementation.
  - [Terminology](terminology.html): This page lists the value sets and code systems supported in this guide.
  - [Actors and Capabilities](capability-statements.html): This page defines the AU eRequesting actors and their respective CapabilityStatements.
- [Examples](examples.html): This page lists all the examples used in this guide.
- [Support](support.html): These pages provide supporting material for implementation of AU eRequesting.
  - [Downloads](downloads.html): This page provides links to downloadable artefacts.
  - [License and Legal](license.html): This page outlines the license and legal requirements for material in AU eRequesting.
- [Change Log](changes.html): This page documents the changes across versions of this guide.

### Collaboration
This guide is the product of collaborative work undertaken with participants from:

* [Sparked HL7 AU Technical Design Group](https://confluence.hl7.org/display/HAFWG/HL7+Australia+-+AU+eRequesting+Technical+Design+Group+Home)
* [HL7 Australia FHIR Working Group](https://confluence.hl7.org/display/HAFWG/HL7+Australia+FHIR+Work+Group+Home)
* Australian FHIR Implementers Community

Primary Editors: Brett Esler, Jaymee Murdoch, Michael Osborne.


