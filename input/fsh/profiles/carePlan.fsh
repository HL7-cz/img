Profile: CZ_CarePlanImage
Parent: CarePlan
Id: cz-carePlanImage
Title: "Care plan: Imaging Report (CZ)"
Description: "Care plan for Imaging Report for the scope of the Czech national interoperability project."

* identifier
* title
* description

* basedOn only Reference(CZ_CarePlanImage or CarePlan)
* replaces only Reference(CZ_CarePlanImage or CarePlan)
* partOf only Reference(CZ_CarePlanImage or CarePlan)
* subject only Reference(CZ_PatientCore or Group)
* author only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_DeviceObserver or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore or CareTeam)
* contributor only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_DeviceObserver or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore or CareTeam)
* addresses only Reference(CZ_ConditionImage or Condition)
* activity.reference only Reference(Appointment or CommunicationRequest or DeviceRequest or MedicationRequest or NutritionOrder or Task or ServiceRequest or VisionPrescription or RequestGroup or CZ_ImagingOrderInformation)
* activity.detail.reasonReference only Reference(CZ_ConditionImage or CZ_ObservationResultImaging or CZ_DiagnosticReport or DocumentReference)
* activity.detail.location only Reference(CZ_LocationCore)
* activity.detail.performer only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_OrganizationCore or CareTeam or HealthcareService or CZ_PatientCore or CZ_RelatedPersonCore or CZ_DeviceObserver or CZ_MedicalDevice)