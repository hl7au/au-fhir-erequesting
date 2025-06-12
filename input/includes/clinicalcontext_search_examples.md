#### Search Parameters:

The following search parameters and search parameter combinations are supported. Conformance obligations are detailed in the table above.

1. **[`_id`](https://hl7.org/fhir/R4/resource.html#search)** search parameter

    `GET [base]/DocumentReference?_id=[id]`

    Example:
    
      1. GET [base]/DocumentReference?_id=123654

  *Implementation Notes:* Fetches a bundle with the requested DocumentReference, instead of just the resource itself, and allows for the inclusion of additional search parameters such as _include, _revinclude, or _lastUpdated ([how to search by id of the resource](https://hl7.org/fhir/r4/search.html#id))
