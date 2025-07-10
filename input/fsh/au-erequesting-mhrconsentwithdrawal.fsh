Profile: AUeRequestingMHRConsentWithdrawal
Parent: Consent
Id: au-erequesting-mhrconsentwithdrawal
Title: "AU eRequesting MHR Consent Withdrawal"
Description: "This profile sets minimum expectations for a Consent resource to record, search, and fetch a My Health Record (MHR) consent withdrawal. It represents a patient's withdrawal of consent to upload to MHR in accordance with paragraph 45(d) of the [My Health Records Act 2012](https://www.legislation.gov.au/C2012A00063). It is based on the [Consent](https://hl7.org/fhir/R4/consent.html) and identifies the additional mandatory core elements, extensions, vocabularies and value sets that SHALL be present in the Consent when conforming to this profile."

* ^status = #draft
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0

* status MS
* status = #active (exactly)
* status ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-placer"
* status ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[code].valueCode = #SHALL:populate
* status ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-filler"
* status ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[code].valueCode = #SHALL:handle
* status ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* status ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[code].valueCode = #SHALL:handle
* status ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* status ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[code].valueCode = #SHALL:able-to-populate
* status ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-patient"
* status ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[code].valueCode = #SHALL:no-error

* scope MS
  * coding 1..1
  * coding = $consentscope#patient-privacy
* scope ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-placer"
* scope ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[code].valueCode = #SHALL:populate
* scope ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-filler"
* scope ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[code].valueCode = #SHALL:handle
* scope ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* scope ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[code].valueCode = #SHALL:handle
* scope ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* scope ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[code].valueCode = #SHALL:able-to-populate
* scope ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-patient"
* scope ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[code].valueCode = #SHALL:no-error 

* category MS
  * coding 1..1
  * coding = $v3-actcode#IDSCL
* category ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-placer"
* category ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[code].valueCode = #SHALL:populate
* category ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-filler"
* category ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[code].valueCode = #SHALL:handle
* category ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* category ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[code].valueCode = #SHALL:handle
* category ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* category ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[code].valueCode = #SHALL:able-to-populate
* category ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-patient"
* category ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[code].valueCode = #SHALL:no-error

* patient 1.. MS
* patient only Reference(AUCorePatient)
* patient ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-placer"
* patient ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[code].valueCode = #SHALL:populate
* patient ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-filler"
* patient ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[code].valueCode = #SHALL:handle
* patient ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* patient ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[code].valueCode = #SHALL:handle
* patient ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* patient ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[code].valueCode = #SHALL:able-to-populate
* patient ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-patient"
* patient ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[code].valueCode = #SHALL:no-error

* dateTime 1.. MS
* dateTime ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-placer"
* dateTime ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[code].valueCode = #SHALL:populate
* dateTime ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-filler"
* dateTime ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[code].valueCode = #SHALL:handle
* dateTime ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* dateTime ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[code].valueCode = #SHALL:handle
* dateTime ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* dateTime ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[code].valueCode = #SHALL:able-to-populate
* dateTime ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-patient"
* dateTime ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[code].valueCode = #SHALL:no-error

* performer 1..1 MS
* performer only Reference (AUCorePatient)
* performer ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-placer"
* performer ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[code].valueCode = #SHALL:populate
* performer ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-filler"
* performer ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[code].valueCode = #SHALL:handle
* performer ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* performer ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[code].valueCode = #SHALL:handle
* performer ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* performer ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[code].valueCode = #SHALL:able-to-populate
* performer ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-patient"
* performer ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[code].valueCode = #SHALL:no-error

* organization 1..1 MS
* organization only Reference (AUCoreOrganization)
* organization ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-placer"
* organization ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[code].valueCode = #SHALL:populate
* organization ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-filler"
* organization ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[code].valueCode = #SHALL:handle
* organization ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* organization ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[code].valueCode = #SHALL:handle
* organization ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* organization ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[code].valueCode = #SHALL:able-to-populate
* organization ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-patient"
* organization ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[code].valueCode = #SHALL:no-error


* policy 1..1 MS
* policy ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-placer"
* policy ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[code].valueCode = #SHALL:populate
* policy ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-filler"
* policy ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[code].valueCode = #SHALL:handle
* policy ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* policy ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[code].valueCode = #SHALL:handle
* policy ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* policy ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[code].valueCode = #SHALL:able-to-populate
* policy ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-patient"
* policy ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[code].valueCode = #SHALL:no-error
  * authority 1..1 MS
  * authority = #https://www.health.gov.au (exactly)
  * authority ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-placer"
  * authority ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[code].valueCode = #SHALL:populate
  * authority ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-filler"
  * authority ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[code].valueCode = #SHALL:handle
  * authority ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
  * authority ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[code].valueCode = #SHALL:handle
  * authority ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
  * authority ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[code].valueCode = #SHALL:able-to-populate
  * authority ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-patient"
  * authority ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[code].valueCode = #SHALL:no-error
  * uri 1..1 MS
  * uri = #https://www.legislation.gov.au/C2012A00063 (exactly)
  * uri ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-placer"
  * uri ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[code].valueCode = #SHALL:populate
  * uri ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-filler"
  * uri ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[code].valueCode = #SHALL:handle
  * uri ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
  * uri ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[code].valueCode = #SHALL:handle
  * uri ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
  * uri ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[code].valueCode = #SHALL:able-to-populate
  * uri ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-patient"
  * uri ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[code].valueCode = #SHALL:no-error

* policyRule 1..1 MS
  * coding 1..1 
  * coding = $v3-actcode#OPTIN
* policyRule ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-placer"
* policyRule ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[code].valueCode = #SHALL:populate
* policyRule ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-filler"
* policyRule ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[code].valueCode = #SHALL:handle
* policyRule ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* policyRule ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[code].valueCode = #SHALL:handle
* policyRule ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* policyRule ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[code].valueCode = #SHALL:able-to-populate
* policyRule ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-patient"
* policyRule ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[code].valueCode = #SHALL:no-error

* provision 1.. MS
* provision ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-placer"
* provision ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[code].valueCode = #SHALL:populate
* provision ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-filler"
* provision ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[code].valueCode = #SHALL:handle
* provision ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* provision ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[code].valueCode = #SHALL:handle
* provision ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
* provision ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[code].valueCode = #SHALL:able-to-populate
* provision ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-patient"
* provision ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[code].valueCode = #SHALL:no-error
  * type 1.. MS
  * type = #deny (exactly)
  * type ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-placer"
  * type ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[code].valueCode = #SHALL:populate
  * type ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-filler"
  * type ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[code].valueCode = #SHALL:handle
  * type ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
  * type ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[code].valueCode = #SHALL:handle
  * type ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
  * type ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[code].valueCode = #SHALL:able-to-populate
  * type ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-patient"
  * type ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[code].valueCode = #SHALL:no-error
  * action 1..1 MS
    * coding 1..1 
    * coding = $consentaction#disclose
  * action ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-placer"
  * action ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[code].valueCode = #SHALL:populate
  * action ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-filler"
  * action ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[code].valueCode = #SHALL:handle
  * action ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
  * action ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[code].valueCode = #SHALL:handle
  * action ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
  * action ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[code].valueCode = #SHALL:able-to-populate
  * action ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-patient"
  * action ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[code].valueCode = #SHALL:no-error
  * class 1.. MS
  * class ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-placer"
  * class ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[code].valueCode = #SHALL:populate
  * class ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-filler"
  * class ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[code].valueCode = #SHALL:handle
  * class ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
  * class ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[code].valueCode = #SHALL:handle
  * class ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
  * class ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[code].valueCode = #SHALL:able-to-populate
  * class ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-patient"
  * class ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[code].valueCode = #SHALL:no-error
  * class ^slicing.discriminator.type = #pattern
  * class ^slicing.discriminator.path = "$this"
  * class ^slicing.rules = #open
  * class contains diagnosticReport 1..1 MS
  * class[diagnosticReport] = $resourcetypes#DiagnosticReport
  * data 1.. MS
  * data ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-placer"
  * data ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[code].valueCode = #SHALL:populate
  * data ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-filler"
  * data ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[code].valueCode = #SHALL:handle
  * data ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
  * data ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[code].valueCode = #SHALL:handle
  * data ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
  * data ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[code].valueCode = #SHALL:able-to-populate
  * data ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-patient"
  * data ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[code].valueCode = #SHALL:no-error
    * meaning MS
    * meaning = #dependents (exactly)
    * meaning ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-placer"
    * meaning ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[code].valueCode = #SHALL:populate
    * meaning ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-filler"
    * meaning ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[code].valueCode = #SHALL:handle
    * meaning ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
    * meaning ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[code].valueCode = #SHALL:handle
    * meaning ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
    * meaning ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[code].valueCode = #SHALL:able-to-populate
    * meaning ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-patient"
    * meaning ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[code].valueCode = #SHALL:no-error
    * reference MS
    * reference only Reference(AUeRequestingPathologyRequest or AUeRequestingImagingRequest)
    * reference ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-placer"
    * reference ^extension[http://hl7.org/fhir/StructureDefinition/obligation][0].extension[code].valueCode = #SHALL:populate
    * reference ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-filler"
    * reference ^extension[http://hl7.org/fhir/StructureDefinition/obligation][1].extension[code].valueCode = #SHALL:handle
    * reference ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
    * reference ^extension[http://hl7.org/fhir/StructureDefinition/obligation][2].extension[code].valueCode = #SHALL:handle
    * reference ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[actor].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-server"
    * reference ^extension[http://hl7.org/fhir/StructureDefinition/obligation][3].extension[code].valueCode = #SHALL:able-to-populate
    * reference ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[actor][0].valueCanonical = "http://hl7.org.au/fhir/ereq/ActorDefinition/au-erequesting-actor-patient"
    * reference ^extension[http://hl7.org/fhir/StructureDefinition/obligation][4].extension[code].valueCode = #SHALL:no-error
  
