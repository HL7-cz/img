Instance: BodyImagingReport2FHIR-cz
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/img/ConceptMap/BodyImagingReport2FHIR-cz"
* name = "BodyImagingReport2FHIRcz"
* title = "CZ Body Model to this guide Map"
* status = #draft
* experimental = true
* description = """CZ Imaging Report Body Model to this guide mapping"""

* group[+].source = "https://hl7.cz/fhir/img-order/StructureDefinition/InformationAboutOrderCz"
* group[=].target = "https://hl7.cz/fhir/img-order/StructureDefinition/cz-imagingInformationAboutOrder"
* group[=].element[+].code = #Body.InformationAboutOrder
* group[=].element[=].display = "A.2.1 and A.2.2 - Information about order"
* group[=].element[=].target.code = #Composition.section:InformationAboutOrder					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "#Composition.InformationAboutOrder.entry.ofType(CZ_ImagingInformationAboutOrder)"	
* group[=].element[+].code = #InformationAboutOrder.orderDetail
* group[=].element[=].display = "A.2.1 - Order detail"
* group[=].element[=].target.code = #CZ_ImagingInformationAboutOrder
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #InformationAboutOrder.identifier
* group[=].element[=].display = "A.2.1.1 - Identifier of order detail"
* group[=].element[=].target.code = #CZ_ImagingInformationAboutOrder.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #InformationAboutOrder.dateTime
* group[=].element[=].display = "A.2.1.2 - Date and time of the order placement"
* group[=].element[=].target.code = #CZ_ImagingInformationAboutOrder.authoredOn
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #InformationAboutOrder.requestedExecdateTime
* group[=].element[=].display = "A.2.1.3 - Date and time of requested execution"
* group[=].element[=].target.code = #CZ_ImagingInformationAboutOrder.occurrenceDateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://hl7.cz/fhir/img-order/StructureDefinition/ReasonForAdmission"
* group[=].target = "https://hl7.cz/fhir/img-order/StructureDefinition/cz-imagingInformationAboutOrder"
* group[=].element[+].code = #ReasonForAdmission
* group[=].element[=].display = "A.2.2 - Order reason"
* group[=].element[=].target.code = #CZ_ImagingInformationAboutOrder.reasonCode
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "#CZ_ImagingInformationAboutOrder.reasonReference.ofType(CZ_ConditionImage)"
* group[=].element[+].code = #ReasonForAdmission.problem
* group[=].element[=].display = "A.2.2.1 -  Problem / diagnosis / condition description"
* group[=].element[=].target.code = #CZ_ImagingInformationAboutOrder.reasonCode.coding
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://hl7.cz/fhir/img-order/StructureDefinition/SpecimenInformationCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-specimen"
* group[=].element[+].code = #Body.SpecimenInformation
* group[=].element[=].display = "A.2.3 - Speciment information"
* group[=].element[=].target.code = #Composition.section:OrderInformation.specimen.ofType(CZ_Specimen)				
* group[=].element[=].target.display = ""
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
* group[=].element[=].target.code = #CZ_Specimen.collection.collectionDate
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
* group[=].element[=].target.code = #CZ_Specimen.collection.collectionDate
* group[=].element[=].target.display = "Date and time the Specimen is received by the facility performing the examination."
* group[=].element[=].target.equivalence = #equivalent
//mapping report
//* group[+].source = "https://hl7.cz/fhir/img-order/StructureDefinition/ReportOfImagingMethod"
//* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-diagnostic-report"

* group[+].source = "https://hl7.cz/fhir/img-order/StructureDefinition/ReportOfImagingMethod"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-MedicationStatement"
* group[=].element[+].code = #Body.ReportOfImagingMethod.Medication
* group[=].element[=].display = "A.2.4.6 - Medication"
* group[=].element[=].target.code = #Composition.section:Procedure.used.ofType(CZ_Medication)			
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Medication.name
* group[=].element[=].display = "A.2.4.6.1 - Name of medication"
* group[=].element[=].target.code = #CZ_Medication.code
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	

