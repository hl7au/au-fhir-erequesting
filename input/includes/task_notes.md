#### Mandatory Search Parameters:

The following search parameters and search parameter combinations **SHALL** be supported:

1. **SHALL** support searching using the **[`_id`](https://hl7.org/fhir/R4/task.html#search)** search parameter:
 
    `GET [base]/Task?_id=[id]`

    Example:
    
      1. GET [base]/Task?_id=2169591

    *Implementation Notes:* Fetches a bundle with the requested Task, instead of just the resource itself, and allows for the inclusion of additional search parameters such as _include, _revinclude, or _lastUpdated ([how to search by id of the resource](https://hl7.org/fhir/r4/search.html#id))


1. **SHALL** support searching using the **[`group-identifier`](https://hl7.org/fhir/R4/task.html#search)** search parameter:

    `GET [base]/Task?groupIdentifier={system|}{value}`

    Example:
    
      1. GET [base]/Task?groupIdentifier=https://elimbahmedicalcentre.example.com.au/orders/task-identifier|EMC1234567-1234 

    *Implementation Notes:* Fetches a bundle containing Task resources matching the group identifier ([how to search by token](http://hl7.org/fhir/R4/search.html#token))


1. **SHALL** support searching using the **[`owner`](https://hl7.org/fhir/R4/task.html#search)** search parameter:

    `GET [base]/Task?owner={system|}{value}`

    Example:
    
      1. GET [base]/Task?owner=https://elimbahmedicalcentre.example.com.au/orders/practitioner-identifier|EMC1234567-1234 

    *Implementation Notes:* Fetches a bundle containing Task resources matching the owner ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference))


1. **SHALL** support searching using the **[`patient`](https://hl7.org/fhir/R4/task.html#search)** search parameter:
    - **SHALL** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`)

    `GET [base]/Task?patient={Type/}[id]` or optionally `GET [base]/Task?patient.identifier=[system|][code]`

    Example:
    
      1. GET [base]/Task?patient=5678
      1. GET [base]/Task?patient.identifier=http://ns.electronichealth.net.au/id/medicare-number\|32788511952
      1. GET [base]/Task?patient.identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0\|8003608833357361 


1. **SHALL** support searching using the **[`requester`](https://hl7.org/fhir/R4/encounter.html#search)** search parameter:
    - **SHALL** support chained searching of requester canonical identifier `requester.identifier` (e.g. `requester.identifier=[system|][code]`)

    `GET [base]/Task?requester={Type/}[id]` or optionally `GET [base]/Task?parequestertient.identifier=[system|][code]`

    Example:
    
      1. GET [base]/Task?requester=5678
      1. GET [base]/Task?requester.identifier=identifier=http://ns.electronichealth.net.au/id/medicare-provider-number|553255


1. **SHALL** support searching using the **[`focus`](https://hl7.org/fhir/R4/encounter.html#search)** search parameter:

    `GET [base]/Task?reqfocusester={Type/}[id]` 

    Example:
    
      1. GET [base]/Task?requester=5678
      1. GET [base]/Task?requester.identifier=identifier=http://ns.electronichealth.net.au/id/medicare-provider-number|553255





