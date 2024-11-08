### Introduction
AU eRequesting is provided to support the use of HL7<sup>&reg;</sup> FHIR<sup>&reg;&copy;</sup> for diagnostic requesting in an Australian context. It sets the minimum expectations on FHIR resources to support conformance and implementation in systems.

AU eRequesting defines the Data model and RESTful API interactions that set minimum expectations for placing and accessing electronic requests.

The focus AU eRequesting Release 1 (R1) is support of pathology and medical imaging requests in community-based care provision, and developing a foundational request model that can be applied beyond diagnostic requesting. 


### Project background

This implementation guide is under development through the AU eRequesting project as part of the [Sparked AU FHIR Accelerator](https://sparked.csiro.au). The Sparked AU FHIR Accelerator is a community comprising government, technology vendors, provider organisations, peak bodies, practitioners, and domain experts, to accelerate the creation and use of national FHIR standards in health care information exchange.

The Sparked AU FHIR Accelerator includes:
- AU eRequesting Data for Interoperability - clinician focussed data requirements
- AU eRequesting FHIR Implementation Guide - HL7 Australia technical data access and exchange specification

The [Australian eRequesting Data for Interoperability (AUeReqDI)](https://sparked.csiro.au/index.php/sparked-products-resources/auereqdi/auereqdi-release-1/) is focused on an agreement of the minimum data required to support standardised eRequesting within the Australian health context, and forms a common language foundation that allows systems to exchange semantically accurate data for eRequests. AUeReqDI outputs form a set of data requirements to be considered and referred to as part of the development and definition of AU eRequesting. 

{% include dev-note.md -%}

### Dependencies

{% include dependency-table.xhtml %}

### AU eRequesting Actors

The following actors are part of AU eRequesting:

**AU eRequesting Placer**

A system that is responsible for initiating and creating diagnostic service requests. This system connects to enable requesters to provide the necessary information to create a request, ensuring that required data is accurately collected and provided to service providers with sufficient information for them to fulfil the request.  


**AU eRequesting Filler**

A system that is responsible for finding and retrieving diagnostic service requests so that service providers can fulfil them. It ensures that service providers have the necessary information to fulfil the requests and manages the requests through the fulfilment process.


**AU eRequesting Patient**

A system that allows patients or their representatives to view diagnostic requests and fulfilment of diagnostic requests.

**AU eRequesting Server**

A system that accepts diagnostic service requests and makes diagnostic service requests accessible.

### AU eRequesting FHIR RESTful interactions

The RESTful interaction requirements for AU eRequesting actors, such as read and search operations, are outlined in the AU eRequesting [CapabilityStatements](capability-statements.html).

The diagram below illustrates the interactions between the various actors:

<div> 
  <img src="au-erequesting-actor-interactions.svg" alt="FHIR RESTful read interactions" style="width:80%"/>
</div>
*Figure 1: FHIR RESTful interactions*
<br/>

*Note*: AU eRequesting Actor interactions will transition with the introduction of the Task resource, which will become central to fulfilment.

### AU eRequesting typical sequence

The AU eRequesting Placer actor can create and update ServiceRequest details by calling the AU eRequesting Server actor.

The AU eRequesting Patient actor can search for ServiceRequest details by calling the AU eRequesting Server actor.

The AU eRequesting Filler actor can retrieve ServiceRequest details by calling the AU eRequesting Server actor.

Actors operate in a typical sequence where placers initiate a request by creating (and updating) service requests, patients may access details of their requests and fillers retrieve service request details to enable fulfillment of the requests. 

This sequence is shown in the diagram below:

<div> 
    <img src="actors-sequence.svg" alt="Actors Typical Sequence" style="width:80%"/>
</div>
*Figure 2: Actors Typical Sequence*

<br/>

### How to read this guide

This guide is divided into several pages which are listed at the top of each page in the menu bar.

- [Home](index.html): This page provides the introduction and scope for this guide.
- [Conformance](conformance.html): This page describes the set of rules to claim conformance to this guide
- [Guidance](guidance.html): These pages list the guidance for this guide. 
  - [AU eRequesting Data for Interoperability](auereqdi.html): This page maps AUeReqDI data groups and elements to FHIR artefacts in AU eRequesting.
  - [Relationships to Other Specifications](relationship.html): This page provides guidance on the relationship between AU eRequesting, AUeReqDI, and other implementation guides.
  - [AU eRequesting Data for Interoperability Mappings](auereqdi.html): This page maps AUeReqDI data groups and elements to FHIR artefacts in AU eRequesting.
  - [Relationship with other IGs](relationship.html): This page provides guidance on the relationship between AU eRequesting, AUeReqDI, and other implementation guides.
  - [AU Variance Statement](variance.html): This page documents variance from AU Base and AU Core.
  - [Future of AU eRequesting](future.html): This page outlines the approach to developing AU eRequesting and yearly update cycle.
- [Use Cases](use-cases.html): This page describes the use cases in scope of eRequesting R1. 
- [FHIR Artefacts](artifacts.html): These pages provide detailed descriptions and formal definitions for all the FHIR artefacts defined in this guide.
  - [Profiles and Extensions](profiles-and-extensions.html): This page describes the profiles and extensions that are defined in this guide to support electronic requesting. Each profile page includes a narrative description and guidance, formal definition and a "Notes" section which summarises the supported search transactions for each profile. Although the guidance typically focuses on the profiled elements, it may also may focus on un-profiled elements to aid with implementation.
  - [Terminology](terminology.html): This page lists the value sets and code systems supported in this guide.
  - [Capability Statements](capability-statements.html): This page defines the expected FHIR capabilities of AU eRequesting Server and AU eRequesting Placer.
  - [Actor Definitions](actors.html): This page defines the AU aRequesting actors, AU eRequesting Placer, AU eRequesting Filler and AU eRequesting Patient Access.
- [Examples](examples.html): This page lists all the examples used in this guide.
- [Support](support.html): These pages provide supporting material for implementation of AU eRequesting.
  - [Downloads](downloads.html): This page provides links to downloadable artefacts.
  - [License and Legal](license.html): This page outlines the license and legal requirements for material in AU eRequesting.

### Collaboration
This guide is the product of collaborative work undertaken with participants from:

* [Sparked HL7 AU Technical Design Group](https://confluence.hl7.org/display/HAFWG/HL7+Australia+-+AU+eRequesting+Technical+Design+Group+Home)
* [HL7 Australia FHIR Working Group](https://confluence.hl7.org/display/HAFWG/HL7+Australia+FHIR+Work+Group+Home)
* Australian FHIR Implementers Community

Primary Editors: Brett Esler, Danielle Tavares-Rixon, Dusica Bojicic.
