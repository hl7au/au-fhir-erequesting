#### Search Parameters:

The following search parameters and search parameter combinations are supported. Conformance obligations are detailed in the table above.

1. **[`_id`](https://hl7.org/fhir/R4/task.html#search)** search parameter
   - including support for these _include parameters: `Task:requester`, `Task:owner`, and `Task:focus`
 
    `GET [base]/Task?_id=[id]`

    Example:
    
      1. GET [base]/Task?_id=2169591
      1. GET [base]/Task?_id=2169591&_include=Task:patient&_include=Task:requester&_include=Task:owner&_include=Task:focus

    *Implementation Notes:* Fetches a bundle with the requested Task, instead of just the resource itself, and allows for the inclusion of additional search parameters such as _include, _revinclude, or _lastUpdated ([how to search by id of the resource](https://hl7.org/fhir/r4/search.html#id))


1. **[`_lastUpdated`](https://hl7.org/fhir/R4/task.html#search)** search parameter
   - including support for these _include parameters: `Task:requester`, `Task:owner`, and `Task:focus`
 
    `GET [base]/Task?_lastUpdated=[date]`

    Example:
    
      1. GET [base]/Task?_lastUpdated=gt2010-10-01
      1. GET [base]/Task?_lastUpdated=gt2010-10-01&_include=Task:patient&_include=Task:requester&_include=Task:owner&_include=Task:focus

    *Implementation Notes:* Fetches a bundle with the requested Task, instead of just the resource itself, and allows for the inclusion of additional search parameters such as _include, _revinclude, or _lastUpdated ([how to search by date](https://build.fhir.org/search.html#date))


1. Combined **[`_lastUpdated_`](https://hl7.org/fhir/R4/task.html#search)** and **[`status`](https://hl7.org/fhir/R4/task.html#search)** and **[`owner`](https://hl7.org/fhir/R4/task.html#search)** search parameters
   - including support for these _include parameters: `Task:requester`, `Task:owner`, and `Task:focus`

    Example:
    
      1. GET [base]/Task?_lastUpdated=gt2010-10-01&&status=completed&owner=https://elimbahmedicalcentre.example.com.au/orders/practitioner-identifier\|EMC1234567-1234
      1. GET [base]/Task?_lastUpdated=gt2010-10-01&&status=completed&owner=https://elimbahmedicalcentre.example.com.au/orders/practitioner-identifier\|EMC1234567-1234&_include=Task:patient&_include=Task:requester&_include=Task:owner&_include=Task:focus

    *Implementation Notes:* Fetches a bundle containing Task resources matching the _lastUpdated, owner and status, instead of just the resource itself, and allows for the inclusion of additional search parameters such as _include, _revinclude, or _lastUpdated ([how to search by date](https://build.fhir.org/search.html#date), [how to search by token](http://hl7.org/fhir/R4/search.html#token), [how to search by reference](http://hl7.org/fhir/R4/search.html#reference))


1. **[`focus`](https://hl7.org/fhir/R4/encounter.html#search)** search parameter:
   - including support for these _include parameters: `Task:requester`, `Task:owner`, and `Task:focus`

    `GET [base]/Task?reqfocusester={Type/}[id]` 

    Example:
    
      1. GET [base]/Task?focus=AUeRequestingDiagnosticRequest/1234-5678
      1. GET [base]/Task?focus=AUeRequestingDiagnosticRequest/1234-5678&_include=Task:patient&_include=Task:requester&_include=Task:owner&_include=Task:focus

    *Implementation Notes:* Fetches a bundle containing Task resources matching the focus ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference))


1. **[`group-identifier`](https://hl7.org/fhir/R4/task.html#search)** search parameter:
   - including support for these _include parameters: `Task:requester`, `Task:owner`, and `Task:focus`

    `GET [base]/Task?groupIdentifier={system|}{value}`

    Example:
    
      1. GET [base]/Task?groupIdentifier=https://elimbahmedicalcentre.example.com.au/orders/task-identifier\|EMC1234567-1234 
      1. GET [base]/Task?groupIdentifier=https://elimbahmedicalcentre.example.com.au/orders/task-identifier\|EMC1234567-1234&_include=Task:patient&_include=Task:requester&_include=Task:owner&_include=Task:focus

    *Implementation Notes:* Fetches a bundle containing Task resources matching the group identifier ([how to search by token](http://hl7.org/fhir/R4/search.html#token))


1. **[`owner`](https://hl7.org/fhir/R4/task.html#search)** search parameter:
   - including support for these _include parameters: `Task:requester`, `Task:owner`, and `Task:focus`
   - including support for chained searching of owner canonical identifier `owner.identifier` (e.g. `owner.identifier=[system|][code]`)

    Example:
    
      1. GET [base]/Task?owner=5678
      1. GET [base]/Task?owner=5678&_include=Task:patient&_include=Task:requester&_include=Task:owner&_include=Task:focus
      1. GET [base]/Task?owner.identifier=http://ns.electronichealth.net.au/id/hi/hpio/1.0\|8003621566684455
      1. GET [base]/Task?owner.identifier=http://ns.electronichealth.net.au/id/hi/hpio/1.0\|8003621566684455&_include=Task:patient&_include=Task:requester&_include=Task:owner&_include=Task:focus
      1. GET [base]/Task?owner.identifier=http://hl7.org.au/id/abn\|23964200000
      1. GET [base]/Task?owner.identifier=http://hl7.org.au/id/abn\|23964200000&_include=Task:patient&_include=Task:requester&_include=Task:owner&_include=Task:focus

    *Implementation Notes:* Fetches a bundle containing Task resources matching the owner ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference))


1. Combined **[`owner`](https://hl7.org/fhir/R4/task.html#search)** and **[`status`](https://hl7.org/fhir/R4/task.html#search)** search parameters:   
   - including support for these _include parameters: `Task:requester`, `Task:owner`, and `Task:focus`
   - including support for chained searching of owner canonical identifier `owner.identifier` (e.g. `owner.identifier=[system|][code]`)

    Example:
    
      1. GET [base]/Task?owner=5678&status=completed
      1. GET [base]/Task?owner=5678&status=completed&_include=Task:patient&_include=Task:requester&_include=Task:owner&_include=Task:focus
      1. GET [base]/Task?owner.identifier=http://ns.electronichealth.net.au/id/hi/hpio/1.0\|8003621566684455&status=completed
      1. GET [base]/Task?owner.identifier=http://ns.electronichealth.net.au/id/hi/hpio/1.0\|8003621566684455&status=completed&_include=Task:patient&_include=Task:requester&_include=Task:owner&_include=Task:focus

    *Implementation Notes:* Fetches a bundle containing Task resources matching the owner and status ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference), [how to search by token](http://hl7.org/fhir/R4/search.html#token))


1. **[`patient`](https://hl7.org/fhir/R4/task.html#search)** search parameter:
   - including support for these _include parameters: `Task:requester`, `Task:owner`, and `Task:focus`
   - including support for chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`)

    `GET [base]/Task?patient={Type/}[id]` or optionally `GET [base]/Task?patient.identifier=[system|][code]`

    Example:
    
      1. GET [base]/Task?patient=5678
      1. GET [base]/Task?patient=5678&_include=Task:patient&_include=Task:requester&_include=Task:owner&_include=Task:focus
      1. GET [base]/Task?patient.identifier=http://ns.electronichealth.net.au/id/medicare-number\|32788511952
      1. GET [base]/Task?patient.identifier=http://ns.electronichealth.net.au/id/medicare-number\|32788511952&_include=Task:patient&_include=Task:requester&_include=Task:owner&_include=Task:focus
      1. GET [base]/Task?patient.identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0\|8003608833357361 
      1. GET [base]/Task?patient.identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0\|8003608833357361&_include=Task:patient&_include=Task:requester&_include=Task:owner&_include=Task:focus


1. Combined **[`patient`](https://hl7.org/fhir/R4/task.html#search)** and **[`status`](https://hl7.org/fhir/R4/task.html#search)** search parameters:   
    - including support for these _include parameters: `Task:requester`, `Task:owner`, and `Task:focus`
    - including support for chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`)

    Example:
    
      1. GET [base]/Task?patient=5678&status=completed
      1. GET [base]/Task?patient=5678&status=completed&_include=Task:patient&_include=Task:requester&_include=Task:owner&_include=Task:focus
      1. GET [base]/Task?patient.identifier=http://ns.electronichealth.net.au/id/medicare-number\|32788511952&status=completed
      1. GET [base]/Task?patient.identifier=http://ns.electronichealth.net.au/id/medicare-number\|32788511952&status=completed&_include=Task:patient&_include=Task:requester&_include=Task:owner&_include=Task:focus

    *Implementation Notes:* Fetches a bundle containing Task resources matching the patient and status ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference), [how to search by token](http://hl7.org/fhir/R4/search.html#token))


1. **[`requester`](https://hl7.org/fhir/R4/encounter.html#search)** search parameter:
   - including support for these _include parameters: `Task:requester`, `Task:owner`, and `Task:focus`
   - including support for chained searching of requester canonical identifier `requester.identifier` (e.g. `requester.identifier=[system|][code]`)

    `GET [base]/Task?requester={Type/}[id]` or optionally `GET [base]/Task?parequestertient.identifier=[system|][code]`

    Example:
    
      1. GET [base]/Task?requester=5678
      1. GET [base]/Task?requester=5678&_include=Task:patient&_include=Task:requester&_include=Task:owner&_include=Task:focus
      1. GET [base]/Task?requester.identifier=http://ns.electronichealth.net.au/id/medicare-provider-number\|553255
      1. GET [base]/Task?requester.identifier=http://ns.electronichealth.net.au/id/medicare-provider-number\|553255&_include=Task:patient&_include=Task:requester&_include=Task:owner&_include=Task:focus

    *Implementation Notes:* Fetches a bundle containing Task resources matching the requester ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference))


1. Combined **[`requester`](https://hl7.org/fhir/R4/task.html#search)** and **[`status`](https://hl7.org/fhir/R4/task.html#search)** search parameters:   
   - including support for these _include parameters: `Task:requester`, `Task:owner`, and `Task:focus`
    Example:
    
      1. GET [base]/Task?requester=5678&status=completed
      1. GET [base]/Task?requester=5678&status=completed&_include=Task:patient&_include=Task:requester&_include=Task:owner&_include=Task:focus
      1. GET [base]/Task?requester.identifier=http://ns.electronichealth.net.au/id/medicare-provider-number\|553255&status=completed
      1. GET [base]/Task?requester.identifier=http://ns.electronichealth.net.au/id/medicare-provider-number\|553255&status=completed&_include=Task:patient&_include=Task:requester&_include=Task:owner&_include=Task:focus

    *Implementation Notes:* Fetches a bundle containing Task resources matching the requester and status ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference), [how to search by token](http://hl7.org/fhir/R4/search.html#token))
   

1. **[`status`](https://hl7.org/fhir/R4/task.html#search)** search parameter:
   - including support for these _include parameters: `Task:requester`, `Task:owner`, and `Task:focus`

    `GET [base]/Task?status={system|}{value}`

    Example:
    
      1. GET [base]/Task?status=completed 
      1. GET [base]/Task?status=completed&_include=Task:patient&_include=Task:requester&_include=Task:owner&_include=Task:focus

    *Implementation Notes:* Fetches a bundle containing Task resources matching the status ([how to search by token](http://hl7.org/fhir/R4/search.html#token))
