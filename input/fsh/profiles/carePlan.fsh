Profile: CZ_CarePlanImage
Parent: CZ_CarePlanCore
Id: cz-carePlanImage
Title: "Care plan: Imaging Report (CZ)"
Description: "Care plan for Imaging Report for the scope of the Czech national interoperability project."

* identifier
* title
* description

* basedOn only Reference(CZ_CarePlanImage or CZ_CarePlanCore)
* replaces only Reference(CZ_CarePlanImage or CZ_CarePlanCore)
* partOf only Reference(CZ_CarePlanImage or CZ_CarePlanCore)
* subject only Reference(CZ_PatientCore or CZ_PatientAnimal or Group)
* author only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_DeviceObserver or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore or CareTeam)
* contributor only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_DeviceObserver or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore or CareTeam)
* addresses only Reference(CZ_ConditionImage or CZ_ConditionCore)
* activity.reference only Reference(CZ_AppointmentCore or CommunicationRequest or DeviceRequest or CZ_MedicationRequestCore or NutritionOrder or Task or ServiceRequest or VisionPrescription or RequestGroup or CZ_ImagingServiceRequest)
* activity.detail.reasonReference only Reference(CZ_ConditionImage or CZ_ConditionCore or CZ_ObservationResultImaging or CZ_DiagnosticReport or DocumentReference)
* activity.detail.location only Reference(CZ_LocationCore)
* activity.detail.performer only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_OrganizationCore or CareTeam or HealthcareService or CZ_PatientCore or CZ_RelatedPersonCore or CZ_DeviceObserver)
