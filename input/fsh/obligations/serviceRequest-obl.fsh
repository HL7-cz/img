Profile: CZ_ServiceRequestObligationsImg
Parent: CZ_ImagingOrderInformation
Id: cz-serviceRequest-obl-img
Title:    "Service Request (Imaging Report): Obligations"
Description: "This profile defines obligations for an Order information in FHIR for the purpose of this guide."
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* insert SetFmmandStatusRule ( 0, informative)

* identifier insert ObligationSet-04_creator-should-if-known
* text insert ObligationSet-01_creator-shall-able
* status insert ObligationSet-04_creator-should-if-known
* intent insert ObligationSet-04_creator-should-if-known
* category insert ObligationSet-04_creator-should-if-known
* subject insert ObligationSet-01_creator-shall-able
* authoredOn insert ObligationSet-01_creator-shall-able
* requester insert ObligationSet-04_creator-should-if-known
* reasonCode insert ObligationSet-03_creator-shall-if-known
* reasonReference insert ObligationSet-03_creator-shall-if-known

