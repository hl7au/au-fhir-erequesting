Profile: ERequestingEncounter
Parent: AUCoreEncounter
Id: erequesting-encounter
Title: "Diagnostic Encounter"
Description: "Minimum Encounter for a Diagnostic Request.  Its main purpose at present is to carry the AMB code to designate that we are restricting requests to community-based rather than hospital-based."

* id MS
* status MS
* status = #finished
* status ^short = "Assumes the encounter where the request was made is finished"

* class MS 
* class = $v3-ActCode#AMB
* class ^short = "Assumes the encounter where the request was made is Outpatient (i.e. AMB ambulatory)"

* subject MS
* subject only Reference(AUCorePatient)
  * ^short = "Patient the request is for"
  * reference 1..
    * ^short = "Relative reference to Patient"
