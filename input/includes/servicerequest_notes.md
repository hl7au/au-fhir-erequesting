#### Search Parameters:

The following search parameters and search parameter combinations are supported by services conforming to this Implementation Guide. Support [obligations](https://build.fhir.org/ig/HL7/fhir-extensions/StructureDefinition-obligation.html) (SHALL, SHOULD, and so on) vary according to the service's [ActorDefinition](https://build.fhir.org/ig/hl7au/au-fhir-erequesting/actors.html). See the associated [CapabilityStatement](https://build.fhir.org/ig/hl7au/au-fhir-erequesting/capability-statements.html) for details.

1. **Search using the [`_id`](https://hl7.org/fhir/R4/servicerequest.html#search) parameter**
 
    `GET [base]/ServiceRequest?_id=[id]`

    Example:
    
      1. GET [base]/ServiceRequest?_id=2169591

    *Implementation Notes:* Fetches a bundle with the requested ServiceRequest, instead of just the resource itself, and allows for the inclusion of additional search parameters such as _include, _revinclude, or _lastUpdated ([how to search by id of the resource](https://hl7.org/fhir/r4/search.html#id))


1. **Search using the [`requisition`](https://hl7.org/fhir/R4/servicerequest.html#search) parameter**

    `GET [base]/ServiceRequest?requisition={system|}{code}`

    Example:
    
      1. GET [base]/ServiceRequest?requisition=EMC4542244-5624
      1. GET [base]/ServiceRequest?requisition=https://elimbahmedicalcentre.example.com.au/orders/order-identifier\|EMC4542244-5624 

    *Implementation Notes:* Fetches a bundle containing ServiceRequest resources matching the requisition ([how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **Search using the [`_include`](http://hl7.org/fhir/R4/search.html#include) [`ServiceRequest:patient`](https://build.fhir.org/ig/hl7au/au-fhir-erequesting/StructureDefinition-au-erequesting-diagnosticrequest-definitions.html#ServiceRequest.patient)** parameter

    `GET [base]/ServiceRequest?parameter(s)&_include=ServiceRequest:patient`

    Example:
    1. GET [base]/ServiceRequest?_id=2169591&_include=ServiceRequest:patient

    *Implementation Notes:* Fetches a bundle containing ServiceRequest resources matching the specified search parameter(s) and including the target of ServiceRequest.subject, where the ServiceRequest.subject is a Patient.

1. **Search using the [`ServiceRequest:requester`](https://build.fhir.org/ig/hl7au/au-fhir-erequesting/StructureDefinition-au-erequesting-diagnosticrequest-definitions.html#ServiceRequest.requester)** parameter
        
    `GET [base]/ServiceRequest?parameter(s)&_include=ServiceRequest:requester`
    
    Example:
    
    1. GET [base]/ServiceRequest?_id=2169591&_include=ServiceRequest:requester

    *Implementation Notes:* Fetches a bundle containing ServiceRequest resources matching the specified search parameter(s) and including the target of ServiceRequest.requester.

1. **Search using the [`ServiceRequest:encounter`](https://build.fhir.org/ig/hl7au/au-fhir-erequesting/StructureDefinition-au-erequesting-diagnosticrequest-definitions.html#ServiceRequest.encounter)** parameter

    `GET [base]/ServiceRequest?parameter(s)&_include=ServiceRequest:encounter`

    Example:

    1. GET [base]/ServiceRequest?_id=2169591&_include=ServiceRequest:encounter

    *Implementation Notes:* Fetches a bundle containing ServiceRequest resources matching the specified search parameter(s) and including the target of ServiceRequest.encounter.
