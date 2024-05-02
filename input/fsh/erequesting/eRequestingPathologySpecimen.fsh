Profile: ERequestingSpecimen
Parent: AUBaseSpecimen
Id: erequesting-specimen
Title: "Pathology Request Specimen"
Description: "Pathology request specimen information."

* . ^short = "Pathology request specimen information"
* collection 1..1 MS
  * collector only Reference (AUCorePractitionerRole)
    * ^short = "Collector of the specimen"
  * collectedDateTime 1..1 MS
  * bodySite MS
* container MS
  * identifier 1.. MS
