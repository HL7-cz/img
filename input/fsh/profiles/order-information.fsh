Profile: CZ_ImagingOrderInformation
Parent: ServiceRequest
Id: cz-imagingOrderInformation
Title: "Service Request: Imaging Report (CZ)"
Description: "Order information for the scope of the Czech national interoperability project."

* identifier 1..
* category 1..

* authoredOn 1..
* occurrenceDateTime 
* priority
* patientInstruction

* subject only Reference(CZ_PatientCore)
* insurance only Reference(CZ_Coverage)
* specimen only Reference(CZ_Specimen)
* code 
* code.coding from CZ_ImagingProcedureVs (preferred)

* performer only Reference(CZ_DeviceObserver)
* performer.type from $sct-device-type
* bodySite
* bodySite from $sctBodySite (preferred)
* text 1..
* supportingInfo 0..*
* supportingInfo only Reference(CZ_MedicationStatement or CZ_BodyHeight or CZ_BodyWeight or Condition or CZ_AllergyIntolerance or CZ_MedicalDevice or CZ_ObservationImage or CZ_CarePlanImage)
* reasonReference only Reference(CZ_ConditionImage)