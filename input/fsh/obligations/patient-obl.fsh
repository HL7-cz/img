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
* identifier insert ObligationSet-02_author-should
* identifier.system insert ObligationSet-05_server-shall-02
* identifier.value insert ObligationSet-05_server-shall-02
* name.given insert ObligationSet-01_author-shall
* name.family insert ObligationSet-01_author-shall
* birthDate insert ObligationSet-02_author-should
* extension[patient-nationality] insert ObligationSet-03_author-may
* gender insert ObligationSet-01_author-shall

* telecom insert ObligationSet-03_author-may
* address insert ObligationSet-03_author-may

* generalPractitioner.identifier insert ObligationSet-02_author-should
//* generalPractitioner.name insert ObligationSet-02_author-should
//* generalPractitioner.qualification insert ObligationSet-03_author-may
//* generalPractitioner.telecom insert ObligationSet-03_author-may

//* link.RelatedPersonCore insert ObligationSet-03_author-may
//* link.RelatedPersonCore.relationship insert ObligationSet-03_author-may
//* link.RelatedPersonCore.telecom insert ObligationSet-03_author-may
