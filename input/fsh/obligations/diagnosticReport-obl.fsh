Profile: CZ_DiagnosticReportObligationsImg
Parent: CZ_DiagnosticReport
Id: cz-diagnosticReport-obl-img
Title:    "Diagnostic Report (Imaging Report): Obligations"
Description: "This profile defines obligations for an Diagnostic report in FHIR for the purpose of this guide."
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* insert SetFmmandStatusRule ( 0, informative)

* presentedForm insert OblCreator(#SHALL:able-to-populate,L1)
* media insert OblCreator(#SHOULD:able-to-populate,L1)

* presentedForm insert OblCreator(#SHALL:able-to-populate,L2)
* media insert OblCreator(#SHOULD:able-to-populate,L2)

* presentedForm insert OblCreator(#SHALL:able-to-populate,L3)
* media insert OblCreator(#SHALL:able-to-populate,L3)

* presentedForm insert OblConsumer(#SHALL:display,L1)
* media insert OblConsumer(#SHOULD:display,L1)

* presentedForm insert OblConsumer(#SHALL:display,L2)
* media insert OblConsumer(#SHOULD:display,L2)

* presentedForm insert OblConsumer(#SHALL:display,L3)
* media insert OblConsumer(#SHALL:display,L3)
