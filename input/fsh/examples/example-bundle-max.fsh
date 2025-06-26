Instance: cz-examplemri-bundle
InstanceOf: CZ_BundleImagingReport
Title: "Bundle: PET+CT Patient Jana Example"
Description: "Example of Imaging report (Bundle) including a PET+CT report"
Usage: #example
* identifier[+].system = "http://example.org"
* identifier[=].value = "CZEXIR0002"
* type = #document
* timestamp = "2025-06-21T12:02:00+01:00"

* entry[composition][0].fullUrl = "urn:uuid:a84899f0-a241-4f15-b5fd-47e8c9dbdc35"
* entry[composition][=].resource = cz-examplemri-composition

* entry[patient][+].fullUrl = "urn:uuid:2ccb472f-5747-4939-a119-5597835ad7da"
* entry[patient][=].resource = cz-examplemri-patient

* entry[serviceRequest][+].fullUrl = "urn:uuid:5be5b9c2-5ca6-4f2e-b3e2-47dc9b334a22"
* entry[serviceRequest][=].resource = cz-examplemri-order

* entry[clinicalQuestion][+].fullUrl = "urn:uuid:9ee22843-2526-436f-bf66-3f9874869c08"
* entry[clinicalQuestion][=].resource = cz-examplemri-clinicalQuestion

* entry[imagingStudy][+].fullUrl = "urn:uuid:e132f687-df35-4174-91bd-fe74cda5ac5d"
* entry[imagingStudy][=].resource = cz-examplemri-imagingStudy

* entry[procedure][+].fullUrl = "urn:uuid:74820e62-42c2-4a39-9ded-251f3b8a58d0"
* entry[procedure][=].resource = cz-examplemri-procedure

* entry[allergyIntolerance][+].fullUrl = "urn:uuid:0bd84e75-9c5e-406b-90a8-e39a615e9cf6"
* entry[allergyIntolerance][=].resource = cz-examplemri-allergyIntolerance

* entry[medicationAdministration][+].fullUrl = "urn:uuid:a89a0433-998e-4408-9d7a-560c6d242366"
* entry[medicationAdministration][=].resource = cz-examplemri-medicationAdministration

* entry[diagnosticReport][+].fullUrl = "urn:uuid:9c23deff-bf1d-46f6-bd0e-005e52b42121"
* entry[diagnosticReport][=].resource = cz-examplemri-diagnosticReport

* entry[keyImageReference][+].fullUrl = "urn:uuid:2a00895f-9e01-4467-bf75-4f0c3552afa4"
* entry[keyImageReference][=].resource = cz-examplemri-keyImageReference

Instance: cz-examplemri-composition
InstanceOf: CZ_CompositionImagingReport
Description: "Example of Imaging report (Composition) including a PET+CT report"
Usage: #example
* id = "a84899f0-a241-4f15-b5fd-47e8c9dbdc35"
* status = #final
* subject = Reference(urn:uuid:2ccb472f-5747-4939-a119-5597835ad7da)
* date = "2025-05-20T12:02:00+01:00"
* author = Reference(cz-examplemri-practitioner2)
* type = $typeClinicalEvent#RDG.PETCT "PET/CT"
* title = "Zpráva z vyšetření PET+CT hlavy"
* section[order].title = "Requested imaging studies information Document"
* section[order].code = $loinc#55115-0 "Requested imaging studies information Document"
* section[order].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Order information</div>" 
* section[order].text.status = #generated
* section[order].entry[0] = Reference(urn:uuid:5be5b9c2-5ca6-4f2e-b3e2-47dc9b334a22)
* section[clinicalQuestion].title = "Clinical question"
* section[clinicalQuestion].code = $loinc#18785-6	"Radiology Reason for study (narrative)"
* section[clinicalQuestion].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Clinical question</div>" 
* section[clinicalQuestion].text.status = #generated
* section[clinicalQuestion].entry[0] = Reference(urn:uuid:9ee22843-2526-436f-bf66-3f9874869c08)
* section[imagingstudy].title = "Imaging Study"
* section[imagingstudy].code = $loinc#18726-0 "Radiology studies (set)"
* section[imagingstudy].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Imaging Study</div>" 
* section[imagingstudy].text.status = #generated
* section[imagingstudy].entry[0] = Reference(urn:uuid:e132f687-df35-4174-91bd-fe74cda5ac5d)
* section[procedure].title = "Procedure"
* section[procedure].code = $loinc#55111-9 "Current imaging procedure descriptions Document"
* section[procedure].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Procedure</div>" 
* section[procedure].text.status = #generated
* section[procedure].entry[0] = Reference(urn:uuid:74820e62-42c2-4a39-9ded-251f3b8a58d0)
* section[findings].title = "Findings"
* section[findings].code = $loinc#59776-5 "Procedure findings Narrative"
* section[findings].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Findings</div>" 
* section[findings].text.status = #generated
* section[findings].entry[0] = Reference(urn:uuid:2a00895f-9e01-4467-bf75-4f0c3552afa4)

Instance: cz-examplemri-device
InstanceOf: CZ_DeviceObserver
Usage: #example
Description: "Positron emission tomography/computed tomography system device"
Title: "Device - Positron emission tomography/computed tomography system"
* type = $sct#717326002 "PET/CT system"

Instance: cz-examplemri-practitioner1
InstanceOf: CZ_PractitionerCore
Description: "Example of signing practitioner"
Usage: #example
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/krzp"
* identifier[=].value = "123456789"
* name.use = #usual
* name.prefix = "Prof. Dr."
* name.family = "Jan"
* name.given = "Voštěp"
* gender = #male

Instance: cz-examplemri-practitioner2
InstanceOf: CZ_PractitionerCore
Description: "Example of requesting practitioner"
Usage: #example
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/krzp"
* identifier[=].value = "123456789"
* name.use = #usual
* name.prefix = "MUDr."
* name.family = "Jan"
* name.given = "Blažejovský"
* gender = #male

Instance: cz-examplemri-patient
InstanceOf: CZ_PatientCore
Usage: #inline
Description: "Patient, contact information"
* id = "2ccb472f-5747-4939-a119-5597835ad7da"
* identifier[CPOJ][+].system = "https://ncez.mzcr.cz/fhir/sid/cpoj"
* identifier[CPOJ][=].value = "9999999999"
* identifier[CPOJ][=].use = #official
* identifier[RID][+].system = "https://ncez.mzcr.cz/fhir/sid/rid"
* identifier[RID][=].value = "2066425387"

* extension[nationality].extension[code].valueCodeableConcept = urn:iso:std:iso:3166#SK
* name.use = #usual
* name.family = "Jana"
* name.given = "Example"
* name.prefix = "Mudr., Ing."
* name.suffix = "PhD."
* gender = #female
* birthDate = "1935-01-12"
* address[+].use = #home
* address[=].type = #physical
* address[=].text = "Ulice 13a, 150 00 Praha 5"
* address[=].line[+] = "Ulice 13a"
* address[=].line[=].extension[streetName].valueString = "Ulice"
* address[=].line[=].extension[houseNumber].valueString = "13a"
* address[=].city = "Praha"
* address[=].postalCode = "15000"
* address[=].country = "CZ"

* communication[+].language = urn:ietf:bcp:47#sk
* communication[=].preferred = true
* communication[+].language = urn:ietf:bcp:47#cz

Instance: cz-examplemri-order
InstanceOf: CZ_ImagingOrderInformation
Usage: #inline
Title: "Imaging order for PET+CT"
Description: "Imaging order for PET+CT"
* id = "5be5b9c2-5ca6-4f2e-b3e2-47dc9b334a22"
* identifier[+].system = "https://www.homolka.cz/"
* identifier[=].value = "OBJ123456"
* status = #active
* intent = #order
* category = $sct#363679005 	"Imaging" //* category = http://snomed.info/sct#103693007 "Diagnostic procedure (procedure)"
* performer = Reference(cz-examplemri-device)
* subject = Reference(urn:uuid:2ccb472f-5747-4939-a119-5597835ad7da)
* insurance = Reference(cz-examplemri-coverage)
* bodySite = $sct#69536005 "Head"
* code.coding = $sct#1655436100011910 "PET CT of brain"
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">PET+CT mozku pro diferenciální dg. tumoru a radiační nekrozy</div>"
* authoredOn = "2022-10-06T12:02:00+01:00"
* reasonReference = Reference(cz-examplemri-condition1)
* requester = Reference(cz-examplemri-practitioner2)

Instance: cz-examplemri-coverage
InstanceOf: CZ_Coverage
Description: "Example of coverage"
Usage: #example
Title: "Coverage - Healthcare insurance company"
* status = #active
* beneficiary = Reference(urn:uuid:2ccb472f-5747-4939-a119-5597835ad7da)
* payor = Reference(cz-examplemri-organization)

Instance: cz-examplemri-organization
InstanceOf: CZ_OrganizationCore
Usage: #example
Description: "Example of insurance organisation"
Title: "Organization - Healthcare insurance company"
* name = "Všeobecná zdravotní pojišťovna ČR"
* identifier[KP].system =  "https://ncez.mzcr.cz/fhir/sid/kp"
* identifier[KP].value = "111"

Instance: cz-examplemri-clinicalQuestion
InstanceOf: CZ_ClinicalQuestion
Usage: #example
Description: "Clinical question"
Title: "Clinical question in text form"
* id = "9ee22843-2526-436f-bf66-3f9874869c08"
* subject = Reference(urn:uuid:2ccb472f-5747-4939-a119-5597835ad7da)
* category = $hl7-condition-category-cs#encounter-diagnosis
* code.text = "Recidiva?"

Instance: cz-examplemri-imagingStudy
InstanceOf: CZ_StudyImaging
Usage: #example
Description: "Imaging study of PET+CT"
Title: "Imaging study of PET+CT"
* id = "e132f687-df35-4174-91bd-fe74cda5ac5d"
* identifier[+].system = "https://www.nempriklad.cz/"
* identifier[=].value = "Pn123456"
* status = #available
* subject = Reference(urn:uuid:2ccb472f-5747-4939-a119-5597835ad7da)

Instance: cz-examplemri-condition1
InstanceOf: CZ_ConditionImage
Usage: #example
Description: "Reason For Admission of PET+CT"
Title: "Reason For Admission of PET+CT"
* subject = Reference(urn:uuid:2ccb472f-5747-4939-a119-5597835ad7da)
* code.text = "Pacient po resekci GBM vlevo parietálně 5/18, zevní RT na parietotemporální oblast vlevo pro glioblastom, poté itoterapie temodalem. Nejasný nález vlevo parietálně."

Instance: cz-examplemri-condition2
InstanceOf: CZ_ConditionImage
Usage: #example
Description: "Diagnosis 1 for PET+CT"
Title: "Diagnosis 1 for PET+CT"
* subject = Reference(urn:uuid:2ccb472f-5747-4939-a119-5597835ad7da)
* code.coding[diagnosis] = #D50.0 "Anemie z nedostatku železa, sekundární po ztrátě krve (chronická)" 
* code.text = "Anemie recidivující ztrátová hyposideremická z angiektázií ve vzestupném tračníku"

Instance: cz-examplemri-condition3
InstanceOf: CZ_ConditionImage
Usage: #example
Description: "Diagnosis 2 for PET+CT"
Title: "Diagnosis 2 for PET+CT"
* subject = Reference(urn:uuid:2ccb472f-5747-4939-a119-5597835ad7da)
* code.coding[diagnosis] = #G45.9 "Tranzitorní ischemická ataka (TIA) NS" 
* code.text = "Transitorní ischemická ataka"

Instance: cz-examplemri-allergyIntolerance
InstanceOf: CZ_AllergyIntolerance
Usage: #example
Description: "Allergy Intolerance during PET+CT"
Title: "AllergyIntolerance during PET+CT"
* id = "0bd84e75-9c5e-406b-90a8-e39a615e9cf6"
* identifier[+].system = "https://www.nempriklad.cz/"
* identifier[=].value = "0bd84e75-9c5e-406b-90a8-e39a615e9cf6"
* clinicalStatus = #active
* patient = Reference(urn:uuid:2ccb472f-5747-4939-a119-5597835ad7da)
* reaction.description = "Lokální zčervenání pokožky po podání Fludeoxythymidinu"
* reaction.onset = "2022-10-07T08:30:00+01:00"
* reaction.manifestation.text = "Lokální zčervenání pokožky po podání Fludeoxythymidinu"

Instance: cz-examplemri-medicationAdministration
InstanceOf: CZ_MedicationAdministration
Usage: #example
Description: "Medication Administration during PET+CT"
Title: "Medication Administration during PET+CT"
* id = "a89a0433-998e-4408-9d7a-560c6d242366"
* identifier[+].system = "https://www.nempriklad.cz/"
* identifier[=].value = "a89a0433-998e-4408-9d7a-560c6d242366"
* status = #completed
* subject = Reference(urn:uuid:2ccb472f-5747-4939-a119-5597835ad7da)
* medicationReference = Reference (cz-examplemri-medication)
* dosage.site = $sct#66480008 "Left forearm"
* dosage.route = $sct#47625008 "Intravenous route"
* effectiveDateTime = "2022-10-07T08:15:00+01:00"

Instance: cz-examplemri-medication
InstanceOf: CZ_Medication
Usage: #example
Description: "Medication during PET+CT"
Title: "Medication during PET+CT"
* identifier[+].system = "https://www.nempriklad.cz/"
* identifier[=].value = "a89a0433-998e-4408-9d7a-560c6d242367"
* status = #active
* code.coding[+] = $dlp_lecprip#0226200 "Fludeoxythymidin"
* form = $dlp_formy#INJSOL "Injekční roztok"

Instance: cz-examplemri-observation
InstanceOf: CZ_ObservationResultImaging
Usage: #example
Description: "Observation of PET+CT"
Title: "Observation of PET+CT"
* language = #cs
* status = #final
* subject = Reference(urn:uuid:2ccb472f-5747-4939-a119-5597835ad7da)
* performer = Reference(cz-examplemri-practitioner2)
* code.text = "Na tomografických řezech nacházíme nehomogenně zvýšenou akumulaci RF při zadním okraji postresekční dutiny vlevo parietotemporálně, maximum akumulace RF resp. FLT je laterálně až do charakteru ložiska výrazně zvýšeného FLT."
* valueString = "Na tomografických řezech nacházíme nehomogenně zvýšenou akumulaci RF při zadním okraji postresekční dutiny vlevo parietotemporálně, maximum akumulace RF resp. FLT je laterálně až do charakteru ložiska výrazně zvýšeného FLT."

Instance: cz-examplemri-diagnosticReport
InstanceOf: CZ_DiagnosticReport
Usage: #example
Description: "Diagnostic report of PET+CT"
Title: "Diagnostic report of PET+CT"
* id = "9c23deff-bf1d-46f6-bd0e-005e52b42121"
* category = #CT
* status = #available
* code = $sct#168500000 "Radiology result normal"
* subject = Reference(urn:uuid:2ccb472f-5747-4939-a119-5597835ad7da)
* result = Reference(cz-examplemri-observation)
* presentedForm.contentType = #application/pdf
* presentedForm.language = #cs
* presentedForm.data = "QmFzZSA2NCBwZGYgZmlsZQ=="
* presentedForm.title = "PET+CT Imaging report"
* presentedForm.creation = "2025-05-20T12:02:00+01:00"
//* extension[DiagnosticReportCompositionR5].valueReference = Reference(urn:uuid:a84899f0-a241-4f15-b5fd-47e8c9dbdc35)

Instance: cz-examplemri-keyImageReference
InstanceOf: CZ_KeyImageDocumentReference
Usage: #example
Description: "Key Image Document reference for PET+CT"
Title: "Key Image Document reference for PET+CT"
* id = "2a00895f-9e01-4467-bf75-4f0c3552afa4"
* status = http://hl7.org/fhir/document-reference-status#current
* subject = Reference(urn:uuid:2ccb472f-5747-4939-a119-5597835ad7da)
* content[content].attachment.contentType = #application/dicom
* content[content].attachment.url = "/viewer/KOS.dcm"
* content[content].attachment.title = "Key Image Document"
//* extension[modality].valueCodeableConcept = $dcm#CT

Instance: cz-examplemri-procedure
InstanceOf: CZ_ProcedureImaging
Usage: #example
Description: "Procedure of PET+CT"
Title: "Procedure of PET+CT"
* id = "74820e62-42c2-4a39-9ded-251f3b8a58d0"
* code.coding = $sct#1655436100011910 "PET CT of brain" 
* status = #completed
* subject = Reference(urn:uuid:2ccb472f-5747-4939-a119-5597835ad7da)
* reasonReference = Reference (cz-examplemri-condition2)
* reasonReference = Reference (cz-examplemri-condition3)