//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile: CZ_CompositionImagingReport
Parent: Composition
Id: cz-composition-imaging
//Id: composition-cz-imaging
Title: "Composition: Imaging Report (CZ)"
Description: "This profile defines how to represent Composition resource in HL7 FHIR for the scope of this guide.\n
Imaging report bundle is an electronic health record extract containing results of imaging from a subject of care, comprising at least the required elements of the imaging dataset."
//* ^purpose = "Imaging report bundle is an electronic health record extract containing results of imaging from a subject of care, comprising at least the required elements of the imaging dataset.""
* ^publisher = "HL7 CZ"
* ^copyright = "HL7 CZ"
* . ^short = "Imaging Report composition"
* . ^definition = """
Imaging Study Report composition.\n
A composition is a set of healthcare-related information that is assembled together into a single logical document that
provides a single coherent statement of meaning, establishes its own context and that has clinical attestation with regard
to who is making the statement.\n
While a Composition defines the structure, it does not actually contain the content: rather the full content of a document is contained in a Bundle,
of which the Composition is the first resource contained.\n
\n
The `text` field of each section SHALL contain a textual representation of all listed entries.
"""
* insert ImposeProfile($Composition-eu-img,0)


* identifier 1..1
  * ^short = "Report identifier"
  * ^definition = "Identifiers assigned to this Imaging Report by the performer or other systems. It shall be common to several report versions"
  * ^comment = "Composition.identifier SHALL be equal to one of the DiagnosticReport.identifier, if at least one exists"

* extension contains
    $event-basedOn-url          named basedOn 0..* and
    $information-recipient-url  named informationRecipient 0..* and
    $hl7euDiagnosticReference   named diagnosticreport-reference 0..1

* extension[basedOn].valueReference only Reference(CZ_ImagingOrderInformation)
* extension[diagnosticreport-reference].valueReference only Reference(CZ_DiagnosticReport)
* extension[informationRecipient].valueReference only Reference(CZ_PractitionerCore or CZ_DeviceObserver or CZ_PatientCore or CZ_RelatedPersonCore or CZ_PractitionerRoleCore or CZ_OrganizationCore)

* extension contains $CrossVersion-Composition.version named version 0..1

* status
  * ^short = "Status of the Report"
  * ^comment = "DiagnosticReport.status and Composition.status shall be aligned"

* event.code
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "coding"
  * ^slicing.rules = #open
  * ^slicing.ordered = false
//  * insert SliceElement( #value, "coding" )

* event.code contains imagingStudy 1..* and procedure 1..*
* event.code[imagingStudy].coding from https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_33.html (preferred)
  * ^short = "Modality"
  * ^definition = "The type of imaging modality used to perform the study."
  //* ^comment = "At least one ImagingStudy.code.coding SHALL be equal to Composition.event.code.coding[imagingstudy]"
* event.code[procedure].coding from http://hl7.org/fhir/ValueSet/procedure-reason (preferred)
  * ^short = "Study Type"
  * ^definition = "The type of imaging study performed."

* subject 1..1 MS
* subject only Reference(CZ_PatientCore)

* custodian only Reference(CZ_OrganizationCore)
  * ^short = "Organization that manages the Imaging Report"

* author 1..*
  * insert SliceElement( #profile, [[$this.resolve()]] )
* author contains 
    author 0..* and 
    authoringDevice 0..* and
    organization 0..*
* author[author] only Reference( CZ_PractitionerRoleCore )
* author[authoringDevice] only Reference( CZ_DeviceObserver )
* author[organization] only Reference( CZ_OrganizationCore )

* attester 0..* MS
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "mode"
  * ^slicing.rules = #open
  * ^slicing.ordered = false

//  * party only Reference(CZ_PatientCore or CZ_RelatedPersonCore or CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_OrganizationCore)

* attester contains
    legalAuthenticator 0..* and
    resultValidator 0..*
* attester[legalAuthenticator]
  * mode 1..1 
  * mode = http://hl7.org/fhir/composition-attestation-mode#legal
  * party only Reference(CZ_PractitionerRoleCore)
  * time 1..1
* attester[resultValidator]
  * mode 1..1 
  * mode = http://hl7.org/fhir/composition-attestation-mode#professional
  * party only Reference(CZ_PractitionerRoleCore)
  * time 1..1

* type from ImagingDocumentTypes (preferred) 
  * ^short = "Type of Imaging Diagnostic Report"
  * ^definition = "Defines the document type, it is recommended to take this from the suggested LOINC set."
* category 1..*  
  * insert SliceElement( #value, $this )
* category contains
  diagnostic-service 0..1 and
  document-category 1..1
* category[diagnostic-service] from $diagnostic-service-sections (required)
* category[document-category] from DocumentCategory (required)
  * ^short = "Document Category"
  * ^definition = "A categorization for the type of document."
  * coding = $loinc#18726-0

* encounter 1..1
* encounter only Reference(CZ_Encounter)
  * ^short = "Context that defines the Image Report"

* date MS
  * ^short = "Date the report was last changed."

* confidentiality 1..1
* language 1..1
* title 1..1

* section 0..
  * ^short = "Sections of the report"
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "code"
  * ^slicing.rules = #open
  * ^slicing.ordered = false
//  * insert SliceElement( #value, "code" )

* section.author only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_DeviceObserver or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore)

* obeys text-or-section

* section contains
    imagingstudy 1..1 and
    order 0..1 and
    clinicalQuestion 0..* and
    history 0..1 and
    procedure 0..1 and
    comparison 0..1 and
    findings 0..1 and
    impression 0..1 and
    recommendation 0..1 and
    communication 0..1 and
    complications 0..* and
    attachments 0..*


///////////////////////////////// IMAGING STUDY SECTION ///////////////////////////////////////
* section[imagingstudy]
  * ^short = "Imaging Study"
  * ^definition = "This section holds information related to the imaging studies covered by this report."
  // * title = "Imaging Studies"
  * code = $loinc#18726-0 //"Radiology studies (set)"
  * entry 0..*
  * entry
    * ^short = "Imaging Study Reference"
    * ^definition = "This entry holds a reference to the Imaging Study instance that is associated with this Composition."
  * entry only Reference(CZ_StudyImaging)
  * author only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_DeviceObserver or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore)


///////////////////////////////// ORDER SECTION ///////////////////////////////////////
* section[order]
  * ^short = "Order"
  * ^definition = "This section holds information related to the order for the imaging study."

  * ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
  * ^extension[0].valueString = "Section"
  * code = $loinc#55115-0 //"Requested imaging studies information Document"
  * author only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_DeviceObserver or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore)
  * entry 0..*

  * entry
    * ^short = "Order reference"
    * ^definition = "This entry holds a reference to the order for the Imaging Study and report."
  * entry only Reference(CZ_ImagingOrderInformation)

///////////////////////////////// Clinical question SECTION ///////////////////////////////////////
* section[clinicalQuestion]
  * ^short = "Clinical question"
  * ^definition = "This section holds information about the clinical question that the imaging method is intended to answer."
  * ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
  * ^extension[0].valueString = "Section"
  * code = $loinc#18785-6	//"Radiology Reason for study (narrative)"
  * author only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_DeviceObserver or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore)
  * extension contains $note-url named note 0..*
  * text 1..
  * entry 0..
  * entry only Reference(CZ_ConditionImage)

///////////////////////////////// HISTORY SECTION ///////////////////////////////////////
* section[history]
  * ^short = "History"
  * ^definition = "This section includes patient history and other prior clinical details deemed relevant to the imaging study by the imaging clinician."
  * code = $loinc#11329-0 //"History general Narrative - Reported"
  * author only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_DeviceObserver or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore)
  * extension contains $note-url named note 0..*

///////////////////////////////// PROCEDURE SECTION ///////////////////////////////////////
* section[procedure]
  * ^short = "Procedure"
  * ^definition = "This section contains information such as the procedure type, the anatomy imaged, the date and time of the imaging examination, and the facility that performed it."
  * code = $loinc#55111-9 //"Current imaging procedure descriptions Document"
  * author only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_DeviceObserver or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore)
  * entry 0..*
  * entry only Reference(CZ_ProcedureImaging)

////////////////// COMPARISON SECTION //////////////////////////
* section[comparison]
  * ^short = "Comparison"
  * code = $loinc#18834-2 //"Radiology Comparison study (narrative)"
  * author only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_DeviceObserver or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore)
  * entry 0..*
  * entry only Reference(CZ_StudyImaging) //or CZ_SelectionImaging

/////////////////// FINDINGS SECTION //////////////////////////
* section[findings]
  * ^short = "Findings"
  * code = $loinc#59776-5 //"Procedure findings Narrative"
  * author only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_DeviceObserver or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore)
  * entry 0..*
  * entry only Reference(CZ_ObservationResultImaging or CZ_KeyImageDocumentReference or CZ_AttachmentImg)

/////////////////// IMPRESSION SECTION //////////////////////////
* section[impression]
  * ^short = "Impressions"
  * code = $loinc#19005-8 //"Radiology Imaging study [Impression] (narrative)"
  * extension contains $note-url named note 0..*
  * author only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_DeviceObserver or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore)
  * entry 0..*
  * entry only Reference(CZ_ObservationResultImaging or CZ_ConditionImage or CZ_KeyImageDocumentReference)

/////////////////// RECOMMENDATION SECTION //////////////////////////
* section[recommendation]
  * ^short = "Recommendations"
  * code = $loinc#18783-1 //"Radiology Study recommendation (narrative)"
  * author only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_DeviceObserver or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore)
  * entry 0..*
  * entry only Reference(CZ_CarePlanImage)

// /////////////////// COMMUNICATION SECTION //////////////////////////
* section[communication]
  * ^short = "Communications"
// a proper code is needed
  * code = $loinc#73575-3 //"Radiology Consult note"
  * author only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_DeviceObserver or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore)
  * extension contains $note-url named note 0..*

// /////////////////// A55109-3 SECTION //////////////////////////
* section[complications]  // sekce na záznam alergických reakcí
  * ^short = "Complications Document"
  * code = $loinc#55109-3 //"Note - asi jen dočasný kód TODO: Najít vhodný kód"
  * author only Reference(CZ_PractitionerRoleCore or CZ_DeviceObserver or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore)
  * entry 1..*
  * entry only Reference(CZ_AdverseEvent)

* section[attachments]  // sekce obsahující referenci na DocumentReference
  * ^short = "Attachments"
  * code = $loinc#34109-9 //"Note - asi jen dočasný kód TODO: Najít vhodný kód"
  * author only Reference(CZ_PractitionerRoleCore or CZ_DeviceObserver or CZ_PatientCore or CZ_RelatedPersonCore or CZ_OrganizationCore)
  * entry 1..*
  * entry only Reference(CZ_Logo or DocumentReference)

Invariant: text-or-section
Description: "A Composition SHALL have either text, at least one section, or both."
Expression: "text.exists() or section.exists()"
Severity: #error


Extension: ImDiagnosticReportReference
Id:   im-composition-diagnosticReportReference
Title:  "Document DiagnosticReport Reference"
Description: """
    This extension provides a reference to the DiagnosticReport instance that is associated with this Composition.
    """
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Composition)
* value[x] only Reference (CZ_DiagnosticReport)
