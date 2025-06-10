Logical: BodyImagingReportCz
Id: BodyImagingReportCz
Title: "A.2 - Imaging Report body data element"
Description: """Imaging Report body data element"""

* insert SetFmmandStatusRule ( 1, draft )

* presentedForm 0..1 BackboneElement "A.2.0 - Imaging Report in its narrative form" """Imaging Report in its narrative form"""
* informationAboutOrder 0..* InformationAboutOrder "A.2.1 - Information about the order" """Information about the order"""
* reasonForAdmission 0..1 ReasonForAdmission "A.2.2 - Reason for Admission" """Reason for Admission"""
* sampleInformation 0..* SampleInformation "A.2.3 - Sample information" """Sample information """
* reportOfImagingMethod 1..1 ReportOfImagingMethod "A.2.4 - Report of imaging method" """Report of imaging method"""
* linkToRelatedReport 0..* LinkToRelatedReport "A.2.5 - Link to related report" """Link to related report"""
* attachments 0..* Attachments "A.2.6 - Media (attachments)" """Media (attachments)"""
* DICOMMetadata 0..* DICOMMetadata "A.2.7 - DICOM metadata" """DICOM metadata"""