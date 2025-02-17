Profile: AUeRequestingMHRConsentWithdrawal
Parent: Consent
Id: au-erequesting-mhr-consent-withdrawal
Title: "AU eRequesting MHR Consent Withdrawal"
Description: "This profile sets minimum expectations for a Consent resource that is used to Withdraw consent to upload Diagnostic Requests to the My Health Record."

* ^status = #draft
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0

* status MS
* status = #active
* scope 
  * coding 1..1 MS
    * system 1..1 MS
    * system = "http://terminology.hl7.org/CodeSystem/consentscope"
    * code 1..1 MS
    * code = #patient-privacy
* category
  * coding 1..1 MS
    * system 1..1 MS
    * system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
    * code 1..1 MS
    * code = #IDSCL
* patient 1.. MS
* patient only Reference(AUCorePatient)
* dateTime 1.. MS
* performer 1..1 MS
* performer only Reference (AUCorePatient)
* organization 1..1 MS
* organization only Reference (AUCoreOrganization)
* policyRule 
  * coding 1..1 MS
    * system 1..1 MS
    * system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
    * code 1..1 MS
    * code = #OPTIN
* provision 1.. MS
  * type 1.. MS
  * type = #deny
  * action 1..1
  * action 
    * coding 1..1 MS
      * system 1..1 MS
      * system = "http://terminology.hl7.org/CodeSystem/consentaction"
      * code 1..1 MS
      * code = #disclose
  * class 1.. MS
    * ^slicing.rules = #open
    * ^slicing.discriminator[+].type = #value
    * ^slicing.discriminator[=].path = "system"
    * ^slicing.discriminator[+].type = #value
    * ^slicing.discriminator[=].path = "code"
  * class contains diagnosticreport 1..1 MS
  * class[diagnosticreport]
    * system MS
    * system = "http://hl7.org/fhir/resource-types"
    * code MS
    * code = #DiagnosticReport
  * data 1.. MS
    * meaning MS
    * meaning = #dependents
    * reference MS
    * reference only Reference(AUeRequestingPathologyRequest or AUeRequestingImagingRequest)
    
