Profile: CZ_ProcedureImaging
Parent: Procedure
Id: cz-procedure-imaging
Title: "Procedure: Imaging Report (CZ)"
Description: "This profile on Procedure represents the imaging procedure for the scope of the Czech national interoperability project."

* insert ImposeProfile($Procedure-eu-img,0)

* code 1..1
* code from CZ_ProcedureTypeVs (extensible)

* basedOn only Reference(CZ_CarePlanImage or CZ_ImagingOrderInformation)
* partOf only Reference(Procedure or CZ_ProcedureImaging or Observation or CZ_ObservationResultImaging or MedicationAdministration or CZ_MedicationAdministration)
* subject only Reference(CZ_PatientCore or CZ_PatientAnimal or Group)
* recorder only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_PatientCore or CZ_RelatedPersonCore)
* asserter only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_PatientCore or CZ_RelatedPersonCore)

* performer 0..*
  * insert SliceElementWithDescription( #value, function, [[Different performers can be added to the procedure.]] )
  * function 1..1
  * actor only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_OrganizationCore or CZ_PatientCore or CZ_RelatedPersonCore or CZ_DeviceObserver or CZ_MedicalDevice)
  * onBehalfOf only Reference(CZ_OrganizationCore)
* performer contains performer 0..* and imaging-device 0..*
* performer[performer]
  * function
    * coding
      * insert SliceElement( #value, "$this" )
    * coding contains healthcare-professional 0..1
    * coding[healthcare-professional] = $sct#223366009 "Healthcare professional" // TODO check this code
  * actor only Reference(CZ_PractitionerRoleCore)
  * onBehalfOf only Reference(CZ_OrganizationCore)
* performer[imaging-device]
  * function
    * coding
      * insert SliceElement( #value, "$this" )
    * coding contains imaging-equipment 0..1
    * coding[imaging-equipment] = $sct#314789007 "Diagnostic imaging equipment" // TODO check this code
  * actor only Reference(CZ_DeviceObserver or CZ_MedicalDevice)
  * onBehalfOf only Reference(CZ_OrganizationCore)

* location only Reference(CZ_LocationCore)
* reasonReference only Reference(CZ_ConditionImage or CZ_ObservationImage or CZ_ProcedureImaging or Procedure or CZ_DiagnosticReport or DocumentReference)
* report only Reference(CZ_DiagnosticReport or DocumentReference or Composition or CZ_CompositionImagingReport)
* complicationDetail only Reference(CZ_ConditionImage)
* focalDevice.manipulated only Reference(CZ_DeviceObserver or CZ_MedicalDevice)
* usedReference only Reference(CZ_DeviceObserver or CZ_MedicalDevice or CZ_Medication or Substance)

  