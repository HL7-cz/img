Profile: CZ_AdverseEvent
Parent: AdverseEvent
Id: cz-adverseEvent
Title: "Adverse event: Imaging Report (CZ)"
Description: "Czech profile for adverse event. "

* insert ImposeProfile($AdverseEvent-eu-img,0)

* subject only Reference(CZ_PatientCore or CZ_PractitionerCore or Group or CZ_RelatedPersonCore)
* location only Reference(CZ_LocationCore)
* recorder only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_PatientCore or CZ_RelatedPersonCore)

* suspectEntity ^slicing.discriminator[+].type = #profile
* suspectEntity ^slicing.discriminator[=].path = "instance"
* suspectEntity ^slicing.ordered = false
* suspectEntity ^slicing.rules = #open
//* suspectEntity.instance 1..
* suspectEntity contains procedure 0..*
* suspectEntity[procedure].instance only Reference(CZ_ProcedureImaging)

* subjectMedicalHistory
  * insert SliceElement( #profile, $this )
* subjectMedicalHistory contains allergy 0..*
* subjectMedicalHistory[allergy]
* subjectMedicalHistory only Reference(CZ_AllergyIntolerance)