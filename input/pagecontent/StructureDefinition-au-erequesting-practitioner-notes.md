{% include search_parameters_intro.md -%}
<table class="list" width="100%">
  <tbody>
    <tr>
      <th>Parameter(s)</th>
      <th>Server Conformance </th>
      <th>Placer Conformance </th>
      <th>Filler Conformance </th>
      <th>Patient Conformance </th>
      <th>Type(s)</th>
      <th>Requirements (when used alone or in combination)</th>
    </tr>
    <tr>
      <td>_id</td>
      <td><b>SHALL</b></td>
      <td><b>MAY</b></td>
      <td><b>MAY</b></td>
      <td><b>MAY</b></td>
      <td><code>token</code></td>
      <td></td>
    </tr>
    <tr>
      <td>identifier</td>
      <td><b>SHALL</b></td>
      <td><b>-</b></td>
      <td><b>MAY</b></td>
      <td><b>MAY</b></td>
      <td><code>token</code></td>
      <td></td>
  </tr>
  </tbody>
</table>

#### Search Parameters:

The following search parameters and search parameter combinations are supported. Conformance obligations are detailed in the table above.

1. **[`_id`](https://hl7.org/fhir/R4/practitioner.html#search)** search parameter

    `GET [base]/Practitioner?_id=[id]`

    Example:
    
      1. GET [base]/Practitioner?_id=987654

  *Implementation Notes:* Fetches a bundle with the requested Practitioner, instead of just the resource itself, and allows for the inclusion of additional search parameters such as _include, _revinclude, or _lastUpdated ([how to search by id of the resource](https://hl7.org/fhir/r4/search.html#id))

1. **[`identifier`](https://hl7.org/fhir/R4/practitioner.html#search)** search parameter:

    `GET [base]/Practitioner?identifier=[system|][code]`

    Example:
    
      1. GET [base]/Practitioner?identifier=http://ns.electronichealth.net.au/id/hi/hpii/1.0\|8003616566719020

    *Implementation Notes:* Fetches a bundle containing all Practitioner resources matching the identifier ([how to search by token](http://hl7.org/fhir/R4/search.html#token))