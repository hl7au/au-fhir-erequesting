Profile: ERequestingRadiologyRequestBase
Parent: ERequestingDiagnosticRequestBase
Id: erequesting-radiology-request-base
Title: "Radiology Request Base"
Description: "Radiology request base profile used for both a radiology request and a group of radiology requests."

* . ^short = "Radiology Request Base"
* ^abstract = true

* bodySite 0..1 MS

* category 1..1 MS
* category = $sct#363679005 "Imaging"
