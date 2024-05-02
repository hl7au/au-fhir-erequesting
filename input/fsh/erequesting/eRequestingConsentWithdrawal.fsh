Profile: ERequestingConsentWithdrawl
Parent: Consent
Id: erequesting-consent-withdrawl
Title: "MHR Consent Withdrawl"
Description: "Withdraw consent to upload report to MHR. This references the set of diagnostic ServiceRequests."

* status MS
* status = #active
* scope MS
* scope = http://terminology.hl7.org/CodeSystem/consentscope#patient-privacy
* category ..1 MS
* category = http://terminology.hl7.org/CodeSystem/v3-ActCode#IDSCL
* patient 1.. MS 
* patient only Reference(AUCorePatient)
* dateTime 1.. MS
* performer ..1 MS
// Should also include AUCoreRelatedPerson when available
* performer only Reference (RelatedPerson or AUCorePatient)
* organization 1..1 MS 
* organization only Reference (AUCoreOrganization)
* policyRule 1.. MS
* policyRule = http://terminology.hl7.org/CodeSystem/v3-ActCode#OPTIN
* provision 1.. MS
  * type 1.. MS
  * type = #deny
  * action 1..1 MS
  * action = http://terminology.hl7.org/CodeSystem/consentaction#disclose
  * class 1.. MS
  * class = http://hl7.org/fhir/resource-types#DiagnosticReport
  * data 1..* MS
    * meaning MS
    * meaning = #dependents
    * reference MS
    * reference only Reference(ERequestingPathologyRequest or ERequestingPathologyRequestGroup or ERequestingPathologyRequest or ERequestingPathologyRequestGroup)
    * reference ^short = "Reference to dependent ServiceRequest(s)."
    * reference ^definition = """
    Reference to the ServiceRequest(s) related to the DiagnosticReport to not be disclosed."""
