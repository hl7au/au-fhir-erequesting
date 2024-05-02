Profile: ERequestingPlacerGroupNumber
Parent: AULocalOrderIdentifier
Id: erequest-placergroupnumber
Title: "eRequest Placer Group Number"
Description: "Diagnostic placer group number used to link a set of requests into a single diagnostics order.  This will be used as the barcode or token to discover requests."

* . ^short = "eRequest Placer Group Number"
* type ^short = "Coded identifier type for placer group number"
  * coding 1..1
  * coding = $v2-0203#PGN
    * ^short = "Placer Group Number"
* system ^short = "System identifier of the organisation that assigned the placer group number, preferably a HPI-O scoped local order identifier system. For example http://ns.electronichealth.net.au/id/hpio-scoped/order/1.0/8003620000000000"
* value ^short = "Placer group number"
* assigner only Reference(AUCoreOrganization)
  * ^short = "Organisation that assigned the placer group number"
  * display ^short = "Organisation name"
