Profile: AUeRequestingObservationPregnancyStatus
Parent: ObservationPregnancyStatusUvIps
Id: au-erequesting-observation-pregnancystatus
Title: "AU eRequesting Observation Pregnancy Status"
Description: "This profile sets minimum expectations for the Observation resource that is used to record, search, and fetch pregnancy status observations. It is based on the [Observation Pregnancy - Status (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-status-uv-ips) and identifies the additional mandatory core elements, extensions, vocabularies and value sets that *SHALL
* be present in the Observation resource when conforming to this profile."
* ^status = #draft
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* valueCodeableConcept ^sliceName = "valueCodeableConcept"
* valueCodeableConcept 1..1 MS
* valueCodeableConcept = $sct#77386006 (exactly)

