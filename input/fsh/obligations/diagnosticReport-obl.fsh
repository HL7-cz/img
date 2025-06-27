Profile: CZ_DiagnosticReportObligationsImg
Parent: CZ_DiagnosticReport
Id: cz-diagnosticReport-obl-img
Title:    "Diagnostic Report (Imaging Report): Obligations"
Description: "This profile defines obligations for an Diagnostic report in FHIR for the purpose of this guide."
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* insert SetFmmandStatusRule ( 0, informative)

* text insert ObligationSet-01_author-shall
* effectiveDateTime insert ObligationSet-12_server-may-03
* performer insert ObligationSet-12_server-may-03
* conclusion insert ObligationSet-01_author-shall
* conclusionCode insert ObligationSet-03_author-may
* extension[composition] insert ObligationSet-09_server-should-03
* status insert ObligationSet-09_server-should-03
* category insert ObligationSet-09_server-should-03
* code insert ObligationSet-09_server-should-03
* subject insert ObligationSet-09_server-should-03
* presentedForm insert ObligationSet-08_server-should-02