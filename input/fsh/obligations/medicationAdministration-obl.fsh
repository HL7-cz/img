Profile: CZ_MedicationAdministrationObligationsImg
Parent: CZ_MedicationAdministration
Id: cz-medicationAdministration-obl-img
Title:    "Medication: Obligations"
Description: "This profile defines obligations for a medication administration in FHIR for the purpose of this guide."
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* insert SetFmmandStatusRule ( 0, informative)

* medicationReference insert OblCreator(#SHALL:able-to-populate,L2)
* dosage insert OblCreator(#SHOULD:able-to-populate,L2)
* effective[x] insert OblCreator(#SHOULD:able-to-populate,L2)
* device insert OblCreator(#SHOULD:able-to-populate,L2)
* note insert OblCreator(#SHOULD:able-to-populate,L2)
* reasonCode insert OblCreator(#SHOULD:able-to-populate,L2)
* performer insert OblCreator(#SHOULD:able-to-populate,L2)

* medicationReference insert OblCreator(#SHALL:able-to-populate,L3)
* dosage insert OblCreator(#SHALL:able-to-populate,L3)
* effective[x] insert OblCreator(#SHALL:able-to-populate,L3)
* device insert OblCreator(#SHALL:able-to-populate,L3)
* note insert OblCreator(#SHALL:able-to-populate,L3)
* reasonCode insert OblCreator(#SHALL:able-to-populate,L3)
* performer insert OblCreator(#SHALL:able-to-populate,L3)

* medicationReference insert OblConsumer(#SHALL:display,L2)
* dosage insert OblConsumer(#SHOULD:display,L2)
* effective[x] insert OblConsumer(#SHOULD:display,L2)
* device insert OblConsumer(#SHOULD:display,L2)
* note insert OblConsumer(#SHOULD:display,L2)
* reasonCode insert OblConsumer(#SHOULD:display,L2)
* performer insert OblConsumer(#SHOULD:display,L2)

* medicationReference insert OblConsumer(#SHALL:display,L3)
* dosage insert OblConsumer(#SHALL:display,L3)
* effective[x] insert OblConsumer(#SHALL:display,L3)
* device insert OblConsumer(#SHALL:display,L3)
* note insert OblConsumer(#SHALL:display,L3)
* reasonCode insert OblConsumer(#SHALL:display,L3)
* performer insert OblConsumer(#SHALL:display,L3)
