Profile: ERequestingDiagnosticRequestRadiology
Parent: ERequestingDiagnosticRequestBase
Id: erequesting-diagnosticrequest-radiology
Title: "Diagnostic Service Requesting Radiology"
Description: "Diagnostic Service Requesting for Radiology.  This will in future hold radiology-specific requesting content."

* code 1.. MS
* code ^short = "Radiology procedure code or free text name"
* code.text 1..1
* code.text ^short = "Procedure name selected or free text entered by the user"

* category = $sct#363679005 "Imaging"


