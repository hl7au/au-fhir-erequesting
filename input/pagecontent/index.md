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


### Scope of AU eRequesting Release 1

The scope of AU eRequesting Release 1 is the support of pathology and medical imaging requests in community-based care provision.

#### In-scope scenarios

The following diagnostic request scenarios are in scope for Release 1:

- Electronic requests for pathology and medical imaging services, with support for patient choice:
  * From community-based clinicians to:
    + Private diagnostic service providers  
    + Public hospital-based diagnostic service providers  
    + Interstate diagnostic service providers  
  * From hospital outpatient services to community-based diagnostic providers  
  * Patient choice is supported through:
    + Unassigned requests, where a request is made for diagnostic services and no provider is specified. The patient chooses their preferred provider to receive the service.
    + Assigned requests, where the request is assigned to a preferred diagnostic provider at the time of the request. The patient may still elect to receive the service elsewhere.

- Request fulfilment tracking:
  * Systems can monitor the status and progression of requests throughout the fulfilment process  

Full use case descriptions are available in [AU eRequesting Use Cases](https://build.fhir.org/ig/hl7au/au-fhir-erequesting/use-cases.html)

#### Out-of-scope scenarios

The following diagnostic request scenarios are outside the scope of this release:
- Handling of diagnostic reports
- Inpatient and inter-hospital workflows
- Sendaway workflows where specimens are referred to another laboratory
- Specimen collection processes
- Appointment scheduling and booking

#### Technical scope

AU eRequesting Release 1 defines the foundational FHIR data model and RESTful API interactions for exchanging diagnostic service requests.

This includes:
- FHIR profiles that specify the structure and content of diagnostic requests, fulfilment tracking, and associated clinical and administrative information  
- System actors that represent key system roles within diagnostic requesting workflows  
- Capability statements that specify expected FHIR interactions, supported profiles, and search capabilities for each actor  

#### Aspects not included in this release

As Release 1 focuses on defining a foundational FHIR data model and RESTful API interactions, several aspects are intentionally out of scope. This approach supports alignment and adoption by emerging diagnostic requesting solutions, while maintaining flexibility to respond to evolving national policy directions and infrastructure considerations in future releases or downstream implementation guides.

The following aspects were not considered priorities for the scope of Release 1:
- Authentication, authorisation, and auditing  
- Barcodes or QR codes definition and format  
- Provider discovery and federated resource location patterns  
- Claiming of diagnostic requests by fillers  
- Supporting information for ServiceRequests not yet defined, for example, Adverse Reaction Risk Summary or Problem/Diagnosis Summary  

### Dependencies

{% include dependency-table.xhtml %}

### AU eRequesting FHIR RESTful interactions

The RESTful interaction requirements for AU eRequesting actors, such as read and search operations, are outlined in the AU eRequesting CapabilityStatements. AU eRequesting Actors and their respective CapabilityStatements are defined in [Actors and Capabilities](capability-statements.html).

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

Actors operate in a typical sequence where placers initiate a request by creating (and updating) service requests, patients may access details of their requests and fillers retrieve service request details to enable fulfilment of the requests. 

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
  - [Search Parameters](search-parameters.html): This page lists the search parameters defined in this guide for use in AU eRequesting operations.
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

Primary Editors: Brett Esler, Danielle Tavares-Rixon, Dusica Bojicic.


