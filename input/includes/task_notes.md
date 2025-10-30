#### Search Parameters:

The following search parameters and search parameter combinations are supported. Conformance obligations are detailed in the table above.

1. **[`_id`](https://hl7.org/fhir/R4/task.html#search)** search parameter
   - including support for these **[`_include`](http://hl7.org/fhir/R4/search.html#include)** parameters: `Task:focus`, `Task:owner`, `Task:patient`, and `Task:requester`
 
    `GET [base]/Task?_id=[id]`

    Example:
    
      1. GET [base]/Task?_id=2169591
      1. GET [base]/Task?_id=2169591&_include=Task:patient&_include=Task:requester&_include=Task:owner&_include=Task:focus

    *Implementation Notes:* Fetches a bundle with the requested Task, instead of just the resource itself, and allows for the inclusion of additional search parameters such as _include, _revinclude, or _lastUpdated ([how to search by id of the resource](https://hl7.org/fhir/r4/search.html#id))


1. **[`_lastUpdated`](https://hl7.org/fhir/R4/resource.html#search)** search parameter
   - including support for these **[`_include`](http://hl7.org/fhir/R4/search.html#include)** parameters: `Task:focus`, `Task:owner`, `Task:patient`, and `Task:requester`
   - including support for **[`multipleAnd`](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleAnd)**
   - including support for search comparators `gt`, `lt`, `ge`, `le`
 
    `GET [base]/Task?_lastUpdated={gt|lt|ge|le}[date]{&_lastUpdated={gt|lt|ge|le}[date]&...}`

    Example:
    
      1. GET [base]/Task?_lastUpdated=gt2010-10-01
      1. GET [base]/Task?_lastUpdated=lt2010-10-31&_lastUpdated=gt2010-10-01
      1. GET [base]/Task?_lastUpdated=gt2010-10-01&_include=Task:patient&_include=Task:requester&_include=Task:owner&_include=Task:focus

    *Implementation Notes:* Fetches a bundle matching the _lastUpdated date ([how to search by date](https://build.fhir.org/search.html#date))


1. Combined **[`_lastUpdated`](https://hl7.org/fhir/R4/resource.html#search)** and **[`status`](https://hl7.org/fhir/R4/task.html#search)** and **[`owner`](https://hl7.org/fhir/R4/task.html#search)** search parameters
   - including support for these **[`_include`](http://hl7.org/fhir/R4/search.html#include)** parameters: `Task:focus`, `Task:owner`, `Task:patient`, and `Task:requester`
   - including support for chained searching of owner canonical identifier `owner.identifier` (e.g. `owner.identifier=[system|][code]`)
   - including support for **[`multipleOr`](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleOr)** search on `status`
   - including support for **[`multipleAnd`](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleAnd)** search on `_lastUpdated`
   - including support for search comparators `gt`, `lt`, `ge`, `le` on `_lastUpdated`

    `GET [base]/Task?_lastUpdated={gt|lt|ge|le}[date]&status={system|}[code]&owner={Type/}[id]` or optionally `GET [base]/Task?_lastUpdated={gt|lt|ge|le}[date]&status={system|}[code]&owner.identifier=[system|][code]`

    Example:
    
      1. GET [base]/Task?_lastUpdated=gt2010-10-01&status=completed&owner=1234
      1. GET [base]/Task?_lastUpdated=gt2010-10-01&status=completed&owner:Organization.identifier=http://ns.electronichealth.net.au/id/hi/hpio/1.0\|8003621566684455
      1. GET [base]/Task?_lastUpdated=gt2010-10-01&status=accepted,in-progress&owner=1234&_include=Task:patient&_include=Task:requester&_include=Task:owner&_include=Task:focus

    *Implementation Notes:* Fetches a bundle containing Task resources matching the _lastUpdated date, owner and status ([how to search by date](https://build.fhir.org/search.html#date), [how to search by token](http://hl7.org/fhir/R4/search.html#token), [how to search by reference](http://hl7.org/fhir/R4/search.html#reference))


1. **[`_tag`](https://hl7.org/fhir/R4/resource.html#search)** search parameter
   - including support for these **[`_include`](http://hl7.org/fhir/R4/search.html#include)** parameters: `Task:focus`, `Task:owner`, `Task:patient`, and `Task:requester`

    `GET [base]/Task?_tag={system|}[code]`

    Example:
    
      1. GET [base]/Task?_tag=fulfilment-task
      1. GET [base]/Task?_tag=http://terminology.hl7.org.au/CodeSystem/resource-tag\|fulfilment-task-group
      1. GET [base]/Task?_tag=fulfilment-task&_include=Task:patient&_include=Task:requester&_include=Task:owner&_include=Task:focus


    *Implementation Notes:* Fetches a bundle containing Task resources matching the tag ([how to search by token](http://hl7.org/fhir/R4/search.html#token))


1. **[`focus`](https://hl7.org/fhir/R4/task.html#search)** search parameter
   - including support for these **[`_include`](http://hl7.org/fhir/R4/search.html#include)** parameters: `Task:focus`, `Task:owner`, `Task:patient`, and `Task:requester`

    `GET [base]/Task?focus={Type/}[id]` 

    Example:
    
      1. GET [base]/Task?focus=ServiceRequest/1234
      1. GET [base]/Task?focus=ServiceRequest/1234&_include=Task:patient&_include=Task:requester&_include=Task:owner&_include=Task:focus

    *Implementation Notes:* Fetches a bundle containing Task resources matching the focus ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference))


1. **[`group-identifier`](https://hl7.org/fhir/R4/task.html#search)** search parameter
   - including support for these **[`_include`](http://hl7.org/fhir/R4/search.html#include)** parameters: `Task:focus`, `Task:owner`, `Task:patient`, and `Task:requester`

    `GET [base]/Task?group-identifier={system|}[code]`

    Example:
    
      1. GET [base]/Task?group-identifier=https://elimbahmedicalcentre.example.com.au/orders/task-identifier\|EMC1234567-1234 
      1. GET [base]/Task?group-identifier=https://elimbahmedicalcentre.example.com.au/orders/task-identifier\|EMC1234567-1234&_include=Task:patient&_include=Task:requester&_include=Task:owner&_include=Task:focus

    *Implementation Notes:* Fetches a bundle containing Task resources matching the group identifier ([how to search by token](http://hl7.org/fhir/R4/search.html#token))


1. **[`owner`](https://hl7.org/fhir/R4/task.html#search)** search parameter
   - including support for these **[`_include`](http://hl7.org/fhir/R4/search.html#include)** parameters: `Task:focus`, `Task:owner`, `Task:patient`, and `Task:requester`
   - including support for chained searching of owner canonical identifier `owner.identifier` (e.g. `owner.identifier=[system|][code]`)

    `GET [base]/Task?owner={Type/}[id]` or optionally `GET [base]/Task?owner.identifier=[system|][code]`

    Example:
    
      1. GET [base]/Task?owner=5678
      1. GET [base]/Task?owner:Organization.identifier=http://ns.electronichealth.net.au/id/hi/hpio/1.0\|8003621566684455
      1. GET [base]/Task?owner=5678&_include=Task:patient&_include=Task:requester&_include=Task:owner&_include=Task:focus

    *Implementation Notes:* Fetches a bundle containing Task resources matching the owner ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference))


1. Combined **[`owner`](https://hl7.org/fhir/R4/task.html#search)** and **[`status`](https://hl7.org/fhir/R4/task.html#search)** search parameters:   
   - including support for these **[`_include`](http://hl7.org/fhir/R4/search.html#include)** parameters: `Task:focus`, `Task:owner`, `Task:patient`, and `Task:requester`
   - including support for chained searching of owner canonical identifier `owner.identifier` (e.g. `owner.identifier=[system|][code]`)
   - including support for **[`multipleOr`](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleOr)** search on `status`

    `GET [base]/Task?owner={Type/}[id]&status={system|}[code]{,{system|}[code],...}` or optionally `GET [base]/Task?owner.identifier=[system|][code]&status={system|}[code]{,{system|}[code],...}`

    Example:
    
      1. GET [base]/Task?owner=5678&status=completed
      1. GET [base]/Task?owner:Organization.identifier=http://ns.electronichealth.net.au/id/hi/hpio/1.0\|8003621566684455&status=completed
      1. GET [base]/Task?owner=5678&status=completed&_include=Task:patient&_include=Task:requester&_include=Task:owner&_include=Task:focus
      1. GET [base]/Task?owner=5678&status=accepted,in-progress

    *Implementation Notes:* Fetches a bundle containing Task resources matching the owner and status ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference), [how to search by token](http://hl7.org/fhir/R4/search.html#token))


1. **[`patient`](https://hl7.org/fhir/R4/task.html#search)** search parameter
   - including support for these **[`_include`](http://hl7.org/fhir/R4/search.html#include)** parameters: `Task:focus`, `Task:owner`, `Task:patient`, and `Task:requester`
   - including support for chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`)

    `GET [base]/Task?patient={Type/}[id]` or optionally `GET [base]/Task?patient.identifier=[system|][code]`

    Example:
    
      1. GET [base]/Task?patient=5678
      1. GET [base]/Task?patient.identifier=http://ns.electronichealth.net.au/id/medicare-number\|32788511952
      1. GET [base]/Task?patient=5678&_include=Task:patient&_include=Task:requester&_include=Task:owner&_include=Task:focus

    *Implementation Notes:* Fetches a bundle containing Task resources matching the patient ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference))


1. Combined **[`patient`](https://hl7.org/fhir/R4/task.html#search)** and **[`status`](https://hl7.org/fhir/R4/task.html#search)** search parameters
   - including support for these **[`_include`](http://hl7.org/fhir/R4/search.html#include)** parameters: `Task:focus`, `Task:owner`, `Task:patient`, and `Task:requester`
   - including support for chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`)
   - including support for **[`multipleOr`](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleOr)** search on `status`


   `GET [base]/Task?patient={Type/}[id]&status={system|}[code]{,{system|}[code],...}` or optionally `GET [base]/Task?patient.identifier=[system|][code]&status={system|}[code]{,{system|}[code],...}`

    Example:
    
      1. GET [base]/Task?patient=5678&status=completed
      1. GET [base]/Task?patient.identifier=http://ns.electronichealth.net.au/id/medicare-number\|32788511952&status=completed
      1. GET [base]/Task?patient=5678&status=completed&_include=Task:patient&_include=Task:requester&_include=Task:owner&_include=Task:focus
      1. GET [base]/Task?patient=5678&status=accepted,in-progress

    *Implementation Notes:* Fetches a bundle containing Task resources matching the patient and status ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference), [how to search by token](http://hl7.org/fhir/R4/search.html#token))


1. **[`requester`](https://hl7.org/fhir/R4/task.html#search)** search parameter
   - including support for these **[`_include`](http://hl7.org/fhir/R4/search.html#include)** parameters: `Task:focus`, `Task:owner`, `Task:patient`, and `Task:requester`
   - including support for chained searching of requester canonical identifier `requester.identifier` (e.g. `requester.identifier=[system|][code]`)

    `GET [base]/Task?requester={Type/}[id]` or optionally `GET [base]/Task?requester.identifier=[system|][code]`

    Example:
    
      1. GET [base]/Task?requester=5678
      1. GET [base]/Task?requester:PractitionerRole.identifier=http://ns.electronichealth.net.au/id/medicare-provider-number\|553255
      1. GET [base]/Task?requester=5678&_include=Task:patient&_include=Task:requester&_include=Task:owner&_include=Task:focus

    *Implementation Notes:* Fetches a bundle containing Task resources matching the requester ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference))


1. Combined **[`requester`](https://hl7.org/fhir/R4/task.html#search)** and **[`status`](https://hl7.org/fhir/R4/task.html#search)** search parameters
   - including support for these **[`_include`](http://hl7.org/fhir/R4/search.html#include)** parameters: `Task:focus`, `Task:owner`, `Task:patient`, and `Task:requester`
   - including support for chained searching of requester canonical identifier `requester.identifier` (e.g. `requester.identifier=[system|][code]`)
   - including support for **[`multipleOr`](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleOr)** search on `status`

    `GET [base]/Task?requester={Type/}[id]&status={system|}[code]{,{system|}[code],...}` or optionally `GET [base]/Task?requester.identifier=[system|][code]&status={system|}[code]{,{system|}[code],...}`

    Example:
    
      1. GET [base]/Task?requester=5678&status=completed
      1. GET [base]/Task?requester:PractitionerRole.identifier=http://ns.electronichealth.net.au/id/medicare-provider-number\|553255&status=completed
      1. GET [base]/Task?requester=5678&status=accepted,in-progress&_include=Task:patient&_include=Task:requester&_include=Task:owner

    *Implementation Notes:* Fetches a bundle containing Task resources matching the requester and status ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference), [how to search by token](http://hl7.org/fhir/R4/search.html#token))
   

1. **[`status`](https://hl7.org/fhir/R4/task.html#search)** search parameter
   - including support for these **[`_include`](http://hl7.org/fhir/R4/search.html#include)** parameters: `Task:focus`, `Task:owner`, `Task:patient`, and `Task:requester`
   - including support for **[`multipleOr`](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleOr)**

    `GET [base]/Task?status={system|}[code]{,{system|}[code],...}`

    Example:
    
      1. GET [base]/Task?status=completed 
      1. GET [base]/Task?status=accepted,in-progress
      1. GET [base]/Task?status=completed&_include=Task:patient&_include=Task:requester&_include=Task:owner&_include=Task:focus

    *Implementation Notes:* Fetches a bundle containing Task resources matching the status ([how to search by token](http://hl7.org/fhir/R4/search.html#token))
