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
        <td>requisition</td>
        <td><b>SHALL</b></td>
        <td><b>MAY</b></td>
        <td><b>MAY</b></td>
        <td><b>MAY</b></td>
        <td><code>token</code></td>
        <td></td>
  </tr>
  <tr>
        <td>supporting-info</td>
        <td><b>SHOULD</b></td>
        <td><b>MAY</b></td>
        <td><b>MAY</b></td>
        <td><b>MAY</b></td>
        <td><code>reference</code></td>
        <td></td>
  </tr>
  <tr>
        <td>_include=ServiceRequest:patient</td>
        <td><b>SHALL</b></td>
        <td><b>MAY</b></td>
        <td><b>MAY</b></td>
        <td><b>MAY</b></td>
        <td><code>reference</code></td>
        <td>Modifies search results from a query using other search parameters by including the referenced focus resource</td>
  </tr>
  <tr>
        <td>_include=ServiceRequest:requester</td>
        <td><b>SHALL</b></td>
        <td><b>MAY</b></td>
        <td><b>MAY</b></td>
        <td><b>MAY</b></td>
        <td><code>reference</code></td>
        <td>Modifies search results from a query using other search parameters by including the referenced focus resource</td>
  </tr>
  <tr>
        <td>_include=ServiceRequest:encounter</td>
        <td><b>SHOULD</b></td>
        <td><b>MAY</b></td>
        <td><b>MAY</b></td>
        <td><b>MAY</b></td>
        <td><code>reference</code></td>
        <td>Modifies search results from a query using other search parameters by including the referenced focus resource</td>
  </tr>
  <tr>
        <td>_include=ServiceRequest:supporting-info</td>
        <td><b>SHOULD</b></td>
        <td><b>MAY</b></td>
        <td><b>MAY</b></td>
        <td><b>MAY</b></td>
        <td><code>reference</code></td>
        <td>Modifies search results from a query using other search parameters by including the referenced focus resource</td>
  </tr>
 </tbody>
</table>
