Profile: CZ_PatientObligationsImg
Parent: CZ_PatientCore
Id: cz-patient-obl-img
Title:    "Patient: Obligations"
Description: "This profile defines obligations for an human Patient in FHIR for the purpose of this guide."
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* insert SetFmmandStatusRule ( 0, informative)

// TEST OBLIGATIONS  ====>

// Obligations at the element level 
// Server obligations
* identifier insert ObligationSet2
* name.given insert ObligationSet1
* name.family insert ObligationSet1
* birthDate insert ObligationSet2
* extension[patient-nationality] insert ObligationSet3
* gender insert ObligationSet1

* telecom insert ObligationSet3
* address insert ObligationSet3

* generalPractitioner.identifier insert ObligationSet2
//* generalPractitioner.name insert ObligationSet2
//* generalPractitioner.qualification insert ObligationSet3
//* generalPractitioner.telecom insert ObligationSet3

//* link.RelatedPersonCore insert ObligationSet3
//* link.RelatedPersonCore.relationship insert ObligationSet3
//* link.RelatedPersonCore.telecom insert ObligationSet3
