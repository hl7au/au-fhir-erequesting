Profile: ERequestingDiagnosticRequestBase
Parent: AUBaseDiagnosticRequest
Id: erequesting-diagnostic-request-base
Title: "Diagnostic Request Base"
Description: "Diagnostic Request Base used for Pathology and Radiology.  Carries all the common attributes for diagnostic requests.  Only put attributes here if not specific to pathology or radiology."
* . ^short = "Diagnostic Request Base"
* ^abstract = true

* extension contains ResultCopiesTo named copiesto 0..* MS
* extension contains ERequestingDiagnosticRequestFasting named requestFasting 0..1 MS

* requisition 1..1 
* requisition ^type.profile = Canonical(ERequestingPlacerGroupNumber)

* doNotPerform 0..0

* reasonCode ..1 MS
* reasonCode.text 1..1
* reasonReference MS

* intent = #order (exactly)


* priority MS
* priority from ERequestingDiagnosticRequestPriority (required)

* subject MS
* subject only Reference(AUCorePatient)
  * reference 1..

* requester 1..1
* requester only Reference(AUCorePractitionerRole) 

* note MS

* supportingInfo MS
* supportingInfo obeys narrative-for-supportinginfo
  * ^short = "Supporting request information such as implanted device or conditions"
  * reference 1..
    * ^short = "Reference to contained resource or relative resource URL"
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.discriminator.type = #profile
* supportingInfo ^slicing.discriminator.path = "$this.resolve()"
* supportingInfo contains 
    device 0.. MS and
    condition 0.. MS and
    allergy 0.. MS
    // and
    // pregnancystatus 0..1 MS and
    // gestationalage 0..1 MS and
    // lastmenstrualperiod 0..1 MS 
// * supportingInfo[pregnancystatus] only Reference(AUCorePregnancyStatus)
// * supportingInfo[gestationalage] only Reference(AUCoreGestationalAge)
// * supportingInfo[lastmenstrualperiod] only Reference(AUCoreLastMenstrualPeriod)
* supportingInfo[device] only Reference(ERequestingDevice)
* supportingInfo[condition] only Reference(AUCoreCondition)
* supportingInfo[allergy] only Reference(AUCoreAllergyIntolerance)

* patientInstruction MS
* patientInstruction ^short = "Instructions to patient. Must support where available."

* occurrencePeriod MS
  * ^short = "Period over which the service should occur independent of regulatory obligation"

* authoredOn 1..1
* authoredOn ^short = "Date requested"

* insurance 1..1 MS
* insurance only Reference(ERequestingCoverage)
  * ^short = "Reference to Coverage resource for funding type"
  * reference 1..
    * ^short = "Reference to contained Coverage resource"

* contained ^slicing.rules = #open
* contained ^slicing.discriminator.type = #type
* contained ^slicing.discriminator.path = "$this"
* contained contains 
    coverage 0..1 MS 
* contained[coverage] only ERequestingCoverage


Invariant: narrative-for-supportinginfo
Description: "Always require a narrative for supportingInfo references in ServiceRequest"
Severity: #error
Expression: "resolve().text.div.exists()"


Profile: ERequestingDiagnosticRequestFasting
Parent: http://hl7.org/fhir/StructureDefinition/servicerequest-precondition
Id: erequesting-diagnosticrequest-fasting
Title: "Fasting Precondition"
Description: "Extension to request patient fasting."
* ^context.type = #element
* ^context.expression = "ServiceRequest"

* valueCodeableConcept MS
* valueCodeableConcept = $sct#726054005 "After fasting" 
  * text MS
