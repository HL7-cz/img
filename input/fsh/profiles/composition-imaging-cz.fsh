//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile: CZ_CompositionImagingReport
Parent: Composition
Id: cz-composition-imaging
//Id: composition-cz-imaging
Title: "Composition: Imaging Report (CZ)"
Description: "This profile defines how to represent Composition resource in HL7 FHIR for the scope of this guide."
* ^purpose = "Imaging report bundle is an electronic health record extract containing results of imaging from a subject of care, comprising at least the required elements of the imaging dataset."
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
* insert SetFmmandStatusRule ( 0, draft )

* meta
  * security 0..* MS

* identifier
  * ^short = "Report identifier"
  * ^definition = "Identifiers assigned to this Imaging Report by the performer or other systems. It shall be common to several report versions"
  * ^comment = "Composition.identifier SHALL be equal to one of the DiagnosticReport.identifier, if at least one exists"

* extension contains 
    ImDiagnosticReportReference named diagnosticreport-reference 1..1  
* extension[diagnosticreport-reference].valueReference only Reference ( CZ_DiagnosticReport )

* extension contains 
    $event-basedOn-url          named basedOn 0..* and
    $information-recipient-url  named informationRecipient 0..*

* status
  * ^short = "Status of the Report"
  * ^comment = "DiagnosticReport.status and Composition.status shall be aligned"

* subject 1..1 MS
* subject only Reference(CZ_PatientCore)

* custodian MS
* custodian only Reference(CZ_OrganizationCore)
  * ^short = "Organization that manages the Imaging Report"

* author
* author only Reference(CZ_PractitionerCore or CZ_DeviceObserver)
  * ^short = "Who and/or what authored the Imaging order"

* attester 0..* MS
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "mode"
  * ^slicing.rules = #open
  * ^slicing.ordered = false
* attester contains
    legalAuthenticator 0..* MS and 
    resultValidator 0..* MS
* attester[legalAuthenticator]
  * mode 1..1 MS
  * mode = #legal
  * party only Reference(CZ_PractitionerRoleCore)
* attester[resultValidator]
  * mode 1..1 MS
  * mode = #professional
  * party only Reference(CZ_PractitionerRoleCore)

// type of the report. Matching DiagnosticReport.code
// code 
//* type 1..
//* type from CZ_DiagnosticReport (preferred) // valueset to be revised. 
//  * ^short = "Type of Imaging Diagnostic Report"
//  * ^definition = "Specifies that it refers to a Imaging Report"
//  * ^comment = "At least one DiagnosticReport.code.coding and Composition.type.coding SHALL be equal"

* date MS
  * ^short = "Date the report was last changed."

* section 1..
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "code"
  * ^slicing.rules = #open
  * ^slicing.ordered = false
* obeys text-or-section

* section contains 
    imagingstudy 1..1 and 
    order 1..1 and 
    clinicalQuestion 0..* and
    history 0..1 and
    procedure 1..1 and
    comparison 0..1 and
    findings 1..1 and
    impression 0..1 and
    recommendation 0..1 and
    communication 0..1

///////////////////////////////// IMAGING STUDY SECTION ///////////////////////////////////////
* section[imagingstudy]
  * ^short = "Imaging Study"
  * ^definition = "This section holds information related to the imaging studies covered by this report."
  // * title = "Imaging Studies"
  * code = $loinc#18726-0 "Radiology studies (set)"
  * entry 1..* 
  * entry
    * ^short = "Imaging Study Reference"
    * ^definition = "This entry holds a reference to the Imaging Study instance that is associated with this Composition."
  * entry only Reference(CZ_StudyImaging)  

///////////////////////////////// ORDER SECTION ///////////////////////////////////////
* section[order]
  * ^short = "Order"
  * ^definition = "This section holds information related to the order for the imaging study."
  * ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
  * ^extension[0].valueString = "Section"
  * code = $loinc#55115-0 "Requested imaging studies information Document"
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
  * code = $loinc#18785-6	"Radiology Reason for study (narrative)"
  * entry 1..
  * entry only Reference(CZ_ClinicalQuestion) 

  
///////////////////////////////// HISTORY SECTION ///////////////////////////////////////
* section[history]
  * ^short = "History"
  * code = $loinc#11329-0 "History general Narrative - Reported"
  * extension contains $note-url named note 0..*

///////////////////////////////// PROCEDURE SECTION ///////////////////////////////////////
* section[procedure]
  * ^short = "Procedure"
  * code = $loinc#55111-9 "Current imaging procedure descriptions Document"
  * entry 0..*
  * entry only Reference(CZ_ProcedureImaging)


////////////////// COMPARISON SECTION //////////////////////////
* section[comparison]
  * ^short = "History"
  * code = $loinc#18834-2 "Radiology Comparison study (narrative)"
  * entry 0..*
  * entry only Reference(CZ_StudyImaging) //or CZ_SelectionImaging

/////////////////// FINDINGS SECTION //////////////////////////
* section[findings]
  * ^short = "Findings"
  * code = $loinc#59776-5 "Procedure findings Narrative"

  * entry 0..* 
  * entry only Reference(CZ_ObservationResultImaging or CZ_KeyImageDocumentReference)

/////////////////// IMPRESSION SECTION //////////////////////////
* section[impression]
  * ^short = "Impressions"
  * code = $loinc#19005-8 "Radiology Imaging study [Impression] (narrative)"
  * entry 0..* 
  * entry only Reference(CZ_ObservationResultImaging or CZ_ConditionImage or CZ_KeyImageDocumentReference)

/////////////////// RECOMMENDATION SECTION //////////////////////////
* section[recommendation]
  * ^short = "Recommendations"
  * code = $loinc#18783-1 "Radiology Study recommendation (narrative)"
  * entry 0..* 
  * entry only Reference(CZ_CarePlanImage)

// /////////////////// COMMUNICATION SECTION //////////////////////////
* section[communication]
  * ^short = "Communications"
// a proper code is needed
  * code = $loinc#18783-1 "Radiology Study recommendation (narrative)"
  * extension contains $note-url named note 0..*

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
* insert SetFmmandStatusRule ( 2, trial-use)
* value[x] only Reference (CZ_DiagnosticReport)