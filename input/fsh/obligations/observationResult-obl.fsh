Profile: CZ_ObservationResultObligationsImg
Parent: CZ_ObservationResultImaging
Id: cz-observationResult-obl-img
Title:    "ObservationResult (Imaging Report): Obligations"
Description: "This profile defines obligations for an Observation result in FHIR for the purpose of this guide."
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* insert SetFmmandStatusRule ( 0, informative)

* hasMember insert ObligationSet-03_author-may
* component insert ObligationSet-03_author-may
* specimen insert ObligationSet-12_server-may-03
* referenceRange insert ObligationSet-11_server-may-02
* dataAbsentReason insert ObligationSet-03_author-may
* value[x] insert ObligationSet-03_author-may
* interpretation insert ObligationSet-03_author-may
* method insert ObligationSet-03_author-may
* derivedFrom insert ObligationSet-03_author-may
* bodySite insert ObligationSet-03_author-may
* status insert ObligationSet-03_author-may
* code insert ObligationSet-01_author-shall
* category insert ObligationSet-03_author-may 
* device insert ObligationSet-03_author-may
* valueDateTime insert ObligationSet-12_server-may-03