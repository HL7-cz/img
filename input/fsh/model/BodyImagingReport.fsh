Logical: BodyImagingReportCz
Id: BodyImagingReportCz
Title: "A.2 - Imaging Report body data element"
Description: """Imaging Report body data element"""

* insert SetFmmandStatusRule ( 1, draft )

* informationAboutOrder 0..* InformationAboutOrder "A.2.1 - Information about the order" """Information about the order"""
* reasonForAdmission 0..1 ReasonForAdmission "A.2.2 - Reason for Admission" """Reason for Admission"""
* specimenInformation 0..* SpecimenInformation "A.2.3 - Sample information" """Sample information """
* reportOfImagingMethod 1..1 ReportOfImagingMethod "A.2.4 - Report of imaging method" """Report of imaging method"""
* linkToRelatedReport 0..* LinkToRelatedReport "A.2.5 - Link to related report" """Link to related report"""
* attachments 0..* KeyImagesAttachmentCz "A.2.6 - Media (attachments)" """Media (attachments)"""
* dcmMetadata 0..* DcmMetadata "A.2.7 - DICOM metadata" """DICOM metadata"""