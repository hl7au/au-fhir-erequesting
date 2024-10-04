{% include search_parameters_intro.md -%}

<table class="list" width="100%">
<tbody>
  <tr>
    <th>Parameter(s)</th>
    <th>Conformance </th>
    <th>Type(s)</th>
    <th>Requirements (when used alone or in combination)</th>
  </tr>
  <tr>
        <td>_id</td>
        <td><b>SHALL</b></td>
        <td><code>token</code></td>
        <td></td>
  </tr>
  <tr>
        <td>group-identifier</td>
        <td><b>SHALL</b></td>
        <td><code>token</code></td>
        <td></td>
  </tr>
    <tr>
        <td>owner</td>
        <td><b>SHALL</b></td>
        <td><code>reference</code></td>
        <td><b>SHOULD</b> support chained search owner.identifier using HPI-O and ABN identifiers as defined in the AU Core Organization profile.</td>
  </tr>
    <tr>
        <td>patient</td>
        <td><b>SHALL</b></td>
        <td><code>reference</code></td>
        <td><b>SHALL</b> support chained search patient.identifier using IHI, Medicare Number, and DVA Number identifiers as defined in the AU Core Patient profile.</td>
  </tr>
  <tr>
        <td>requester</td>
        <td><b>SHALL</b></td>
        <td><code>reference</code></td>
        <td><b>SHOULD</b> support chained search requester.identifier using Medicare Provider Number as defined in the AU Core PractitionerRole profile.</td>
  </tr>
  <tr>
        <td>focus</td>
        <td><b>SHALL</b></td>
        <td><code>reference</code></td>
        <td></td>
  </tr>
  <tr>
        <td>patient+status</td>
        <td><b>SHOULD</b></td>
        <td><code>reference</code>+<code>token</code></td>
        <td></td>
  </tr>
  <tr>
        <td>owner+status</td>
        <td><b>SHOULD</b></td>
        <td><code>reference</code>+<code>token</code></td>
        <td></td>
  </tr>
  <tr>
        <td>requester+status</td>
        <td><b>SHOULD</b></td>
        <td><code>reference</code>+<code>token</code></td>
        <td></td>
  </tr>
    <tr>
        <td>_lastUpdated+status+owner</td>
        <td><b>SHALL</b></td>
        <td><code>date</code>+<code>token</code>+<code>reference</code></td>
        <td></td>
  </tr>
 </tbody>
</table>

#### Mandatory Search Parameters:

The following search parameters and search parameter combinations **SHALL** be supported:

1. **SHALL** support searching using the **[`_id`](https://www.hl7.org/fhir/R4/task.html#search)** search parameter:

   `GET [base]/Task?_id=[id]`

   Example:

   1. GET [base]/Task?\_id=1231569

   _Implementation Notes:_ Fetches a bundle with the requested Task, instead of just the resource itself, and allows for the inclusion of additional search parameters such as \_include, \_revinclude, or \_lastUpdated ([how to search by id of the resource](https://hl7.org/fhir/r4/search.html#id))

1. **SHALL** support searching using the **[`group-identifier`](https://www.hl7.org/fhir/R4/task.html#search)** search parameter:

   `GET [base]/Task?group-identifier={system|}{code}`

   Example:

   1. GET [base]/Task?group-identifier=EMC4542244-5624
   1. GET [base]/Task?group-identifier=https://elimbahmedicalcentre.example.com.au/orders/order-identifier\|EMC4542244-5624

   _Implementation Notes:_ Fetches a bundle containing ServiceRequest resources for the requestedrequisition ([how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHALL** support searching using the **[`owner`](https://hl7.org/fhir/R4/task.html#search)** search parameter:
   - **SHOULD** support chained searching of owner canonical identifier `patient.identifier` (e.g. `owner.identifier=[system|][code]`)
   - **SHALL** support these _include parameters: Task:owner

   `GET [base]/Task?owner={Type/}[id]` or optionally `GET [base]/Task?owner.identifier=[system|][code]`

   Example:

   1. GET [base]/Task?owner=5678
   2.

   _Implementation Notes:_ Fetches a bundle of all Task resources for the specified owner ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference)

1. **SHALL** support searching using the **[`patient`](https://hl7.org/fhir/R4/task.html#search)** search parameter:
   - **SHALL** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`)
   - **SHALL** support these _include parameters: Task:patient

   `GET [base]/Task?patient={Type/}[id]` or optionally `GET [base]/Task?patient.identifier=[system|][code]`

   Example:

   1. GET [base]/Task?patient=5678
   1. GET [base]/Task?patient.identifier=http://ns.electronichealth.net.au/id/medicare-number\|32788511952
   1. GET [base]/Task?patient.identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0\|8003608833357361

   _Implementation Notes:_ Fetches a bundle of all Task resources for the specified patient ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHALL** support searching using the **[`requester`](https://hl7.org/fhir/R4/task.html#search)** search parameter:
      - **SHALL** support these _include parameters: Task:requester
   `GET [base]/Task?requester={Type/}[id]`

   Example:

   1. GET [base]/Task?requester=5678

   _Implementation Notes:_ Fetches a bundle of all Task resources for the specified requester ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference)

1. **SHALL** support searching using the **[`focus`](https://hl7.org/fhir/R4/task.html#search)** search parameter:
   - **SHALL** support these _include parameters: Task:focus
   `GET [base]/Task?focus={Type/}[id]`

   Example:

   1. GET [base]/Task?focus=5678

   _Implementation Notes:_ Fetches a bundle of all Task resources for the specified focus ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference)

1. **SHALL** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/task.html#search)** and **[`status`](https://hl7.org/fhir/R4/task.html#search)** search parameters:
    - **SHALL** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`)
    - **SHALL** support *[multipleOr](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleOr)* search on `status` (e.g.`status={system|}[code],{system|}[code],...`)

    `GET [base]/Task?patient={Type/}[id]&status={system|}[code]{,{system|}[code],...}`

    Example:
    
      1. GET [base]/Task?patient=5678&amp;status=accepted
      1. GET [base]/Task?patient=5678&amp;status=accepted,in-progress

    *Implementation Notes:* Fetches a bundle of all Task resources for the specified patient and status ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHALL** support searching using the combination of the **[`owner`](https://hl7.org/fhir/R4/task.html#search)** and **[`status`](https://hl7.org/fhir/R4/task.html#search)** search parameters:
    - **SHALL** support chained searching of TBD
    - **SHALL** support *[multipleOr](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleOr)* search on `status` (e.g.`status={system|}[code],{system|}[code],...`)

    `GET [base]/Task?owner={Type/}[id]&status={system|}[code]{,{system|}[code],...}`

    Example:
    
      1. GET [base]/Task?patient=5678&amp;status=accepted
      1. GET [base]/Task?patient=5678&amp;status=accepted,in-progress

    *Implementation Notes:* Fetches a bundle of all Task resources for the specified owner and status ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHALL** support searching using the combination of the **[`requester`](https://hl7.org/fhir/R4/task.html#search)** and **[`status`](https://hl7.org/fhir/R4/task.html#search)** search parameters:
    - **SHALL** support chained searching of TBD
    - **SHALL** support *[multipleOr](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleOr)* search on `status` (e.g.`status={system|}[code],{system|}[code],...`)

    `GET [base]/Task?requester={Type/}[id]&status={system|}[code]{,{system|}[code],...}`

    Example:
    
      1. GET [base]/Task?patient=5678&amp;status=accepted
      1. GET [base]/Task?patient=5678&amp;status=accepted,in-progress

    *Implementation Notes:* Fetches a bundle of all Task resources for the specified owner and status ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHALL** support searching using the combination of the **[`_lastUpdated_`](https://hl7.org/fhir/R4/task.html#search)** and **[`owner`](https://hl7.org/fhir/R4/task.html#search)** and **[`status`](https://hl7.org/fhir/R4/task.html#search)** search parameters:
    - **SHALL** support chained searching of TBD
    - **SHALL** support *[multipleOr](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleOr)* search on `status` (e.g.`status={system|}[code],{system|}[code],...`)
    - **SHALL** support *[multipleAnd](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleAnd)* search on `_lastUpdated` (e.g.`status={system|}[code],{system|}[code],...`)
    - **SHALL** support these `_lastUpdated` comparators: `le`, `lt`, `gt`, `ge`

    `GET [base]/Task?patient={Type/}[id]&status={system|}[code]{,{system|}[code],...}`

    Example:
    
      1. GET [base]/Task?patient=5678&amp;status=accepted
      1. GET [base]/Task?patient=5678&amp;status=accepted,in-progress

    *Implementation Notes:* Fetches a bundle of all Task resources for the specified _lastUpdated, owner and status ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))