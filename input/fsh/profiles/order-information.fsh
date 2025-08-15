Profile: CZ_ImagingOrderInformation
Parent: ServiceRequest
Id: cz-imagingOrderInformation
Title: "Service Request: Imaging Report (CZ)"
Description: "Order information for the scope of the Czech national interoperability project."

* extension contains $bodySite-reference named bodySite 0..1
* extension[bodySite].valueReference only Reference(BodyStructureCz)
* identifier 0..1

* basedOn only Reference(CZ_CarePlanImage or CarePlan or CZ_ImagingOrderInformation or ServiceRequest or MedicationRequest)
* replaces only Reference(CZ_ImagingOrderInformation or ServiceRequest)

* category 1..

* authoredOn 1..
* occurrenceDateTime
* priority
* patientInstruction

* subject only Reference(CZ_PatientCore or CZ_PatientAnimal)
* insurance only Reference(CZ_Coverage)
* specimen only Reference(CZ_Specimen)
* code
* code.coding from CZ_ImagingProcedureVs (preferred)

* requester only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_OrganizationCore or CZ_PatientCore or CZ_RelatedPersonCore or CZ_DeviceObserver or Device)
* performer only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_OrganizationCore or CareTeam or HealthcareService or CZ_PatientCore or CZ_RelatedPersonCore or CZ_DeviceObserver or Device)
* performer.type from $sct-device-type
* bodySite
* bodySite from $sctBodySite (preferred)
* text 1..
* supportingInfo 0..*
* supportingInfo only Reference(CZ_MedicationStatement or CZ_BodyHeight or CZ_BodyWeight or Condition or CZ_ConditionImage or CZ_AllergyIntolerance or CZ_MedicalDevice or CZ_ObservationImage or CZ_CarePlanImage)
* locationReference only Reference(CZ_LocationCore)
* reasonReference only Reference(CZ_ConditionImage)