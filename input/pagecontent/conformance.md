An [AU eRequesting Server](ActorDefinition-au-erequesting-actor-server.html) that declares Profile Support + Interaction Support conformance:
- **SHALL** [declare conformance](declaring-conformance.html#profile-support--interaction-support) to the [AU eRequesting Server Capability Statement](CapabilityStatement-au-erequesting-server.html) in the server's CapabilityStatement.
- **SHALL** specify the implemented resource types, associated AU eRequesting profiles, REST API interactions and search parameters in the server's CapabilityStatement.
- **SHALL** implement the [mandatory](#mandatory-elements) and/or [Must Support](#must-support-and-obligation) requirements for the elements defined as such in the implemented AU eRequesting profiles.
- **SHALL** implement the required REST API interactions and search parameters as defined in the [AU eRequesting Server Capability Statement](CapabilityStatement-au-erequesting-server.html#resourcesSummary1).

An [AU eRequesting Placer](ActorDefinition-au-erequesting-actor-placer.html) that declares Profile Support + Interaction Support conformance:
- **SHALL** implement the [mandatory](#mandatory-elements) and/or [Must Support](#must-support-and-obligation) requirements for the elements defined as such in the implemented AU eRequesting profiles.
- **SHALL** implement the required REST API interactions and search parameters as defined in the [AU eRequesting Placer Capability Statement](CapabilityStatement-au-erequesting-placer.html#resourcesSummary1).

Implementers are advised to be familiar with the requirements of the FHIR standard when implementing AU eRequesting, in particular:
- [FHIR Terminology requirements](http://hl7.org/fhir/R4/terminologies.html)
- [FHIR RESTful API](http://hl7.org/fhir/R4/http.html) 
- [FHIR Search](http://hl7.org/fhir/R4/search.html)
- [FHIR Resource formats](http://hl7.org/fhir/R4/resource.html)
- [FHIR Data Types](http://hl7.org/fhir/R4/datatypes.html)
- [FHIR Workflow](https://hl7.org/fhir/R5/workflow.html)

Additionally, implementers are advised to be familiar with the AU Core requirements on:
- [Missing Data](https://build.fhir.org/ig/hl7au/au-fhir-core/general-requirements.html#missing-data)
- [Suppressed Data](https://build.fhir.org/ig/hl7au/au-fhir-core/general-requirements.html#suppressed-data)

The requirements of the FHIR standard and [FHIR Conformance Rules](http://hl7.org/fhir/conformance-rules.html) apply, and define the use of terms in this guide including the conformance verbs - **SHALL**, **SHALL NOT**, **SHOULD**, **SHOULD NOT**, **MAY**.


### Conformance Artifacts

#### AU eRequesting Profiles and Extensions
The [Profiles and Extensions](profiles-and-extensions.html) page lists the AU eRequesting profiles and AU eRequesting extensions defined for this implementation guide. An AU eRequesting profile [StructureDefinition](http://hl7.org/fhir/R4/structuredefinition.html) defines the minimum elements, extensions, vocabularies and value sets that **SHALL** be present and constrains the way elements are used when conforming to the profile.

AU eRequesting profile elements include mandatory and *Must Support* requirements. [Mandatory elements](#mandatory-elements) are required and have a minimum cardinality of 1 (min=1). [Must Support](#must-support-and-obligation) elements have defined conformance obligations in AU eRequesting based on actor roles.

Systems may implement AU eRequesting as: 
- [Profile Only Support](#profile-only-support) for a system declaring conformance to one or more AU eRequesting profiles
- [Profile Support + Interaction Support](#profile-support--interaction-support) for a system declaring conformance to one or both of the [AU eRequesting Capability Statements](capability-statements.html)

#### AU eRequesting Capability Statements
The [AU eRequesting Placer CapabilityStatement](CapabilityStatement-au-erequesting-placer.html) defines the conformance requirements and expectations of an [AU eRequesting Placer](ActorDefinition-au-erequesting-actor-placer.html) actor responsible for initiating queries for information from an [AU eRequesting Server](ActorDefinition-au-erequesting-actor-server.html). The complete list of FHIR profiles, REST API interactions, and search parameters that can be implemented by an AU eRequesting Placer are defined in this capability statement. International Patient Access placers define their capabilities by choosing from this list based on the resource types they need need to place requests. 

The [AU eRequesting Server CapabilityStatement](CapabilityStatement-au-erequesting-server.html) defines the conformance requirements and expectations of an [AU eRequesting Server](ActorDefinition-au-erequesting-actor-server.html) actor responsible for providing responses to queries submitted by an [AU eRequesting Placer](ActorDefinition-au-erequesting-actor-placer.html). The complete list of FHIR profiles, REST API interactions, and search parameters that can be implemented by an AU eRequesting Server are defined in this capability statement. An AU eRequesting Server declares conformance to this list of capabilities based on the resource types and interactions it implement.

### Mandatory Elements
Mandatory elements are elements with minimum cardinality > 0. When an element is mandatory, the data is expected to always be present. Very rarely, it may not be, and in this circumstance the requirements in [Missing Data](#missing-data) **SHALL** be applied. An element can be both *Must Support* and mandatory, in which case the requirements for mandatory's Missing Data requirements apply as described in [Missing Must Support and Mandatory Data](general-requirements.html#missing-must-support-and-mandatory-data).

The convention in this guide is to mark all mandatory elements as *Must Support* unless they are nested under an optional element.

### Must Support and Obligation
Labelling an element *[Must Support](https://www.hl7.org/fhir/conformance-rules.html#mustSupport)* means that systems that produce or consume resources **SHALL** provide support for the element in some meaningful way. The FHIR standard does not define exactly what 'meaningful' support for an element means, but indicates that a profile **SHALL** make clear exactly what kind of support is required when an element is labelled as *Must Support*.

Because AU eRequesting is a foundational standard, *Must Support* needs to be defined a way that does not impede or prescribe what a system does with the data, so as not to impede each implementation’s ability to tighten and define expectations for use under their own business rules, regulations, policies, etc. There is also a challenge that comes from inheritance of *Must Support* flags into implementation guides that have strict definitions for *Must Support* (e.g., must be able to display this value to an end user). AU eRequesting will only apply the *Must Support* flag on the elements that are necessary to support _minimum_ requirements and are expected to be flagged as *Must Support* across the majority of Australian FHIR implementation guides.

In AU eRequesting, the meaning of *Must Support* is specified in terms of [Obligation Codes](https://hl7.org/fhir/extensions/CodeSystem-obligation.html) in [obligation extensions](https://hl7.org/fhir/extensions/StructureDefinition-obligation.html) on the element definition. The obligation codes used to define the minimum obligations of *Must Support* elements in this implementation guide are reiterated below.

Actor | Code | Display | Definition | Notes
--- | --- | --- | --- | ---
[AU eRequesting Server](ActorDefinition-au-erequesting-actor-server.html) | [SHALL:populate-if-known](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-SHALL.58populate-if-known) | SHALL populate if known | Conformant applications producing resources SHALL correctly populate this element if they know a value for the element, but it is acceptable if the system is unable to ever know a value for the element. | This obligation does not impose a requirement to be able to know a value, unlike populate and able-to-populate which do. 'Knowing' an element means that a value for the element is available in memory, persistent store, or is otherwise available within the system claiming conformance.
[AU eRequesting Placer](ActorDefinition-au-erequesting-actor-placer.html) | [SHALL:no-error](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-SHALL.58no-error) | SHALL not error if present | Conformant applications SHALL accept resources containing any valid value for the element without error. | Applications are still able to inform the user that a value cannot be processed correctly and may ignore the data, but applications aren't able to reject an instance merely because the element is present (which would be allowed for elements that do not have this obligation). A system MAY raise an error if the value provided is not valid or violates specific business rules. This obligation also applies to elements that only contain an extension in place of a value where (or equivalent), should either of these be allowed on the consumer obligations

*Must Support* elements are treated differently between [AU eRequesting Server](ActorDefinition-au-erequesting-actor-server.html) and [AU eRequesting Placer](ActorDefinition-au-erequesting-actor-placer.html) actors. *Must Support* on a profile element **SHALL** be interpreted as follows.

#### AU eRequesting Server
An AU eRequesting Server:
- **SHALL** correctly populate all *Must Support* elements for which a value is known.
- **SHALL** implement the requirements on [Suppressed Data](general-requirements.html#suppressed-data) when an element is NOT allowed to be shared.
- **SHALL** implement the requirements on [Missing Data](general-requirements.html#missing-data) when an element value is not known.

When a *Must Support* element requires a more tightly stated obligation, this obligation is specified in the AU eRequesting Server [obligation extension](https://hl7.org/fhir/extensions/StructureDefinition-obligation.html) on the element definition.

#### AU eRequesting Placer
An AU eRequesting Placer:
- **SHALL** accept resources containing any valid value for *Must Support* elements without error.
- **SHALL** accept resources containing *Must Support* elements with [Missing Data](#missing-data) or [Suppressed data](#suppressed-data) without error.

How the system processes the resource depends on local requirements that could align with obligation terms such as [reject invalid](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-reject-invalid), [correctly handle](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-handle), [persist](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-persist), [display](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-display), or [ignore](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-ignore).

When a *Must Support* element requires a more tightly stated obligation, this obligation is specified in the AU eRequesting Placer [obligation extension](https://hl7.org/fhir/extensions/StructureDefinition-obligation.html) on the element definition.

#### Presentation of elements labelled Must Support in profiles

##### Presentation of elements labelled Must Support in table views

When rendered in an implementation guide each profile is presented in different formal views under tabs labelled "Differential Table", "Key Elements Table", and "Snapshot Table".

The elements labelled *Must Support* in these views are flagged with an <span style="padding-left: 3px; padding-right: 3px; color: white; background-color: red" title="This element must be supported">S</span>. Implementers should refer to the "Key Elements Table" to see the full set of elements that are mandatory or *Must Support*, and the full set of terminology requirements.

Implementers should take note that the full set of constraints (i.e. invariants) are only presented in the "Detailed Descriptions" tab or the raw representation (e.g. XML or JSON) of the profile. 

##### Presentation of elements labelled Must Support in raw representations

When viewing the raw representation (e.g. XML or JSON) of a profile, elements labelled *Must Support* are flagged as `mustSupport` set to "true". 

Example: AU eRequesting AllergyIntolerance profile showing clinicalStatus and verificationStatus labelled *Must Support*
~~~
{
    "resourceType" : "StructureDefinition",
    ...
    "url" : "http://hl7.org.au/fhir/core/StructureDefinition/au-core-allergyintolerance",
    ...
    "type" : "AllergyIntolerance",
    "baseDefinition" : "http://hl7.org.au/fhir/StructureDefinition/au-allergyintolerance",     
    ...
           {
              "id" : "AllergyIntolerance.clinicalStatus",
              "path" : "AllergyIntolerance.clinicalStatus",
              "mustSupport" : true
           },
           {
              "id" : "AllergyIntolerance.verificationStatus",
              "path" : "AllergyIntolerance.verificationStatus",
              "mustSupport" : true
           },
    ...
}
~~~

