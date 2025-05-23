Instance: mhr-consent-withdrawal
InstanceOf: Consent
Usage: #example
* meta.profile = "http://hl7.org.au/fhir/ereq/StructureDefinition/au-erequesting-mhrconsentwithdrawal"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-name"
* extension[=].valueString = "Consent - My Health Record Consent Withdrawal"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-instance-description"
* extension[=].valueMarkdown = "Shows an example of consent to upload X-ray results to the My Health Record withdrawn by patient for the *AU eRequesting MHR Consent Withdrawal* profile. Patient: Fred Roberts."
* status = #active
* scope.coding.version = "1"
* scope.coding = $consentscope#patient-privacy "Privacy Consent"
* scope.text = "Patient Privacy"
* category.coding.version = "1"
* category.coding = $v3-ActCode#IDSCL "information disclosure"
* category.text = "information disclosure"
* patient = Reference(roberts-fred)
* dateTime = "2024-05-11"
* performer = Reference(roberts-fred)
* organization = Reference(mount-charlton-radiology)
* policyRule.coding.version = "1"
* policyRule.coding = $v3-ActCode#OPTIN
* policyRule.text = "Opt in"
* provision.type = #deny
* provision.action = $consentaction#disclose "Disclose"
* provision.class = $resource-types#DiagnosticReport
* provision.data.meaning = #dependents
* provision.data.reference = Reference(order-xray-1)