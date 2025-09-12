Profile: CZ_RadiationDoseObservationObligationsImg
Parent: CZ_RadiationDoseObservation
Id: cz-radiationDoseObservation-obl-img
Title:    "Radiation Dose Observation: Obligations"
Description: "This profile defines obligations for a radiation dose observation in FHIR for the purpose of this guide."

* valueString insert OblCreator(#SHOULD:populate-if-known,L2)
* component insert OblCreator(#SHOULD:populate-if-known,L2)

* valueString insert OblCreator(#SHALL:populate-if-known,L3)
* component insert OblCreator(#SHALL:populate-if-known,L3)

* valueString insert OblConsumer(#SHOULD:display,L2)
* component insert OblConsumer(#SHOULD:display,L2)

* valueString insert OblConsumer(#SHOULD:display,L3)
* component insert OblConsumer(#SHOULD:display,L3)