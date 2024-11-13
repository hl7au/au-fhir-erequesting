Each AU eRequesting actor as defined in [Actors and Capabilities](capability-statements.html):
- **SHALL** implement the [mandatory](#mandatory-elements) and/or [Must Support](#must-support-and-obligation) elements in the AU eRequesting profiles. 
- **SHALL** implement the required REST API interactions and search parameters as defined in their respective CapabilityStatement.

Additionally, the [AU eRequesting Server](ActorDefinition-au-erequesting-actor-server.html) Actor:
- **SHALL** declare the implemented resource types, profiles, interactions, and parameters in the server’s CapabilityStatement.
- **SHOULD** [declare conformance](#declaring-conformance) to the [AU eRequesting Server Capability Statement](CapabilityStatement-au-erequesting-server.html).

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

The [Actors and Capabilities](capability-statements.html) page list the AU eRequesting Actor definitions and their CapabilityStatements.

#### AU eRequesting Capability Statements
The [AU eRequesting Placer CapabilityStatement](CapabilityStatement-au-erequesting-placer.html) defines the conformance requirements and expectations of an [AU eRequesting Placer](ActorDefinition-au-erequesting-actor-placer.html) actor responsible for creating diagnostic requests. The complete list of FHIR profiles, REST API interactions, and search parameters that can be implemented by an AU eRequesting Placer are defined in this capability statement. AU eRequesting placers define their capabilities by choosing from this list based on the resource types they need to place requests. 

The [AU eRequesting Filler CapabilityStatement](CapabilityStatement-au-erequesting-filler.html) defines the conformance requirements and expectations of an [AU eRequesting Filler](ActorDefinition-au-erequesting-actor-filler.html) actor responsible for finding and retrieving diagnostic request fulfilments so that service providers can fulfil them. The complete list of FHIR profiles, REST API interactions, and search parameters that can be implemented by an AU eRequesting Filler are defined in this capability statement. AU eRequesting fillers define their capabilities by choosing from this list based on the resource types they need to fulfill requests. 

The [AU eRequesting Patient CapabilityStatement](CapabilityStatement-au-erequesting-patient.html) defines the conformance requirements and expectations of an [AU eRequesting Patient](ActorDefinition-au-erequesting-actor-patient.html) actor as the digital interface that allows patients or their representatives to view diagnostic requests and fulfilment of diagnostic requests. The complete list of FHIR profiles, REST API interactions, and search parameters that can be implemented by an AU eRequesting Patient client are defined in this capability statement. AU eRequesting patient clients define their capabilities by choosing from this list based on the resource types they need to access requests. 

The [AU eRequesting Server CapabilityStatement](CapabilityStatement-au-erequesting-server.html) defines the conformance requirements and expectations of an [AU eRequesting Server](ActorDefinition-au-erequesting-actor-server.html) actor responsible for accepting diagnostic service requests and making diagnostic service requests accessible. The complete list of FHIR profiles, REST API interactions, and search parameters that can be implemented by an AU eRequesting Server are defined in this capability statement. An AU eRequesting Server declares conformance to this list of capabilities based on the resource types and interactions it implements.

### Declaring Conformance
Servers that are conformant to the AU eRequesting API declare conformance by:
* hosting a capability statement at [url]/metadata that is available to both authenticated and unauthenticated clients and that declares that AU eRequesting is supported using CapabilityStatement.instantiates, as shown in the following fragment:

    ```
    {
      "resourceType": "CapabilityStatement",
      ...
      "instantiates": [
        "http://hl7.org.au/fhir/ereq/CapabilityStatement/au-erequesting-server"
      ],
      ...  
      "rest": [
        {
          "mode": "server",
        ...
        }
      ] 
    }
    ```

### Exchange Format Support
In FHIR, resources are exchanged in the following formats: JSON, XML, and Turtle. Due to the popularity of JavaScript-based apps and ease of usage with JSON, the most popular exchange format for REST-styled APIs is JSON. 

<p class="request-for-feedback">Input is requested on the appropriateness of mandating JSON or XML. Please comment by raising <a href="https://jira.hl7.org/projects/FHIR/issues">HL7 Jira Issues</a>.</p>

### Mandatory Elements
Mandatory elements are elements with minimum cardinality > 0. When an element is mandatory, the data is expected to always be present. Very rarely, it may not be, and in this circumstance see the guidance in AU Core on [Missing Data](https://build.fhir.org/ig/hl7au/au-fhir-core/general-requirements.html#missing-data). 

An element can be both *Must Support* and mandatory, in which case the guidance for mandatory's Missing Data apply as described in AU Core [Missing Must Support and Mandatory Data](https://build.fhir.org/ig/hl7au/au-fhir-core/general-requirements.html#missing-must-support-and-mandatory-data).

The convention in this guide is to mark all mandatory elements as *Must Support* unless they are nested under an optional element.

<p class="request-for-feedback">Input is requested on the appropriateness of allowing Missing Data or Suppressed Data for all elements. Please comment by raising <a href="https://jira.hl7.org/projects/FHIR/issues">HL7 Jira Issues</a>.</p>

### Must Support and Obligation
Labelling an element *[Must Support](https://www.hl7.org/fhir/conformance-rules.html#mustSupport)* means that systems that produce or consume resources **SHALL** provide support for the element in some meaningful way. The FHIR standard does not define exactly what 'meaningful' support for an element means, but indicates that a profile **SHALL** make clear exactly what kind of support is required when an element is labelled as *Must Support*.

Because AU eRequesting is a foundational standard, *Must Support* needs to be defined in a way that does not impede or prescribe what a system does with the data, so as not to impede each implementation’s ability to tighten and define expectations for use under their own business rules, regulations, policies, etc. There is also a challenge that comes from inheritance of *Must Support* flags into implementation guides that have strict definitions for *Must Support* (e.g., must be able to display this value to an end user). AU eRequesting will only apply the *Must Support* flag on the elements that are necessary to support _minimum_ requirements and are expected to be flagged as *Must Support* across the majority of Australian FHIR implementation guides.

*Must Support* elements are treated differently between different AU eRequesting actors. In AU eRequesting, the meaning of *Must Support* is specified in terms of [Obligation Codes](https://hl7.org/fhir/extensions/CodeSystem-obligation.html) in [obligation extensions](https://hl7.org/fhir/extensions/StructureDefinition-obligation.html) on the element definition. The obligation codes used to define the minimum obligations of *Must Support* elements in this implementation guide are reiterated below.

Actor | Code | Display | Definition | Notes
--- | --- | --- | --- | ---
[AU eRequesting Placer](ActorDefinition-au-erequesting-actor-placer.html) | [SHALL:populate-if-known](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-SHALL.58populate-if-known) | SHALL populate if known | Conformant applications producing resources SHALL correctly populate this element if they know a value for the element, but it is acceptable if the system is unable to ever know a value for the element. | This obligation does not impose a requirement to be able to know a value, unlike populate and able-to-populate which do. 'Knowing' an element means that a value for the element is available in memory, persistent store, or is otherwise available within the system claiming conformance.
[AU eRequesting Placer](ActorDefinition-au-erequesting-actor-placer.html) | [SHALL:populate](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-SHALL.58populate) | SHALL populate | Conformant applications producing resources SHALL include this element if a value is known and allowed to be shared. | This implementation obligation means that whenever the producer knows the correct value for an element, it populates it. This is NOT the same as cardinality, as a 'populate' element can be omitted if no data exists or the data that exists is prohibited from being shared. This obligation inherits the obligations of SHALL:able-to-populate.
[AU eRequesting Server](ActorDefinition-au-erequesting-actor-server.html) | [SHALL:able-to-populate](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-SHALL.58able-to-populate) | SHALL be able to populate | Conformant applications producing resources SHALL be able to correctly populate this element. | Typically, this means that an application needs to demonstrate during some conformance testing process that there are some conditions under which it populates the element with a correct value. (i.e. not a data-absent-reason or equivalent.) This obligation does not impose expectations on the circumstances in which the element will be sent, only that it can be in at least some situations.
[AU eRequesting Server](ActorDefinition-au-erequesting-actor-server.html) | [SHALL:handle](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-SHALL.58handle) | SHALL handle | Conformant applications SHALL handle the meaning of this element correctly. | This rule is vague in that doesn't specify any particular handling of the element. But it's important because an application that ignores this element is non-conformant. A good example would be a status code of 'entered-in-error' - how exactly a Resource Consumer handles this depends on the use case etc., but the application can never simply ignore such a status code. Note that whether the resource or information from it is stored for later use is irrelevant - when the resource or information in it is processed, the consequences of the element are considered. That may mean not retaining the information for later use, or informing the user, etc. Typically, this obligation marks that there are known patient safety issues that can arise if the element is ignored. Implementers should pay particular attention to the possible range of values for the element from a safety perspective.
[AU eRequesting Filler](ActorDefinition-au-erequesting-actor-filler.html) | [SHALL:no-error](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-SHALL.58no-error) | SHALL not error if present | Conformant applications SHALL accept resources containing any valid value for the element without error. | Applications are still able to inform the user that a value cannot be processed correctly and may ignore the data, but applications aren't able to reject an instance merely because the element is present (which would be allowed for elements that do not have this obligation). A system MAY raise an error if the value provided is not valid or violates specific business rules. This obligation also applies to elements that only contain an extension in place of a value where (or equivalent), should either of these be allowed on the consumer obligations
[AU eRequesting Patient](ActorDefinition-au-erequesting-actor-patient.html) | [SHALL:no-error](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-SHALL.58no-error) | SHALL not error if present | Conformant applications SHALL accept resources containing any valid value for the element without error. | Applications are still able to inform the user that a value cannot be processed correctly and may ignore the data, but applications aren't able to reject an instance merely because the element is present (which would be allowed for elements that do not have this obligation). A system MAY raise an error if the value provided is not valid or violates specific business rules. This obligation also applies to elements that only contain an extension in place of a value where (or equivalent), should either of these be allowed on the consumer obligations
{:.grid}

How the system processes the resource depends on local requirements that could align with obligation terms such as [reject invalid](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-reject-invalid), [correctly handle](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-handle), [persist](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-persist), [display](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-display), or [ignore](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-ignore).

#### Presentation of elements labelled Must Support in profiles

##### Presentation of elements labelled Must Support in table views

When rendered in an implementation guide each profile is presented in different formal views under tabs labelled "Differential Table", "Key Elements Table", and "Snapshot Table".

The elements labelled *Must Support* in these views are flagged with an <span style="padding-left: 3px; padding-right: 3px; color: white; background-color: red" title="This element must be supported">S</span>. Implementers should refer to the "Key Elements Table" to see the full set of elements that are mandatory or *Must Support*, and the full set of terminology requirements.

Implementers should take note that the full set of constraints (i.e. invariants) are only presented in the "Detailed Descriptions" tab or the raw representation (e.g. XML or JSON) of the profile. 

##### Presentation of elements labelled Must Support in raw representations

When viewing the raw representation (e.g. XML or JSON) of a profile, elements labelled *Must Support* are flagged as `mustSupport` set to "true". 

Example: AU eRequesting Diagnostic Request profile showing identifier labelled *Must Support*
~~~
{
    "resourceType" : "StructureDefinition",
    ...
    "url" : "http://hl7.org.au/fhir/ereq/StructureDefinition/au-erequesting-diagnosticrequest",
    ...
    "type" : "ServiceRequest",
    "baseDefinition" : "http://hl7.org.au/fhir/StructureDefinition/au-diagnosticrequest",     
    ...
           {
              "id" : "ServiceRequest.identifier",
              "path" : "ServiceRequest.identifier",
              "mustSupport" : true
           },
    ...
}
~~~
