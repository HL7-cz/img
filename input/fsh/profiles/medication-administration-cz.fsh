//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:    CZ_MedicationAdministration
Parent:     MedicationAdministration
Id:         cz-MedicationAdministration
Title:      "Medication Administration: Imaging Report (CZ)"
Description: "Czech national profile for a medication administration."
//-------------------------------------------------------------------------------------------
* ^experimental = false
* . ^comment = ""
* ^purpose = "MedicationAdministration is intended for tracking the administration of medications."
* . ^short = "Czech Medication Administration"
* . ^definition = "This profile is derived from the Medication Administration in FHIR, which is a record for tracking the administration of medications."

* identifier 1..
* status
* status from $hl7MedicationAdminStatus
* medication[x]
* medicationReference only Reference(CZ_Medication)
* medicationCodeableConcept from $dlp_lecprip (preferred)

* subject only Reference(CZ_PatientCore or CZ_PatientAnimal or Group)
* performer.actor only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_PatientCore or CZ_RelatedPersonCore or CZ_DeviceObserver)
* reasonReference only Reference(CZ_ConditionImage or CZ_ObservationResultImaging or CZ_DiagnosticReport)
* device only Reference(CZ_DeviceObserver)

* dosage 
  * route 0..1
  * dose 0..1