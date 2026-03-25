Instance: AttachmentImagingReport2FHIR-cz
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/img/ConceptMap/AttachmentImagingReport2FHIR-cz"
* name = "AttachmentImagingReport2FHIRcz"
* title = "CZ Attachment Model to this guide Map"
* status = #draft
* experimental = true
* description = """CZ Imaging Report Attachment Model to this guide mapping"""

* group[+].source = "https://hl7.cz/fhir/img/StructureDefinition/PresentedFormCz"
* group[=].target = "https://hl7.cz/fhir/img/StructureDefinition/cz-diagnostic-report"	
* group[=].element[+].code = #PresentedFormCz
* group[=].element[=].display = "A.3 - Presented Form"
* group[=].element[=].target.code = #DiagnosticReport.presentedForm
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[+].source = "https://hl7.cz/fhir/img/StructureDefinition/PresentedFormCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-presented-form"				
* group[=].element[+].code = #PresentedFormCz.presentedForm.contentType
* group[=].element[=].display = "A.3.1 - Content type of presented form"
* group[=].element[=].target.code = #DocumentReference.content.attachment.contentType					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #PresentedFormCz.presentedForm.language
* group[=].element[=].display = "A.3.2 - Language of presented form"
* group[=].element[=].target.code = #DocumentReference.content.attachment.language					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent		
* group[=].element[+].code = #PresentedFormCz.presentedForm.data
* group[=].element[=].display = "A.3.3 - Data of presented form"
* group[=].element[=].target.code = #DocumentReference.content.attachment.data					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent				
* group[=].element[+].code = #PresentedFormCz.presentedForm.url
* group[=].element[=].display = "A.3.4 - URL of presented form"
* group[=].element[=].target.code = #DocumentReference.content.attachment.url					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #PresentedFormCz.presentedForm.title
* group[=].element[=].display = "A.3.5 - Title of presented form"
* group[=].element[=].target.code = #DocumentReference.content.attachment.title					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #PresentedFormCz.presentedForm.creation
* group[=].element[=].display = "A.3.6 - Date and time of creation"
* group[=].element[=].target.code = #DocumentReference.content.attachment.creation				
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	

* group[+].source = "https://hl7.cz/fhir/img/StructureDefinition/AttachmentsCz"
* group[=].target = "https://hl7.cz/fhir/img/StructureDefinition/cz-diagnostic-report"	
* group[=].element[+].code = #AttachmentsCz
* group[=].element[=].display = "A.4 - AttachmentsCz"
* group[=].element[=].target.code = #DiagnosticReport.media.link
* group[=].element[=].target.display = "If it is additional MEDIA attachments"
* group[=].element[=].target.equivalence = #relatedto		
* group[+].source = "https://hl7.cz/fhir/img/StructureDefinition/AttachmentsCz"
* group[=].target = "https://hl7.cz/fhir/img/StructureDefinition/cz-media-img"			
* group[=].element[+].code = #AttachmentsCz.contentType
* group[=].element[=].display = "A.4.1 - Content type of media attachments"
* group[=].element[=].target.code = #Media.content.contentType					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #AttachmentsCz.language
* group[=].element[=].display = "A.4.2 - Language of media attachments"
* group[=].element[=].target.code = #Media.content.language					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #AttachmentsCz.data
* group[=].element[=].display = "A.4.3 - Data of media attachments"
* group[=].element[=].target.code = #Media.content.data					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #AttachmentsCz.url
* group[=].element[=].display = "A.4.4 - URL of media attachments"
* group[=].element[=].target.code = #Media.content.url					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #AttachmentsCz.title
* group[=].element[=].display = "A.4.5 - Title of media attachments"
* group[=].element[=].target.code = #Media.content.title					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #AttachmentsCz.creation
* group[=].element[=].display = "A.4.6 - Date and time of creation"
* group[=].element[=].target.code = #Media.content.creation				
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	