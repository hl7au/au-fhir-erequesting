Profile: ERequestingRadiologyRequest
Parent: ERequestingRadiologyRequestBase
Id: erequesting-radiology-request
Title: "Radiology Request"
Description: "Radiology request."

* code 1.. MS
* code ^short = "Radiology procedure code or free text name"
* code.text 1..1
* code.text ^short = "Procedure name selected or free text entered by the user"

* basedOn 1..1
* basedOn only Reference(ERequestingRadiologyRequestGroup)