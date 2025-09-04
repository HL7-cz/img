Profile: CZ_AdverseEventObligationsImg
Parent: AdverseEvent
Id: cz-adverseEvent-obl-img
Title:    "Adverse Event: Obligations"
Description: "This profile defines obligations for an adverse event in FHIR for the purpose of this guide."
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* insert SetFmmandStatusRule ( 0, informative)

* suspectEntity insert OblCreator(#SHOULD:able-to-populate,L2)
* seriousness insert OblCreator(#SHOULD:able-to-populate,L2)
* detected insert OblCreator(#SHOULD:able-to-populate,L2)
* text insert OblCreator(#SHALL:able-to-populate,L2)

* suspectEntity insert OblCreator(#SHALL:able-to-populate,L3)
* seriousness insert OblCreator(#SHALL:able-to-populate,L3)
* detected insert OblCreator(#SHALL:able-to-populate,L3)
* text insert OblCreator(#SHALL:able-to-populate,L3)

* suspectEntity insert OblConsumer(#SHOULD:display,L2)
* seriousness insert OblConsumer(#SHOULD:display,L2)
* detected insert OblConsumer(#SHOULD:display,L2)
* text insert OblConsumer(#SHALL:display,L2)

* suspectEntity insert OblConsumer(#SHALL:display,L3)
* seriousness insert OblConsumer(#SHALL:display,L3)
* detected insert OblConsumer(#SHALL:display,L3)
* text insert OblConsumer(#SHALL:display,L3)

