Instance: BodyImagingReport2FHIR-cz
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/img/ConceptMap/BodyImagingReport2FHIR-cz"
* name = "BodyImagingReport2FHIRcz"
* title = "CZ Body Model to this guide Map"
* status = #draft
* experimental = true
* description = """CZ Imaging Report Body Model to this guide mapping"""

* group[+].source = "https://hl7.cz/fhir/img/StructureDefinition/InformationAboutOrder"
* group[=].target = "https://hl7.cz/fhir/img/StructureDefinition/cz-imagingOrderInformation"
* group[=].element[+].code = #Body.InformationAboutOrder
* group[=].element[=].display = "A.2.1 and A.2.2 - Information about order"
* group[=].element[=].target.code = #Composition.section:order					
* group[=].element[=].target.display = ""
* group[=].element[=].target.comment = "Composition.section:order.entry.ofType(CZ_ImagingInformationAboutOrder)"	
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #InformationAboutOrder.orderDetail
* group[=].element[=].display = "A.2.1 - Order detail"
* group[=].element[=].target.code = #CZ_ImagingOrderInformation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #InformationAboutOrder.identifier
* group[=].element[=].display = "A.2.1.1 - Identifier of order detail"
* group[=].element[=].target.code = #CZ_ImagingOrderInformation.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #InformationAboutOrder.dateTime
* group[=].element[=].display = "A.2.1.2 - Date and time of the order placement"
* group[=].element[=].target.code = #CZ_ImagingOrderInformation.authoredOn
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #InformationAboutOrder.requestedExecdateTime
* group[=].element[=].display = "A.2.1.3 - Date and time of requested execution"
* group[=].element[=].target.code = #CZ_ImagingOrderInformation.occurrenceDateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #ReasonForAdmission
* group[=].element[=].display = "A.2.2 - Order reason"
* group[=].element[=].target.code = #CZ_ImagingOrderInformation.reasonReference.ofType(CZ_Condition)
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #ReasonForAdmission.problem
* group[=].element[=].display = "A.2.2.1 -  Problem / diagnosis / condition description"
* group[=].element[=].target.code = #CZ_ImagingOrderInformation.reasonReference.ofType(CZ_Condition).code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://hl7.cz/fhir/img/StructureDefinition/ReasonForAdmission"
* group[=].target = "https://hl7.cz/fhir/img/StructureDefinition/cz-imagingOrderInformation"
* group[=].element[+].code = #ReasonForAdmission
* group[=].element[=].display = "A.2.2 - Order reason"
* group[=].element[=].target.code = #Composition.section:clinicalQuestion.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #ReasonForAdmission.problem
* group[=].element[=].display = "A.2.2.1 -  Problem / diagnosis / condition description"
* group[=].element[=].target.code = #Composition.section:clinicalQuestion.entry.ofType(CZ_Condition).code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://hl7.cz/fhir/img/StructureDefinition/SpecimenInformation"
* group[=].target = "https://fhir.hl7cr.eu/core/StructureDefinition/cz-specimen"
* group[=].element[+].code = #Body.SpecimenInformation
* group[=].element[=].display = "A.2.3 - Speciment information"
* group[=].element[=].target.code = #Composition.section:order.specimen				
* group[=].element[=].target.comment = "Composition.section:order.entry.ofType(CZ_ImagingInformationAboutOrder).specimen.ofType(CZ_Specimen)"
* group[=].element[=].target.equivalence = #relatedto	
* group[=].element[+].code = #SpecimenInformation.identifier
* group[=].element[=].display = "A.2.3.1 - Identifier of specimen"
* group[=].element[=].target.code = #CZ_Specimen.identifier
* group[=].element[=].target.display = "Identifier of specimen"
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #SpecimenInformation.species	
* group[=].element[=].display = "A.2.3.2 - Species of animal patient"
* group[=].element[=].target.code = #CZ_Specimen.subject.species
* group[=].element[=].target.display = "Species of animal patient"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.material	
* group[=].element[=].display = "A.2.3.3 - Type of material"
* group[=].element[=].target.code = #CZ_Specimen.type
* group[=].element[=].target.display = "Type of material"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.collectionDate	
* group[=].element[=].display = "A.2.3.4 - Date and time of collection"
* group[=].element[=].target.code = #CZ_Specimen.collection.collectedDateTime
* group[=].element[=].target.display = "Date and time of collection"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.anatomicLocation
* group[=].element[=].display = "A.2.3.5 - Anatomic location"
* group[=].element[=].target.code = #CZ_Specimen.collection.bodySite
* group[=].element[=].target.display = "Anatomic location (body location, laterality) where the material is collected"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.morphology
* group[=].element[=].display = "A.2.3.6 - Morphology"
* group[=].element[=].target.code = #CZ_Specimen.collection.extension:bodySite:bodyStructure.morphology
* group[=].element[=].target.display = "Morphological abnormalities of the anatomical location where the material is taken, for example wound, ulcer."
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.sourceDevice
* group[=].element[=].display = "A.2.3.7 - Source Device"
* group[=].element[=].target.code = #CZ_Specimen.subject.type
* group[=].element[=].target.display = "If the material is not collected directly from the patient but comes from a patient-related object, e.g. a catheter"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.procedure
* group[=].element[=].display = "A.2.3.8 - Collection procedure"
* group[=].element[=].target.code = #CZ_Specimen.collection.method
* group[=].element[=].target.display = "Sampling procedure - for cases where it is relevant to the results."
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SpecimenInformation.receivedDateTime	
* group[=].element[=].display = "A.2.3.9 - Receive Date and time"
* group[=].element[=].target.code = #CZ_Specimen.receivedTime
* group[=].element[=].target.display = "Date and time the Specimen is received by the facility performing the examination."
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://hl7.cz/fhir/img/StructureDefinition/ReportOfImagingMethod"
* group[=].target = "https://hl7.cz/fhir/img/StructureDefinition/cz-study-imaging"
* group[=].element[+].code = #Body.ReportOfImagingMethod.typeOfModality
* group[=].element[=].display = "A.2.4.1 - Modality type"
* group[=].element[=].target.code = #Composition.section:findings.entry.ofType(CZ_StudyImaging).modality
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Body.ReportOfImagingMethod.partOfBody
* group[=].element[=].display = "A.2.4.5 - Body part"
* group[=].element[=].target.code = #CZ_StudyImaging.series.bodySite.ofType(bodyStructure)
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Body.ReportOfImagingMethod.partOfBody.code
* group[=].element[=].display = "A.2.4.5.1 - Body part code"
* group[=].element[=].target.code = #bodyStructure.includedStructure.structure
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Body.ReportOfImagingMethod.partOfBody.laterality
* group[=].element[=].display = "A.2.4.5.2 - Laterality of body part"
* group[=].element[=].target.code = #bodyStructure.includedStructure.laterality
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Body.ReportOfImagingMethod.partOfBody.description
* group[=].element[=].display = "A.2.4.5.2 - Body part description"
* group[=].element[=].target.code = #bodyStructure.description
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://hl7.cz/fhir/img/StructureDefinition/ReportOfImagingMethod"
* group[=].target = "https://hl7.cz/fhir/img/StructureDefinition/cz-conditionImage"
* group[=].element[+].code = #Body.ReportOfImagingMethod.reason
* group[=].element[=].display = "A.2.4.3 - Reason (indication)"
* group[=].element[=].target.code = #Composition.section:procedure.reason 
* group[=].element[=].target.comment = "Composition.section:procedure.reason.ofType(CZ_ConditionImage)"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Body.ReportOfImagingMethod.reason.description
* group[=].element[=].display = "A.2.4.3.1 - Description of the reason"
* group[=].element[=].target.code = #CZ_ConditionImage.code.text 
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Body.ReportOfImagingMethod.reason.classification
* group[=].element[=].display = "A.2.4.3.2 - Classification of reason"
* group[=].element[=].target.code = #CZ_ConditionImage.code.coding 
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://hl7.cz/fhir/img/StructureDefinition/ReportOfImagingMethod"
* group[=].target = "https://hl7.cz/fhir/img/StructureDefinition/cz-conditionImage"
* group[=].element[+].code = #Body.ReportOfImagingMethod.clinicalQuestion
* group[=].element[=].display = "A.2.4.4 - A clinical question in text form"
* group[=].element[=].target.code = #Composition.section:clinicalQuestion.text
* group[=].element[=].target.display = "In text form"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Body.ReportOfImagingMethod.clinicalQuestion
* group[=].element[=].display = "A.2.4.4 - A clinical question in code form"
* group[=].element[=].target.code = #Composition.section:clinicalQuestion.entry.ofType(CZ_Condition).code
* group[=].element[=].target.display = "In code form"
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://hl7.cz/fhir/img/StructureDefinition/ReportOfImagingMethod"
* group[=].target = "https://hl7.cz/fhir/img/StructureDefinition/cz-procedure-imaging"
* group[=].element[+].code = #Body.ReportOfImagingMethod.Procedure
* group[=].element[=].display = "A.2.4.6 - Performance (procedure)"
* group[=].element[=].target.comment = "Composition.section:procedure.entry.ofType(CZ_ProcedureImaging)"				
* group[=].element[=].target.code = #Composition.section:procedure
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Procedure.reason
* group[=].element[=].display = "A.2.4.6.1 - Reason for performance"
* group[=].element[=].target.code = #CZ_ProcedureImaging.reasonReference.display
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Procedure.start
* group[=].element[=].display = "A.2.4.6.2 - Start of the procedure"
* group[=].element[=].target.code = #CZ_ProcedureImaging.performancePeriod.start
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Procedure.end
* group[=].element[=].display = "A.2.4.6.3 - End of the procedure"
* group[=].element[=].target.code = #CZ_ProcedureImaging.performancePeriod.end
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Procedure.performedBy
* group[=].element[=].display = "A.2.4.6.4 - Performed by"
* group[=].element[=].target.code = #CZ_ProcedureImaging.performer
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Procedure.recordedBy
* group[=].element[=].display = "A.2.4.6.5 - Recorded by"
* group[=].element[=].target.code = #CZ_ProcedureImaging.recorder
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Procedure.place
* group[=].element[=].display = "A.2.4.6.6 - Place of performance"
* group[=].element[=].target.code = #CZ_ProcedureImaging.location
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Procedure.anatomicalFocus
* group[=].element[=].display = "A.2.4.6.7 - Anatomical focus of performance"
* group[=].element[=].target.code = #CZ_ProcedureImaging.bodySite.extension[bodyStructure]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Procedure.anatomicalFocus.code
* group[=].element[=].display = "A.2.4.6.7.1 - Body location code"
* group[=].element[=].target.code = #BodyStructure.bodySite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Procedure.anatomicalFocus.laterality
* group[=].element[=].display = "A.2.4.6.7.2 - Laterality of the body location"
* group[=].element[=].target.code = #BodyStructure.laterality
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Procedure.anatomicalFocus.description
* group[=].element[=].display = "A.2.4.6.7.3 - Description of the location on/in the body"
* group[=].element[=].target.code = #BodyStructure.description
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Procedure.complication
* group[=].element[=].display = "A.2.4.6.8 - Complications during the procedure"
* group[=].element[=].target.code = #CZ_ProcedureImaging.complication
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Procedure.complication.code
* group[=].element[=].display = "A.2.4.6.8.1 - Complications formalized"
* group[=].element[=].target.code = #CZ_ProcedureImaging.complication.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Procedure.complication.description
* group[=].element[=].display = "A.2.4.6.8.2 - Description of complications"
* group[=].element[=].target.code = #CZ_ProcedureImaging.complication.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Procedure.comment
* group[=].element[=].display = "A.2.4.6.9 - Comment on the performance (procedure)"
* group[=].element[=].target.code = #CZ_ProcedureImaging.note
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Procedure.comment.author
* group[=].element[=].display = "A.2.4.6.9.1 - Author of the comment"
* group[=].element[=].target.code = #CZ_ProcedureImaging.note.author
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Procedure.comment.text
* group[=].element[=].display = "A.2.4.6.9.2 - Text of the comment"
* group[=].element[=].target.code = #CZ_ProcedureImaging.note.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Procedure.comment.dateTime
* group[=].element[=].display = "A.2.4.6.9.3 - Date and time of the comment"
* group[=].element[=].target.code = #CZ_ProcedureImaging.note.time
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Procedure.usedDevice
* group[=].element[=].display = "A.2.4.6.10 - Used medical device"
* group[=].element[=].target.code = #CZ_ProcedureImaging.used[device]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Procedure.usedDevice.name
* group[=].element[=].display = "A.2.4.6.10.1 - Name of medical device"
* group[=].element[=].target.code = #CZ_ProcedureImaging.used[device].deviceName.name
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Procedure.usedDevice.model
* group[=].element[=].display = "A.2.4.6.10.2 - Medical device model"
* group[=].element[=].target.code = #CZ_ProcedureImaging.used[device].modelNumber
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Procedure.usedDevice.iden
* group[=].element[=].display = "A.2.4.6.10.3 - Medical device ID"
* group[=].element[=].target.code = #CZ_ProcedureImaging.used[device].identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Procedure.usedDevice.type
* group[=].element[=].display = "A.2.4.6.10.4 - Type of medical device"
* group[=].element[=].target.code = #CZ_ProcedureImaging.used[device].type
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Procedure.usedDevice.description
* group[=].element[=].display = "A.2.4.6.10.5 - Description of the medical device"
* group[=].element[=].target.code = #CZ_ProcedureImaging.used[device].note
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Procedure.usedDevice.manufacturer
* group[=].element[=].display = "A.2.4.6.10.6 - Manufacturer of medical device"
* group[=].element[=].target.code = #CZ_ProcedureImaging.used[device].manufacturer
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Procedure.usedDevice.udi
* group[=].element[=].display = "A.2.4.6.10.7 - UDI of the medical device"
* group[=].element[=].target.code = #CZ_ProcedureImaging.used[device].udiCarrier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Procedure.category
* group[=].element[=].display = "A.2.4.6.11 - Performance category (procedures)"
* group[=].element[=].target.code = #CZ_ProcedureImaging.category
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Procedure.code
* group[=].element[=].display = "A.2.4.6.12 - Performance (procedure)"
* group[=].element[=].target.code = #CZ_ProcedureImaging.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Procedure.achievement
* group[=].element[=].display = "A.2.4.6.13 - Achieving a result"
* group[=].element[=].target.code = #CZ_ProcedureImaging.outcome
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Procedure.illnessCode
* group[=].element[=].display = "A.2.4.6.14 - Illness - reason for the procedure"
* group[=].element[=].target.code = #CZ_ProcedureImaging.reasonCode
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Procedure.relatedDevice
* group[=].element[=].display = "A.2.4.6.15 - Resource related"
* group[=].element[=].target.code = #CZ_ProcedureImaging.used[device]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[+].source = "https://hl7.cz/fhir/img/StructureDefinition/ReportOfImagingMethod"
* group[=].target = "https://fhir.hl7cr.eu/core/StructureDefinition/cz-allergyIntolerance"
* group[=].element[+].code = #Body.ReportOfImagingMethod.adverseReaction
* group[=].element[=].display = "A.2.4.8 - Adverse reaction"
* group[=].element[=].target.code = #Composition.section:complications			
* group[=].element[=].target.comment = "Composition.section:findings.entry.ofType(CZ_AdverseEvent)"
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #adverseReaction.reaction
* group[=].element[=].display = "A.2.4.8.1 - Allergy code"
* group[=].element[=].target.code = #CZ_AdverseEvent.event
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #adverseReaction.seriousness
* group[=].element[=].display = "A.2.4.8.2 - Allergy manifestation"
* group[=].element[=].target.code = #CZ_AdverseEvent.seriousness
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #adverseReaction.dateTime
* group[=].element[=].display = "A.2.4.8.3 - Alergy date and time"
* group[=].element[=].target.code = #CZ_AdverseEvent.detected
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #adverseReaction.allergyDescription
* group[=].element[=].display = "A.2.4.8.4 - Alergy description"
* group[=].element[=].target.code = #CZ_AdverseEvent.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://hl7.cz/fhir/img/StructureDefinition/ReportOfImagingMethod"
* group[=].target = "https://hl7.cz/fhir/img/StructureDefinition/cz-MedicationAdministration"
* group[=].element[+].code = #Body.ReportOfImagingMethod.Medication
* group[=].element[=].display = "A.2.4.7 - Medication"
* group[=].element[=].target.code = #Composition.section:procedure.partOf			
* group[=].element[=].target.comment = "Composition.section:procedure.partOf.ofType(CZ_MedicationAdministration)"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Medication.name
* group[=].element[=].display = "A.2.4.7.1 - Administered medicinal product"
* group[=].element[=].target.code = #CZ_MedicationAdministration.medication.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Medication.dosage
* group[=].element[=].display = "A.2.4.7.2 - Dosage"
* group[=].element[=].target.code = #CZ_MedicationAdministration.dosage.dose
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Medication.routeOfAdministration
* group[=].element[=].display = "A.2.4.7.3 - The route of administration of the active substance"
* group[=].element[=].target.code = #CZ_MedicationAdministration.dosage.route
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Medication.dosingDevice
* group[=].element[=].display = "A.2.4.7.4 - Dosing device"
* group[=].element[=].target.code = #CZ_MedicationAdministration.device
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Medication.batchNumber
* group[=].element[=].display = "A.2.4.7.5 - Batch number"
* group[=].element[=].target.code = #CZ_MedicationAdministration.medication.batch.lotNumber
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Medication.dateTimeStart
* group[=].element[=].display = "A.2.4.7.6 - Start date and time"
* group[=].element[=].target.code = #CZ_MedicationAdministration.effectivePeriod.start
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Medication.dateTimeEnd
* group[=].element[=].display = "A.2.4.7.7 - End date and time"
* group[=].element[=].target.code = #CZ_MedicationAdministration.effectivePeriod.end
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Medication.administrator
* group[=].element[=].display = "A.2.4.7.8 - Administrator"
* group[=].element[=].target.code = #CZ_MedicationAdministration.performer
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Medication.reasonForSubmission
* group[=].element[=].display = "A.2.4.7.9 - Reason for submission"
* group[=].element[=].target.code = #CZ_MedicationAdministration.reasonCode
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Medication.comment
* group[=].element[=].display = "A.2.4.7.10 - Comment"
* group[=].element[=].target.code = #CZ_MedicationAdministration.note
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Medication.dateTimeOfEntry
* group[=].element[=].display = "A.2.4.7.11 - Entry date and time"
* group[=].element[=].target.code = #CZ_MedicationAdministration.effectiveDateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://hl7.cz/fhir/img/StructureDefinition/ReportOfImagingMethod"
* group[=].target = "https://hl7.cz/fhir/img/StructureDefinition/cz-diagnostic-report"
* group[=].element[+].code = #resultOfImagingMethod
* group[=].element[=].display = "A.2.4.9 - Result of the imaging method"
* group[=].element[=].target.code = #Composition.extension[diagnosticreport-reference]
* group[=].element[=].target.comment = "Composition.extension[diagnosticreport-reference].ofType(CZ_DiagnosticReport)"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #resultOfImagingMethod.narrativeText
* group[=].element[=].display = "A.2.4.9.1 - Narrative text"
* group[=].element[=].target.code = #CZ_DiagnosticReport.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #resultOfImagingMethod.dateTimeResult
* group[=].element[=].display = "A.2.4.9.3 - Result release date and time"
* group[=].element[=].target.code = #CZ_DiagnosticReport.effectiveDateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #resultOfImagingMethod.author
* group[=].element[=].display = "A.2.4.9.4 - Result author"
* group[=].element[=].target.code = #CZ_DiagnosticReport.performer[author]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #resultOfImagingMethod.conclusion
* group[=].element[=].display = "A.2.4.10 - Conclusion"
* group[=].element[=].target.code = #CZ_DiagnosticReport.conclusionCode
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #resultOfImagingMethod.conclusion.text
* group[=].element[=].display = "A.2.4.10.1 - Conclusion text"
* group[=].element[=].target.code = #CZ_DiagnosticReport.conclusion
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #resultOfImagingMethod.conclusion.code
* group[=].element[=].display = "A.2.4.10.2 - Coded conclusion"
* group[=].element[=].target.code = #CZ_DiagnosticReport.conclusionCode
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #resultOfImagingMethod.textPartsOfDocument
* group[=].element[=].display = "A.2.4.12 - Text parts of the document"
* group[=].element[=].target.code = #CZ_DiagnosticReport.presentedForm
* group[=].element[=].target.display = "This is another representative form of the document, in addition to the PDF version, which must be saved as a text/plain document."
* group[=].element[=].target.equivalence = #relatedto
* group[+].source = "https://hl7.cz/fhir/img/StructureDefinition/ReportOfImagingMethod"
* group[=].target = "https://hl7.cz/fhir/img/StructureDefinition/cz-observation-result-imaging"
* group[=].element[+].code = #resultOfImagingMethod.formalizedText
* group[=].element[=].display = "A.2.4.9.2 - Formalized text"
* group[=].element[=].target.code = #CZ_DiagnosticReport.result
* group[=].element[=].target.comment = "CZ_DiagnosticReport.result.ofType(CZ_ObservationResultImaging)
This option is selected if the finding relates to the overall examination."
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #resultOfImagingMethod.formalizedText
* group[=].element[=].display = "A.2.4.9.2 - Formalized text"
* group[=].element[=].target.code = ##CZ_ObservationResultImaging.partOf
* group[=].element[=].target.comment = "CZ_ObservationResultImaging.partOf.ofType(CZ_ProcedureImaging)
This option is filled in if the finding relates to a specific procedure."
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #resultOfImagingMethod.formalizedText
* group[=].element[=].display = "A.2.4.9.2 - Formalized text"
* group[=].element[=].target.code = #Composition.section:findings.entry.ofType(CZ_ObservationResultImaging)
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #resultOfImagingMethod.formalizedText.note
* group[=].element[=].display = "A.2.4.9.2.1 - Note"
* group[=].element[=].target.code = #CZ_ObservationResultImaging.note
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #resultOfImagingMethod.formalizedText.observationGroup
* group[=].element[=].display = "A.2.4.9.2.2 - Observation (measurement) group"
* group[=].element[=].target.code = #CZ_ObservationResultImaging.hasMember
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #resultOfImagingMethod.formalizedText.observationComponent
* group[=].element[=].display = "A.2.4.9.2.3 - Observation (measurement) component"
* group[=].element[=].target.code = #CZ_ObservationResultImaging.component
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #resultOfImagingMethod.formalizedText.specimen
* group[=].element[=].display = "A.2.4.9.2.4 - Specimen"
* group[=].element[=].target.code = #CZ_ObservationResultImaging.specimen
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #resultOfImagingMethod.formalizedText.referenceRanges
* group[=].element[=].display = "A.2.4.9.2.5 - Reference ranges"
* group[=].element[=].target.code = #CZ_ObservationResultImaging.referenceRange
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #resultOfImagingMethod.formalizedText.reasonForAbsence
* group[=].element[=].display = "A.2.4.9.2.6 - The reason for the absence of a value"
* group[=].element[=].target.code = #CZ_ObservationResultImaging.dataAbsentReason
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #resultOfImagingMethod.formalizedText.observationValue
* group[=].element[=].display = "A.2.4.9.2.7 - Observation value (measurement)"
* group[=].element[=].target.code = #CZ_ObservationResultImaging.value[x]
* group[=].element[=].target.display = "Resulting observation value could be in text, numeric or code form."
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #resultOfImagingMethod.formalizedText.observationValue
* group[=].element[=].display = "A.2.4.9.2.7 - Observation value (measurement) in text form"
* group[=].element[=].target.code = #CZ_ObservationResultImaging.valueString
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #resultOfImagingMethod.formalizedText.observationValue
* group[=].element[=].display = "A.2.4.9.2.7 - Observation value (measurement) in numeric form"
* group[=].element[=].target.code = #CZ_ObservationResultImaging.valueQuanity
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #resultOfImagingMethod.formalizedText.observationValue
* group[=].element[=].display = "A.2.4.9.2.7 - Observation value (measurement) in code form"
* group[=].element[=].target.code = #CZ_ObservationResultImaging.valueCodeableConcept
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #resultOfImagingMethod.formalizedText.interpretation
* group[=].element[=].display = "A.2.4.9.2.8 - Interpretation of the result"
* group[=].element[=].target.code = #CZ_ObservationResultImaging.interpretation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #resultOfImagingMethod.formalizedText.observationMethod
* group[=].element[=].display = "A.2.4.9.2.9 - Observation (measurement) method"
* group[=].element[=].target.code = #CZ_ObservationResultImaging.method
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #resultOfImagingMethod.formalizedText.derivedFrom
* group[=].element[=].display = "A.2.4.9.2.10 - Derived from"
* group[=].element[=].target.code = #CZ_ObservationResultImaging.derivedFrom
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #resultOfImagingMethod.formalizedText.observedBodyPart
* group[=].element[=].display = "A.2.4.9.2.11 - Observed body part"
* group[=].element[=].target.code = #CZ_ObservationResultImaging.bodySite
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #resultOfImagingMethod.formalizedText.observationStatus
* group[=].element[=].display = "A.2.4.9.2.12 - Observation status"
* group[=].element[=].target.code = #CZ_ObservationResultImaging.status
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #resultOfImagingMethod.formalizedText.observationCode
* group[=].element[=].display = "A.2.4.9.2.13 - Observation code"
* group[=].element[=].target.code = #CZ_ObservationResultImaging.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #resultOfImagingMethod.formalizedText.observationCategory
* group[=].element[=].display = "A.2.4.9.2.14 - Observation category"
* group[=].element[=].target.code = #CZ_ObservationResultImaging.category
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #resultOfImagingMethod.formalizedText.observationEquipment
* group[=].element[=].display = "A.2.4.9.2.15 - Observation equipment used"
* group[=].element[=].target.code = #CZ_ObservationResultImaging.device
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #resultOfImagingMethod.formalizedText.dateTimeObservation
* group[=].element[=].display = "A.2.4.9.2.16 - Observation date and time"
* group[=].element[=].target.code = #CZ_ObservationResultImaging.effectiveDateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://hl7.cz/fhir/img/StructureDefinition/ReportOfImagingMethod"
* group[=].target = "https://hl7.cz/fhir/img/StructureDefinition/cz-carePlanImage"
* group[=].element[+].code = #Body.ReportOfImagingMethod.recommendation
* group[=].element[=].display = "A.2.4.11 - Recommendation"
* group[=].element[=].target.code = #Composition.section:recommendation.entry.ofType(CZ_Careplan).description
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://hl7.cz/fhir/img/StructureDefinition/ReportOfImagingMethod"
* group[=].target = "https://hl7.cz/fhir/img/StructureDefinition/cz-composition-imaging"
* group[=].element[+].code = #Body.ReportOfImagingMethod.typeOfImagingMethod
* group[=].element[=].display = "A.2.4.2 - Type of imaging method"
* group[=].element[=].target.code = #Composition.type
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #resultOfImagingMethod.textPartsOfDocument.completeExaminationReport
* group[=].element[=].display = "A.2.4.12.1 - Complete examination report"
* group[=].element[=].target.code = #Composition.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #resultOfImagingMethod.textPartsOfDocument.comments
* group[=].element[=].display = "A.2.4.12.2 - Comments, interpretations and recommendations"
* group[=].element[=].target.code = #Composition.text
* group[=].element[=].target.display = "Add to the Composition.text section as separate div"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #resultOfImagingMethod.narrativeText
* group[=].element[=].display = "A.2.4.9.1 - Narrative text"
* group[=].element[=].target.code = #Composition.section:findings.text
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #resultOfImagingMethod.conclusion.text
* group[=].element[=].display = "A.2.4.10.1 - Conclusion text"
* group[=].element[=].target.code = #Composition.section:impression.text
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #resultOfImagingMethod.conclusion.text
* group[=].element[=].display = "A.2.4.10.2 - Conclusion code"
* group[=].element[=].target.code = #Composition.section:impression.entry.ofType(CZ_ObservationResultImaging).code
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Body.ReportOfImagingMethod.recommendation
* group[=].element[=].display = "A.2.4.11 - Recommendation"
* group[=].element[=].target.code = #Composition.section:recommendation.text
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #adverseReaction.allergyDescription
* group[=].element[=].display = "A.2.4.8.4 - Alergy description"
* group[=].element[=].target.code = #Composition.section:complications.text
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://hl7.cz/fhir/img/StructureDefinition/LinkToRelatedReport"
* group[=].target = "https://hl7.cz/fhir/img/StructureDefinition/cz-study-imaging"
* group[=].element[+].code = #Body.LinkToRelatedReport.documentReference
* group[=].element[=].display = "A.2.5.1 DocumentReference"
* group[=].element[=].target.code = #Composition.section:comparison
* group[=].element[=].target.comment = "Composition.section:comparison.entry.ofType(CZ_StudyImaging)"
* group[=].element[=].target.equivalence = #relatedto
* group[+].source = "https://hl7.cz/fhir/img/StructureDefinition/AttachmentsCz"
* group[=].target = "https://hl7.cz/fhir/img/StructureDefinition/cz-keyImage-documentReference"
* group[=].element[+].code = #AttachmentsCz
* group[=].element[=].display = "A.2.6 - Media (attachments)"
* group[=].element[=].target.code = #Composition.section:findings
* group[=].element[=].target.comment = "Composition.section:findings.entry.ofType(CZ_KeyImageDocumentReference)"
* group[=].element[=].target.equivalence = #relatedto			
* group[=].element[+].code = #AttachmentsCz.created
* group[=].element[=].display = "A.2.6.1 - Date and time of creation"
* group[=].element[=].target.code = #CZ_KeyImageDocumentReference.context.period					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #AttachmentsCz.issued
* group[=].element[=].display = "A.2.6.2 - Date and time of issuances"
* group[=].element[=].target.code = #CZ_KeyImageDocumentReference.date					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #AttachmentsCz.author
* group[=].element[=].display = "A.2.6.3 - Created by"
* group[=].element[=].target.code = #CZ_KeyImageDocumentReference.author					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent										
* group[=].element[+].code = #AttachmentsCz.note
* group[=].element[=].display = "A.2.6.10 - Note"
* group[=].element[=].target.code = #CZ_KeyImageDocumentReference.note				
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #AttachmentsCz.view
* group[=].element[=].display = "A.2.6.11 - View"
* group[=].element[=].target.code = #CZ_KeyImageDocumentReference.extension[view]				
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #AttachmentsCz.modality
* group[=].element[=].display = "A.2.6.12 - Modality"
* group[=].element[=].target.code = #CZ_KeyImageDocumentReference.extension[modality]				
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #AttachmentsCz.device
* group[=].element[=].display = "A.2.6.13 - Device"
* group[=].element[=].target.code = #CZ_KeyImageDocumentReference.author				
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[+].source = "https://hl7.cz/fhir/img/StructureDefinition/DcmMetadata"
* group[=].target = "https://hl7.cz/fhir/img/StructureDefinition/cz-attachment-img"
* group[=].element[+].code = #AttachmentsCz.attachment
* group[=].element[=].display = "A.2.6.9 - Attachment"
* group[=].element[=].target.code = #Composition.section:findings
* group[=].element[=].target.comment = "Composition.section:findings.entry.ofType(CZ_AttachmentImg)"				
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #AttachmentsCz.AttachmentsHeight
* group[=].element[=].display = "A.2.6.5 - Media height"
* group[=].element[=].target.code = #CZ_AttachmentImg.height					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #AttachmentsCz.AttachmentsWidth
* group[=].element[=].display = "A.2.6.6 - Media width"
* group[=].element[=].target.code = #CZ_AttachmentImg.width			
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #AttachmentsCz.AttachmentsFrames
* group[=].element[=].display = "A.2.6.7 - Media frames"
* group[=].element[=].target.code = #CZ_Attachment.frames				
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #AttachmentsCz.recordingDuration
* group[=].element[=].display = "A.2.6.8 - Recording duration"
* group[=].element[=].target.code = #CZ_AttachmentImg.duration				
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #AttachmentsCz.bodyPart
* group[=].element[=].display = "A.2.6.4 - Body part"
* group[=].element[=].target.code = #CZ_AttachmentImg.bodySite					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #AttachmentsCz.AttachmentsType
* group[=].element[=].display = "A.2.6.14 - Attachments type"
* group[=].element[=].target.code = #CZ_AttachmentImg.attachment.contentType				
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[+].source = "https://hl7.cz/fhir/img/StructureDefinition/DcmMetadata"
* group[=].target = "https://hl7.cz/fhir/img/StructureDefinition/cz-study-imaging"
* group[=].element[+].code = #DcmMetadata
* group[=].element[=].display = "A.2.7 - DICOM metadata"
* group[=].element[=].target.code = #Composition.section:imagingstudy
* group[=].element[=].target.comment = "Composition.section:imagingstudy.entry.ofType(CZ_StudyImaging)"
* group[=].element[=].target.equivalence = #equivalent			
* group[=].element[+].code = #DcmMetadata.studyInstanceUID
* group[=].element[=].display = "A.2.7.1 - Study Instance UID"
* group[=].element[=].target.code = #CZ_StudyImaging.identifier[studyInstanceUid]
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #DcmMetadata.studyRelatedSerNumber
* group[=].element[=].display = "A.2.7.2 - Number of Study Related Series"
* group[=].element[=].target.code = #CZ_StudyImaging.numberOfSeries
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #DcmMetadata.studyRelatedInstNumber
* group[=].element[=].display = "A.2.7.3 - Number of Study Related Instances"
* group[=].element[=].target.code = #CZ_StudyImaging.numberOfInstances
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #DcmMetadata.subject
* group[=].element[=].display = "A.2.7.4 - Information about the subject (patient)"
* group[=].element[=].target.code = #CZ_StudyImaging.subject.ofType(CZ_PatientCore)
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #DcmMetadata.requestProcedureId
* group[=].element[=].display = "A.2.7.5 - Requested Procedure ID"
* group[=].element[=].target.code = #CZ_StudyImaging.basedOn.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #DcmMetadata.requestingPhysician
* group[=].element[=].display = "A.2.7.6 - Requesting Physician"
* group[=].element[=].target.code = #CZ_StudyImaging.basedOn.requester
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #DcmMetadata.procedure
* group[=].element[=].display = "A.2.7.7 - Scheduled Procedure Step Description"
* group[=].element[=].target.code = #CZ_StudyImaging.procedureCode
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #DcmMetadata.performingPhysician
* group[=].element[=].display = "A.2.7.8 - Performing Physicians"
* group[=].element[=].target.code = #CZ_StudyImaging.series.performer
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #DcmMetadata.institutionalDepartName
* group[=].element[=].display = "A.2.7.9 - Institutional Department Name"
* group[=].element[=].target.code = #CZ_StudyImaging.series.performer.actor.ofType(CZ_OrganizationCore).name
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #DcmMetadata.series
* group[=].element[=].display = "A.2.7.11 - RT Series information"
* group[=].element[=].target.code = #CZ_StudyImaging.series
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto	
* group[=].element[+].code = #DcmMetadata.series.seriesNumber
* group[=].element[=].display = "A.2.7.11.1 - Series Number"
* group[=].element[=].target.code = #CZ_StudyImaging.series.number
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #DcmMetadata.series.seriesDescription
* group[=].element[=].display = "A.2.7.11.2 - Series Description"
* group[=].element[=].target.code = #CZ_StudyImaging.series.description
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #DcmMetadata.studyDescription
* group[=].element[=].display = "A.2.7.12 - Study Description"
* group[=].element[=].target.code = #CZ_StudyImaging.description
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #DcmMetadata.studyReason
* group[=].element[=].display = "A.2.7.14 - Reason for Study"
* group[=].element[=].target.code = #CZ_StudyImaging.reasonCode
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #DcmMetadata.studyComments
* group[=].element[=].display = "A.2.7.15 - Study Comments"
* group[=].element[=].target.code = #CZ_StudyImaging.note
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #DcmMetadata.studyEndpoint
* group[=].element[=].display = "A.2.7.16 - Study end-point"
* group[=].element[=].target.code = #CZ_StudyImaging.endpoint
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #DcmMetadata.modality
* group[=].element[=].display = "A.2.7.17 - Modality"
* group[=].element[=].target.code = #CZ_StudyImaging.modality
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #DcmMetadata.studyStatus
* group[=].element[=].display = "A.2.7.18 - Study Status"
* group[=].element[=].target.code = #CZ_StudyImaging.status
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #DcmMetadata.accessionNumber
* group[=].element[=].display = "A.2.7.19 - Accession Number"
* group[=].element[=].target.code = #CZ_StudyImaging.basedOn:orderaccession
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #DcmMetadata.studyDateTime
* group[=].element[=].display = "A.2.7.20 - Study Date Time"
* group[=].element[=].target.code = #CZ_StudyImaging.started
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[+].source = "https://hl7.cz/fhir/img/StructureDefinition/DcmMetadata"
* group[=].target = "https://hl7.cz/fhir/img/StructureDefinition/cz-radiationDoseObservation"
* group[=].element[+].code = #DcmMetadata.radiopharmaInfoSeq
* group[=].element[=].display = "A.2.7.10 - Radiopharmaceutical Information Sequence - DICOM tag (0054,0016)"
* group[=].element[=].target.code = #Composition.section:imagingstudy.entry.ofType(CZ_RadiationDoseObservation)
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://hl7.cz/fhir/img/StructureDefinition/DcmMetadata"	
* group[=].element[+].code = #DcmMetadata.studyPhase
* group[=].element[=].display = "A.2.7.13 - Study Phase"
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

	