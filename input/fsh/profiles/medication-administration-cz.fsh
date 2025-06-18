//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:    CZ_MedicationAdministration
Parent:     MedicationAdministration
Id:         cz-MedicationAdministration
Title:      "Medication Administration"
Description: "Czech national profile for a medication administration."
//-------------------------------------------------------------------------------------------
* ^experimental = false
* . ^comment = ""
* ^purpose = "MedicationAdministration is intended for tracking the administration of medications."
* . ^short = "Czech Medication Administration"
* . ^definition = "This profile is derived from the Medication Administration in FHIR, which is a record for tracking the administration of medications."

* identifier 1..
* status MS
* status from $hl7MedicationStatementStatus
* medication[x]
* medication[x] only Reference(CZ_Medication) or CodeableConcept
* medicationCodeableConcept from DLPLecivePripravkyCzVs (required)
* dosage 
* dosage only Dosage