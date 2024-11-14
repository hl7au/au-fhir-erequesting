#### Mandatory Search Parameters:

The following search parameters and search parameter combinations **SHALL** be supported:

1. **SHALL** support searching using the **[`_id`](https://hl7.org/fhir/R4/servicerequest.html#search)** search parameter:
 
    `GET [base]/ServiceRequest?_id=[id]`

    Example:
    
      1. GET [base]/ServiceRequest?_id=2169591

    *Implementation Notes:* Fetches a bundle with the requested ServiceRequest, instead of just the resource itself, and allows for the inclusion of additional search parameters such as _include, _revinclude, or _lastUpdated ([how to search by id of the resource](https://hl7.org/fhir/r4/search.html#id))


1. **SHALL** support searching using the **[`requisition`](https://hl7.org/fhir/R4/servicerequest.html#search)** search parameter:


    `GET [base]/ServiceRequest?requisition={system|}{code}`

    Example:
    
      1. GET [base]/ServiceRequest?requisition=EMC4542244-5624
      1. GET [base]/ServiceRequest?requisition=https://elimbahmedicalcentre.example.com.au/orders/order-identifier\|EMC4542244-5624 

    *Implementation Notes:* Fetches a bundle containing ServiceRequest resources matching the requisition ([how to search by token](http://hl7.org/fhir/R4/search.html#token))

#### Search Results Parameters:

Services that conform to this Implementation Guide support the following [search results parameters](https://www.hl7.org/fhir/r4/search.html#return)

1.  [`_include`](http://hl7.org/fhir/R4/search.html#include) 

    - [AU eRequesting Placer](https://build.fhir.org/ig/hl7au/au-fhir-erequesting/CapabilityStatement-au-erequesting-placer.html), [AU eRequesting Filler](https://build.fhir.org/ig/hl7au/au-fhir-erequesting/CapabilityStatement-au-erequesting-filler.html), and [AU eRequesting Patient](https://build.fhir.org/ig/hl7au/au-fhir-erequesting/CapabilityStatement-au-erequesting-patient.html) **SHOULD** support the following `_include` search parameters:
        - `ServiceRequest:patient`
        - `ServiceRequest:requester`
        - `ServiceRequest:encounter`
    
    - [AU eRequesting Server] **SHALL** support the following `_include` search parameters:
        - `ServiceRequest:patient`
        - `ServiceRequest:requester`

    - [AU eRequesting Server](https://build.fhir.org/ig/hl7au/au-fhir-erequesting/CapabilityStatement-au-erequesting-server.html) **SHOULD** support the following `_include` search parameters:
        - `ServiceRequest:encounter`
