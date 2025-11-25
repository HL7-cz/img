Profile: CZ_DiagnosticReportObligationsImg
Parent: CZ_DiagnosticReport
Id: cz-diagnosticReport-obl-img
Title:    "Diagnostic Report: Obligations"
Description: "This profile defines obligations for a diagnostic report in FHIR for the purpose of this guide."
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"



* presentedForm insert OblCreator(#SHALL:able-to-populate,L1)

* text insert OblCreator(#SHALL:able-to-populate,L2)
* effectiveDateTime insert OblCreator(#SHALL:populate-if-known,L2)
* performer insert OblCreator(#SHALL:able-to-populate,L2)
* conclusion insert OblCreator(#SHALL:able-to-populate,L2)
* conclusionCode insert OblCreator(#SHOULD:able-to-populate,L2)
* result insert OblCreator(#SHOULD:able-to-populate,L2)
* presentedForm insert OblCreator(#SHALL:able-to-populate,L2)
* media insert OblCreator(#SHOULD:able-to-populate,L2)

* text insert OblCreator(#SHALL:able-to-populate,L3)
* effectiveDateTime insert OblCreator(#SHALL:populate-if-known,L3)
* performer insert OblCreator(#SHALL:able-to-populate,L3)
* conclusion insert OblCreator(#SHALL:able-to-populate,L3)
* conclusionCode insert OblCreator(#SHALL:able-to-populate,L3)
* result insert OblCreator(#SHALL:able-to-populate,L3)
* presentedForm insert OblCreator(#SHALL:able-to-populate,L3)
* media insert OblCreator(#SHALL:able-to-populate,L3)

* presentedForm insert OblConsumer(#SHALL:display,L1)

* text insert OblCreator(#SHALL:display,L2)
* effectiveDateTime insert OblCreator(#SHALL:display,L2)
* performer insert OblCreator(#SHALL:display,L2)
* conclusion insert OblCreator(#SHALL:display,L2)
* conclusionCode insert OblCreator(#SHOULD:display,L2)
* result insert OblCreator(#SHOULD:display,L2)
* presentedForm insert OblConsumer(#SHALL:display,L2)
* media insert OblConsumer(#SHOULD:display,L2)

* text insert OblCreator(#SHALL:display,L3)
* effectiveDateTime insert OblCreator(#SHALL:display,L3)
* performer insert OblCreator(#SHALL:display,L3)
* conclusion insert OblCreator(#SHALL:display,L3)
* conclusionCode insert OblCreator(#SHALL:display,L3)
* result insert OblCreator(#SHALL:display,L3)
* presentedForm insert OblConsumer(#SHALL:display,L3)
* media insert OblConsumer(#SHALL:display,L3)
