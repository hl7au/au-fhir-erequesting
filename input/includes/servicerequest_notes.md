#### Search Parameters:

The following search parameters and search parameter combinations are supported. Conformance obligations are detailed in the table above.

1. **[`_id`](https://hl7.org/fhir/R4/servicerequest.html#search)** search parameter
   - including support for these _include parameters: `ServiceRequest:patient`,`ServiceRequest:requester`,`ServiceRequest:encounter`
 
    `GET [base]/ServiceRequest?_id=[id]`

    Example:
    
      1. GET [base]/ServiceRequest?_id=2169591
      1. GET [base]/ServiceRequest?_id=2169591&_include=ServiceRequest:patient&_include=ServiceRequest:requester&_include=ServiceRequest:encounter

    *Implementation Notes:* Fetches a bundle with the requested ServiceRequest, instead of just the resource itself, and allows for the inclusion of additional search parameters such as _include, _revinclude, or _lastUpdated ([how to search by id of the resource](https://hl7.org/fhir/r4/search.html#id))


1. **[`requisition`](https://hl7.org/fhir/R4/servicerequest.html#search)** search parameter:


    `GET [base]/ServiceRequest?requisition={system|}{code}`

    Example:
    
      1. GET [base]/ServiceRequest?requisition=EMC4542244-5624
      1. GET [base]/ServiceRequest?requisition=https://elimbahmedicalcentre.example.com.au/orders/order-identifier\|EMC4542244-5624 
      1. GET [base]/ServiceRequest?requisition=EMC4542244-5624&_include=ServiceRequest:patient&_include=ServiceRequest:requester&_include=ServiceRequest:encounter

    *Implementation Notes:* Fetches a bundle containing ServiceRequest resources matching the requisition, instead of just the resource itself, and allows for the inclusion of additional search parameters such as _include, _revinclude, or _lastUpdated ([how to search by id of the resource](https://hl7.org/fhir/r4/search.html#id))
