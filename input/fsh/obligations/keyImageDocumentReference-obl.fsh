Profile: CZ_KeyImageDocumentReferenceObligationsImg
Parent: CZ_KeyImageDocumentReference
Id: cz-keyImageDocumentReference-obl-img
Title:    "Key Image Document Reference: Obligations"
Description: "This profile defines obligations for a key image document reference in FHIR for the purpose of this guide."

* date insert OblCreator(#SHOULD:able-to-populate,L2)
* context.period insert OblCreator(#SHOULD:able-to-populate,L2)
* author insert OblCreator(#SHOULD:able-to-populate,L2)
* content[content].attachment insert OblCreator(#SHOULD:able-to-populate,L2)
* extension[note] insert OblCreator(#SHOULD:able-to-populate,L2)
* extension[view] insert OblCreator(#SHOULD:able-to-populate,L2)
* extension[modality] insert OblCreator(#SHOULD:able-to-populate,L2)

* date insert OblCreator(#SHALL:able-to-populate,L3)
* context.period insert OblCreator(#SHALL:able-to-populate,L3)
* author insert OblCreator(#SHALL:able-to-populate,L3)
* content[content].attachment insert OblCreator(#SHALL:able-to-populate,L3)
* extension[note] insert OblCreator(#SHALL:able-to-populate,L3)
* extension[view] insert OblCreator(#SHALL:able-to-populate,L3)
* extension[modality] insert OblCreator(#SHALL:able-to-populate,L3)

* date insert OblConsumer(#SHOULD:display,L2)
* context.period insert OblConsumer(#SHOULD:display,L2)
* author insert OblConsumer(#SHOULD:display,L2)
* content[content].attachment insert OblConsumer(#SHOULD:display,L2)
* extension[note] insert OblConsumer(#SHOULD:display,L2)
* extension[view] insert OblConsumer(#SHOULD:display,L2)
* extension[modality] insert OblConsumer(#SHOULD:display,L2)

* date insert OblConsumer(#SHALL:display,L3)
* context.period insert OblConsumer(#SHALL:display,L3)
* author insert OblConsumer(#SHALL:display,L3)
* content[content].attachment insert OblConsumer(#SHALL:display,L3)
* extension[note] insert OblConsumer(#SHALL:display,L3)
* extension[view] insert OblConsumer(#SHALL:display,L3)
* extension[modality] insert OblConsumer(#SHALL:display,L3)
