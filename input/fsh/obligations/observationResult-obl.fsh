Profile: CZ_ObservationResultObligationsImg
Parent: CZ_ObservationResultImaging
Id: cz-observationResult-obl-img
Title:    "ObservationResult (Imaging Report): Obligations"
Description: "This profile defines obligations for an Observation result in FHIR for the purpose of this guide."
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* insert SetFmmandStatusRule ( 0, informative)

* hasMember insert ObligationSet-04_creator-should-if-known
* component insert ObligationSet-04_creator-should-if-known
* specimen insert ObligationSet-03_creator-shall-if-known
* referenceRange insert ObligationSet-03_creator-shall-if-known
* dataAbsentReason insert ObligationSet-04_creator-should-if-known
* value[x] insert ObligationSet-04_creator-should-if-known
* interpretation insert ObligationSet-04_creator-should-if-known
* method insert ObligationSet-04_creator-should-if-known
* derivedFrom insert ObligationSet-04_creator-should-if-known
* bodySite insert ObligationSet-04_creator-should-if-known
* status insert ObligationSet-04_creator-should-if-known
* code insert ObligationSet-01_creator-shall-able
* category insert ObligationSet-04_creator-should-if-known 
* device insert ObligationSet-04_creator-should-if-known
* valueDateTime insert ObligationSet-03_creator-shall-if-known