### Introduction
AU eRequesting is provided to support the use of HL7<sup>&reg;</sup> FHIR<sup>&reg;&copy;</sup> for diagnostic requesting in an Australian context. It sets the minimum expectations on FHIR resources to support conformance and implementation in systems.

AU eRequesting defines the data model and RESTful API interactions that set minimum expectations for placing and accessing electronic requests.

The focus of AU eRequesting Release 1 (R1) is to support pathology and medical imaging requests in community-based care, while also considering future applications beyond this scope.


### Project Background

This implementation guide is under development through the AU eRequesting project as part of the [Sparked AU FHIR Accelerator](https://sparked.csiro.au). The Sparked AU FHIR Accelerator is a collaborative community of government, technology vendors, provider organisations, peak bodies, practitioners, and domain experts, working together to accelerate the creation and use of national FHIR standards for health information exchange.

The Sparked AU FHIR Accelerator includes:
- AU eRequesting Data for Interoperability - clinician focussed data requirements
- AU eRequesting FHIR Implementation Guide - HL7 Australia technical data access and exchange specification

The [Australian eRequesting Data for Interoperability (AUeReqDI)](https://sparked.csiro.au/index.php/products-resources/auereqdi/) is focused on an agreement of the minimum data required to support standardised eRequesting within the Australian health context, and forms a common language foundation that allows systems to exchange semantically accurate data for eRequests. AUeReqDI outputs form a set of data requirements to be considered and referred to as part of the development and definition of AU eRequesting. 

### Scope of AU eRequesting Release 1

The scope of AU eRequesting Release 1 is the support of pathology and medical imaging requests in community-based care provision.

#### In-Scope Scenarios

The following diagnostic request scenarios are in scope for Release 1:

- Electronic requests for pathology and medical imaging services, with support for patient choice via assigned or unassigned requests:
  * From community-based clinicians to:
    + Private diagnostic service providers  
    + Public hospital-based diagnostic service providers  
    + Interstate diagnostic service providers  
  * From hospital outpatient services to community-based diagnostic providers  
  
- Request fulfilment tracking:
  * Systems can monitor the status and progression of requests throughout the fulfilment process  

See [AU eRequesting Use Cases](use-cases.html) for complete use case descriptions. 

#### Out of Scope

The following diagnostic request scenarios are outside the scope of Release 1:
- Handling of diagnostic reports
- Inpatient and inter-hospital workflows
- Sendaway workflows where specimens are referred to another laboratory
- Specimen collection processes
- Appointment scheduling and booking

As Release 1 focuses on defining a foundational FHIR data model and RESTful API interactions, several technical aspects are intentionally out of scope. This approach supports alignment and adoption by emerging diagnostic requesting solutions, while maintaining flexibility to respond to evolving national policy directions and infrastructure considerations in future releases or downstream implementation guides.

The following technical aspects were not considered priority for the scope of Release 1:
- Authentication, authorisation, and auditing  
- Barcode or QR code definition and format  
- Provider discovery and federated resource location patterns  
- Claiming of diagnostic requests by fillers  
- Supporting information for ServiceRequests not yet defined, for example, Adverse Reaction Risk Summary or Problem/Diagnosis Summary  

### Dependencies

{% include dependency-table.xhtml %}

### AU eRequesting FHIR RESTful Interactions

AU eRequesting defines four system actors involved in the exchange of diagnostic requests: the AU eRequesting Placer, Filler, Patient and Server actors. The [Actors and Capabilities](capability-statements.html) page provides a summary of these actors and includes links to their definitions and CapabilityStatements. Each capability statement outlines the RESTful interactions supported by that actor, including `create`, `update`, `read` and `search` operations.

Figure 1 shows typical FHIR RESTful interactions between these AU eRequesting actors:

<div> 
  <img src="au-erequesting-actor-interactions.svg" alt="Typical FHIR RESTful interactions between AU eRequesting actors" style="width:100%"/>
</div>
*Figure 1: Typical FHIR RESTful interactions between AU eRequesting actors*
<br/>

### Example AU eRequesting Interaction Flow
Figure 2 shows an example of FHIR interactions between AU eRequesting actors, and demonstrates the use of ServiceRequest and Task to support the placement and tracking of pathology and imaging requests. While the diagram focuses on these coordinating resources, the associated exchange also includes other FHIR resources (e.g. Patient) that provide clinical, administrative and contextual information. The full set of profiles used to support the requests is provided on the [Profiles and Extensions](profiles-and-extensions.html) page.

<div> 
    <img src="au-erequesting-example-interaction-flow.svg" alt="Example AU eRequesting interaction flow" style="width:100%"/>
</div>
*Figure 2: Example AU eRequesting interaction flow*
<br/>

The steps illustrated in Figure 2 are summarised below:
- The AU eRequesting Placer actor creates ServiceRequest and Task resources on the AU eRequesting Server, along with associated resources that collectively represent the request.
- The AU eRequesting Filler actor searches for available Task resources to fulfil, and retrieves the associated resources that form the request.
- The AU eRequesting Filler actor updates the Task resources to reflect the fulfilment status.
- The AU eRequesting Placer actor queries the AU eRequesting Server to monitor request fulfilment status.
- The AU eRequesting Patient actor queries the AU eRequesting Server to view the details of their own requests.

### How To Read This Guide

This guide is divided into several pages which are listed at the top of each page in the menu bar.

- [Home](index.html): This page provides the introduction and scope for this guide.
- [Conformance](conformance.html): This page describes the set of rules to claim conformance to this guide
- [Guidance](guidance.html): These pages list the guidance for this guide. 
  - [General Guidance](general-guidance.html): This page provides guidance on using the profiles defined in this guide.
  - [AU eRequesting Workflow Guidance](workflow.html): This page provides guidance on managing workflow states in AU eRequesting, where Tasks track the fulfilment of ServiceRequests.
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

* [Sparked HL7 Australia AU eRequesting Technical Design Group](https://confluence.hl7.org/display/HAFWG/HL7+Australia+-+AU+eRequesting+Technical+Design+Group+Home)
* [HL7 Australia FHIR Working Group](https://confluence.hl7.org/display/HAFWG/HL7+Australia+FHIR+Work+Group+Home)
* Australian FHIR Implementers Community

Primary Editors: Brett Esler, Jaymee Murdoch, Michael Osborne.


