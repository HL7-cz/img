Profile: CZ_Attachment
Parent: Media
Id: cz-attachment
Title: "Attachment: Imaging Report (CZ)"
Description: "Czech profile for attachment. "

* . ^short = "Imaging Report"
* . ^definition = "Imaging Report composition."

* insert SetFmmandStatusRule ( 0, draft )

* content
* content.contentType MS
* content.language MS
* content.url MS
* content.title MS
* content.creation MS

* basedOn only Reference(CZ_ImagingOrderInformation or CarePlan)
* subject only Reference(CZ_PatientCore or CZ_PractitionerCore or CZ_PractitionerRoleCore or Group or CZ_DeviceObserver or CZ_MedicalDevice or CZ_Specimen or CZ_LocationCore)
* operator only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_OrganizationCore or CareTeam or CZ_PatientCore or CZ_RelatedPersonCore or Device)
* device only Reference(CZ_DeviceObserver or CZ_MedicalDevice or DeviceMetric or Device)