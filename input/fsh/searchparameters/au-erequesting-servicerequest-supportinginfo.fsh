Instance: au-erequesting-servicerequest-supporting-info
InstanceOf: SearchParameter
Usage: #definition
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* extension[=].valueInteger = 0
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* extension[=].valueCode = #trial-use
* url = "http://hl7.org.au/fhir/ereq/SearchParameter/au-erequesting-servicerequest-supporting-info"
* name = "AUeRequestingServiceRequestSupportingInfo"
* status = #draft
* date = "2025-06-10"
* publisher = "HL7 Australia"
* description = "This SearchParameter returns resources referenced by ServiceRequest.supportingInfo. It is intended to support `_include` of supportingInfo resources, such as pregnancyStatus and clinicalContext, for use in the Australian eRequesting context."
* code = #supporting-info
* base = #ServiceRequest
* type = #reference
* expression = "ServiceRequest.supportingInfo"
* multipleOr = true
* multipleOr.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* multipleOr.extension.valueCode = #MAY
* multipleAnd = true
* multipleAnd.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* multipleAnd.extension.valueCode = #MAY