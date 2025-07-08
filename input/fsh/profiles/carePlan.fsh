Profile: CZ_CarePlanImage
Parent: CarePlan
Id: cz-carePlanImage
Title: "Care plan: Imaging Report (CZ)"
Description: "Care plan for Imaging Report for the scope of the Czech national interoperability project."

* identifier
* title
* description

* subject only Reference(CZ_PatientCore or Group)
* author only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_DeviceObserver or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore or CareTeam)
* contributor only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_DeviceObserver or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore or CareTeam)
* activity.detail.reasonReference only Reference(CZ_ConditionImage or CZ_ObservationResultImaging or CZ_DiagnosticReport or DocumentReference)
* activity.detail.location only Reference(CZ_LocationCore)
* activity.detail.performer only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_OrganizationCore or CareTeam or HealthcareService or CZ_PatientCore or CZ_RelatedPersonCore or Device)