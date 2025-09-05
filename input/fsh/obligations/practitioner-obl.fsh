Profile: CZ_PractitionerObligationsImg
Parent: CZ_PractitionerCore
Id: cz-practitioner-obl-img
Title:    "Practitioner: Obligations"
Description: "This profile defines obligations for a practitioner in FHIR for the purpose of this guide."

* insert SetFmmandStatusRule ( 0, informative)

// L2
* identifier insert OblCreator(#SHALL:populate-if-known,L2)
* name insert OblCreator(#SHALL:able-to-populate,L2)
* telecom insert OblCreator(#SHOULD:able-to-populate,L2)
* address insert OblCreator(#SHOULD:able-to-populate,L2)

// L2
* identifier insert OblConsumer(#SHALL:display,L2)
* name insert OblConsumer(#SHALL:display,L2)
* telecom insert OblConsumer(#SHOULD:display,L2)
* address insert OblConsumer(#SHOULD:display,L2)

// L3
* identifier insert OblCreator(#SHALL:populate-if-known,L3)
* name insert OblCreator(#SHALL:able-to-populate,L3)
* telecom insert OblCreator(#SHOULD:able-to-populate,L3)
* address insert OblCreator(#SHOULD:able-to-populate,L3)

// L3
* identifier insert OblConsumer(#SHALL:display,L3)
* name insert OblConsumer(#SHALL:display,L3)
* telecom insert OblConsumer(#SHOULD:display,L3)
* address insert OblConsumer(#SHOULD:display,L3)