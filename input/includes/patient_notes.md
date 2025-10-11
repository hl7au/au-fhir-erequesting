#### Search Parameters:

The following search parameters and search parameter combinations are supported. Conformance obligations are detailed in the table above.

1. **[`_id`](https://hl7.org/fhir/R4/patient.html#search)** search parameter

    `GET [base]/Patient?_id=[id]`

    Example:
    
      1. GET [base]/Patient?_id=456789

  *Implementation Notes:* Fetches a bundle with the requested Patient, instead of just the resource itself, and allows for the inclusion of additional search parameters such as _include, _revinclude, or _lastUpdated ([how to search by id of the resource](https://hl7.org/fhir/r4/search.html#id))
