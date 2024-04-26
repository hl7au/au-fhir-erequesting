Profile: ERequestingCoverage
Parent: Coverage
Id: erequesting-coverage
Title: "Diagnostic Request Coverage"
Description: "Coverage carries the funding option for the request including self-funded, DVA, private insurance, or bulk billed."

* id 0..1 MS
* id ^short = "Unique resource identifier or contained resource access number, e.g. 1"

* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier contains 
    insurancemembernumber 0..1 MS
* identifier[insurancemembernumber] only AUInsuranceMemberNumber
* identifier[insurancemembernumber] ^short = "Fund member number"

* status MS
* status from ERequestingCoverageStatus
* status ^short = "active | cancelled"  

* type 1.. MS 
* type from ERequestingCoverageType
* type ^short = "Coverage Type and Self Payment code"
  * text 1..1 
  * text ^short = "Self Funded | Bulk Billed | DVA"
  * coding.code ^short = "pay | PUBLICPOL | VET"
  * coding.display ^short = "Pay | public healthcare | veteran health program"

* beneficiary ^short = "Patient"
* beneficiary.reference 1.. MS
* beneficiary only Reference(AUCorePatient)
* payor ..1 
* payor ^short = "Insurer of the policy (organization), or self funded payor (Patient or RelatedPerson)"
  * reference MS 
  * reference ^short = "Patient reference when self funded"
  * identifier MS
    * type = $v2-0203#NII //"National Insurance Organization Identifier"
      * text = "National Insurer identifier"
    * value 1..  
    * system = "https://privatehealth.gov.au/dynamic/insurer"
  * identifier ^short = "National insurer identifier"
  * display 1..1 MS
  * display ^short = "Name of insurer or self funded payor"
  * type ^short = "Organization | Patient | RelatedPerson"
* class ..1
* class ^short = "Coverage classification" 
  * type
  * type = http://terminology.hl7.org/CodeSystem/coverage-class#plan
  * type ^short = "Plan type"
  * value MS
  * value ^short = "Class type"

