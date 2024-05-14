
The following operations and search parameters have been defined for this Implementation Guide.  For more information on the [FHIR RESTful operations], [FHIR RESTful search api] and the standard [Search Parameter Registry] see the FHIR specification.

### Operations

Claim a request based on access to a barcode/token.  If there is a current assigned fulfiller, the [ERequestingTaskRequest] for that filler will be cancelled and a new one created.

  {% include list-simple-operationdefinitions.xhtml %}

<br />

### Search Parameters

This search parameter is needed to allow request discovery through a FHIR search to include [copy-to](https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-result-copies-to.html) resources.

  {% include list-simple-searchparameters.xhtml %}

<br />

<!-- #### ServiceRequest
- [ServiceRequest-CopiesTo]  -->

{% include link-list.md %}

{% include fsh-link-references.md %}
