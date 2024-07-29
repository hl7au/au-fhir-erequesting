#### Mandatory Search Parameters:

The following search parameters and search parameter combinations **SHALL** be supported:

1. **SHALL** support searching using the **[`_id`](https://hl7.org/fhir/R4/servicerequest.html#search)** search parameter:
 
    `GET [base]/ServiceRequest?_id=[id]`

    Example:
    
      1. GET [base]/ServiceRequest?_id=2169591

    *Implementation Notes:* Fetches a bundle with the requested ServiceRequest, instead of just the resource itself, and allows for the inclusion of additional search parameters such as _include, _revinclude, or _lastUpdated ([how to search by id of the resource](https://hl7.org/fhir/r4/search.html#id))


1. **SHALL** support searching using the **[`requisition`](https://hl7.org/fhir/R4/servicerequest.html#search)** search parameter:


    `GET [base]/ServiceRequest?requisition={system|}[code]`

    Example:
    
      1. GET [base]/ServiceRequest?requisition=EMC4542244-5624
      1. GET [base]/ServiceRequest?requisition=https://elimbahmedicalcentre.example.com.au/orders/order-identifier\|EMC4542244-5624 

    *Implementation Notes:* Fetches a bundle containing ServiceRequest resources matching the requisition ([how to search by token](http://hl7.org/fhir/R4/search.html#token))

