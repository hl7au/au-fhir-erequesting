Profile: AUeRequestingMHRConsentWithdrawal
Parent: Consent
Id: au-erequesting-mhr-consent-withdrawal
Title: "AU eRequesting MHR Consent Withdrawl"
Description: "Withdraw consent to upload Diagnostic Requests to the My Health Record."

* ^status = #draft
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0

* status = #active
* scope
  * coding 
    * ^slicing.rules = #open
    * ^slicing.discriminator[+].type = #value
    * ^slicing.discriminator[=].path = "system"
    * ^slicing.discriminator[+].type = #value
    * ^slicing.discriminator[=].path = "code"
  * coding contains patientprivacy 0..1
  * coding[patientprivacy]
    * system = "http://terminology.hl7.org/CodeSystem/consentscope"
    * code = #patient-privacy
* category
  * coding 
    * ^slicing.rules = #open
    * ^slicing.discriminator[+].type = #value
    * ^slicing.discriminator[=].path = "system"
    * ^slicing.discriminator[+].type = #value
    * ^slicing.discriminator[=].path = "code"
  * coding contains idscl 0..1
  * coding[idscl]
    * system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
    * code = #IDSCL
* patient 1.. 
* patient only Reference(AUCorePatient)
* dateTime 1..
* performer ..1
* performer only Reference (AUCorePatient)
* organization 1..1 
* organization only Reference (AUCoreOrganization)
* policyRule 
  * coding 
    * ^slicing.rules = #open
    * ^slicing.discriminator[+].type = #value
    * ^slicing.discriminator[=].path = "system"
    * ^slicing.discriminator[+].type = #value
    * ^slicing.discriminator[=].path = "code"
  * coding contains optin 0..1
  * coding[optin]
    * system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
    * code = #OPTIN
* provision 1..
  * type 1..
  * type = #deny
  * action 1..1
  * action 
    * coding 
      * ^slicing.rules = #open
      * ^slicing.discriminator[+].type = #value
      * ^slicing.discriminator[=].path = "system"
      * ^slicing.discriminator[+].type = #value
      * ^slicing.discriminator[=].path = "code"
    * coding contains disclose 0..1
    * coding[disclose]
      * system = "http://terminology.hl7.org/CodeSystem/consentaction"
      * code = #disclose
  * class 1.. 
    * ^slicing.rules = #open
    * ^slicing.discriminator[+].type = #value
    * ^slicing.discriminator[=].path = "system"
    * ^slicing.discriminator[+].type = #value
    * ^slicing.discriminator[=].path = "code"
  * class contains diagnosticreport 1..1
  * class[diagnosticreport]
    * system = "http://hl7.org/fhir/resource-types"
    * code = #DiagnosticReport
  * data 1..
    * meaning
    * meaning = #dependents
    * reference
    * reference only Reference(AUeRequestingPathologyRequest or AUeRequestingImagingRequest)
    
