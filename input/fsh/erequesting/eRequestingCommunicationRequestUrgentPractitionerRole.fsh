Profile: ERequestingCommunicationRequestUrgentPractitionerRole
Parent: CommunicationRequest
Id: erequest-communicationrequest-urgent-practitionerrole
Title: "Communication Request Urgent Result"
Description: "Urgent communication request to a practitioner.  This is used when the requesting clinician requires urgent contact relating to the results of a request.  The request should be marked as 'urgent' to match the 'urgent' communication request."

* . ^short = "Diagnostic communication request to practitioner"
* status MS
* status = #active (exactly)
  * ^short = "active"
* priority = #urgent (exactly)
* about 1.. MS
* about obeys urgent-pract-comms
* about only Reference (ERequestingPathologyRequest or ERequestingPathologyRequestGroup or ERequestingRadiologyRequest or ERequestingRadiologyRequestGroup)
  * ^short = "Diagnostic request the urgent communication is about"
* authoredOn 1..1 MS
* authoredOn ^short = "Date/time when communication request direction obtained"
* sender 1.. MS
* sender only Reference (AUCoreOrganization)
  * ^short = "Diagnostic organization sending the communication"
* subject 1..1 MS
* subject only Reference (AUCorePatient)
  * ^short = "Patient that is the subject of the Diagnostic Service"
* requester 1.. MS
* requester only Reference (AUCorePractitionerRole)
  * ^short = "Individual provider requesting the communication"
* recipient 1..1 MS
* recipient only Reference (ERequestingPractitionerRoleContact)
  * ^short = "Individual provider receiving the communication represented as a contained PractitionerRole with communication contact details"
  * reference 1..
    * ^short = "Reference to contained PractitionerRole resource" 
* medium 1..1 MS
* medium from ERequestingCommunicationUrgentMedium
  * ^short = "SMSWRIT | EMAILWRIT | PHONE"
* category 1..1 MS
* category = $communication-category#alert
  * ^short = "alert"
* groupIdentifier 1..1 MS
* groupIdentifier ^type.profile = Canonical(ERequestingPlacerGroupNumber)

* contained ^slicing.rules = #open
* contained ^slicing.discriminator.type = #type
* contained ^slicing.discriminator.path = "$this"
* contained contains 
    recipient 1..1 MS
* contained[recipient] only ERequestingPractitionerRoleContact

Invariant: urgent-pract-comms
Description: "An urgent CommunicationRequest to PractitionerRole must be based on an urgent ServiceRequest"
Severity: #error
Expression: "resolve().priority = 'urgent'"

Profile: ERequestingPractitionerRoleContact
Parent: AUCorePractitionerRole
Id: erequesting-practitionerrole-contact
Title: "Communication Request Urgent Contact"
Description: "This profile supports a PractitionerRole for clinician communication contact details as used for urgent diagnostic result communication."

* . ^short = "Individual practitioner with communication contact details"
* practitioner 1.. MS
  * reference 1..
* telecom 1..1 MS
  * ^short = "Contact phone number"
  * system 1..1
  * system = #phone (exactly)
    * ^short = "phone"
  * value 1..1
    * ^short = "Contact phone number"
