Logical: ImagingReportCz
Id: ImagingReportCz
Title: "A - Imaging Report"
Description: """Imaging Report"""

* insert SetFmmandStatusRule ( 1, draft )

* header 1..1 HeaderImagingReportCz "A.1 - Imaging Report header data element" """Imaging Report header data element"""
* body 1..1 BodyImagingReportCz "A.2 - Imaging Report body data element" """Imaging Report body data element"""
* presentedForm 1..* PresentedFormCz "A.3 - Presented Form" """Entire report as issued. Various formats could be provided,  pdf format is recommended."""
* attachments 0..* AttachmentsCz "A.4 - Attachments" """Aditional attachment"""