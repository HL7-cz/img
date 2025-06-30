Profile: CZ_DiagnosticReportObligationsImg
Parent: CZ_DiagnosticReport
Id: cz-diagnosticReport-obl-img
Title:    "Diagnostic Report (Imaging Report): Obligations"
Description: "This profile defines obligations for an Diagnostic report in FHIR for the purpose of this guide."
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* insert SetFmmandStatusRule ( 0, informative)

* text insert ObligationSet-01_creator-shall-able
* effectiveDateTime insert ObligationSet-03_creator-shall-if-known
* performer insert ObligationSet-03_creator-shall-if-known
* conclusion insert ObligationSet-01_creator-shall-able
* conclusionCode insert ObligationSet-04_creator-should-if-known
* extension[composition] insert ObligationSet-02_creator-should-able
* status insert ObligationSet-02_creator-should-able
* category insert ObligationSet-02_creator-should-able
* code insert ObligationSet-02_creator-should-able
* subject insert ObligationSet-02_creator-should-able
* presentedForm insert ObligationSet-01_creator-shall-able