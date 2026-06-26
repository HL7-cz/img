Profile: CZ_DiagnosticReport
Parent: DiagnosticReport
Id: cz-diagnostic-report
Title: "Diagnostic Report: Imaging Report (CZ)"
Description: "Diagnostic Report used to represent an entry of a Imaging Report, including its context, for the scope of the Czech national interoperability project."
* ^publisher = "HL7 CZ"
* ^copyright = "HL7 Czech Republic"
* . ^short = "Imaging Report DiagnosticReport"
* . ^definition = "Imaging Report DiagnosticReport"

* extension contains $artifact-version-url named artifactVersion 0..1
* extension contains CZ_AnatomicalRegionExtension named anatomical-region 0..*
* extension[anatomical-region] ^short = "The anatomical regions covered by the study this report reports on."
* extension[anatomical-region] ^definition = """
The anatomical regions covered by the report, depending on the study there can be zero, one or more regions. 
The regions SHALL overlap with the bodysite references from `ImagingStudy.serie.bodysite`, if present.
"""
* extension[anatomical-region] ^requirements = "This field is present in order to be able to populate the MHD DocumentReference field."

//business identifier and relation with the composition resource
* identifier 1..*
  * ^short = "Report identifier"
  * ^definition = "Identifiers assigned to this Imaging Report by the performer or other systems. It shall be common to several report versions"
  * ^comment = "Composition.identifier SHALL be equal to one of the DiagnosticReport.identifier, if at least one exists"

* status
  * ^short = "Status of the Report"
  * ^comment = "DiagnosticReport.status and Composition.status shall be aligned"

* basedOn
  * insert SliceElement( #exists, identifier )
* basedOn contains
    order-resource 0..* and
    order-identifier 0..*
* basedOn[order-resource] only Reference(CZ_ImagingServiceRequest)
* basedOn[order-resource].reference 1..1
* basedOn[order-resource].identifier 0..0
* basedOn[order-identifier].reference 0..0
* basedOn[order-identifier].identifier 1..1
* basedOn[order-identifier].identifier only CZ_AccessionNumberIdentifier

* status ^short = "Status of this report"
* category 1..*
  * insert SliceElement( #value, $this )
* category contains
  diagnostic-service 0..1 and
  document-category 1..1 and
  imaging-report 1..1 and 
  imaging 1..1
* category[diagnostic-service] from $diagnostic-service-sections (required)
* category[document-category] from $DocumentCategory (required)
  * ^short = "Document Category"
  * ^definition = "A categorization for the type of document."
  * coding = $loinc#18726-0
* category[imaging] = http://hl7.eu/fhir/health-data-api/CodeSystem/eehrxf-document-priority-category-cs#Medical-Imaging
  * ^definition = "Defines the priority category of the report as defined in the API spec."
* category[imaging-report] = $loinc#85430-7 //Diagnostic imaging report
  * ^definition = "Defines the category of the report, Diagnostic imaging report."
//* code 1..

* code from $ImagingDocumentTypes (required)

* subject 1..
* subject only Reference(CZ_PatientCore or Patient or Group or Location or CZ_DeviceObserver or CZ_MedicalDevice)

* encounter only Reference(CZ_Encounter) // profile defined for other scopes to be checked
* effective[x] ^short = "Clinically relevant time/time-period for report."
* performer only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_OrganizationCore or CareTeam)
* performer ^short = "Responsible Diagnostic Service." // add reference to the used profiles
* resultsInterpreter only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_OrganizationCore or CareTeam)
* specimen only Reference(CZ_Specimen)
* specimen ^short = "Specimens this report is based on." // add reference to the used profile
* result only Reference(CZ_ObservationResultImaging)
* result ^short = "results" // add reference to the used profiles
* imagingStudy
  * insert SliceElement( #exists, identifier )
* imagingStudy contains
    study-resource 0..* and
    study-identifier 0..*
* imagingStudy[study-resource] only Reference(CZ_StudyImaging)
* imagingStudy[study-resource].reference 1..1
* imagingStudy[study-resource].identifier 0..0
* imagingStudy[study-identifier].reference 0..0
* imagingStudy[study-identifier].identifier 1..1
* imagingStudy[study-identifier].identifier only CZ_StudyInstanceUidIdentifier
* presentedForm 1..*
* obeys presentedform-01

* extension contains HL7IDRComparisonStudiesExt named comparison 0..* MS
* extension[comparison] ^short = "Comparison studies"
* extension[comparison] ^definition = """
Studies used for comparison in part of diagnostic reporting.
"""

* extension contains HL7IDRPatientHistoryExt named patientHistory 0..* MS
* extension[patientHistory] ^short = "Patient history items selected by radiologist"
* extension[patientHistory] ^definition = """
May have originally been extracted from the medical record by imaging staff,
automated tools, or by the radiologists themselves.
"""

* extension contains HL7IDRImagingProcedureExt named procedure 0..* MS
* extension[procedure] ^short = "Imaging procedure"
* extension[procedure] ^definition = """
Imaging procedure used to acquire the study.
"""

* extension contains HL7IDRFindingExt named finding 0..* MS
* extension[finding] ^short = "Key image findings"
* extension[finding] ^definition = """
Key images in the report
"""
* extension[findings]


* extension contains HL7IDRImpressionExt named impression 0..* MS
* extension[impression] ^short = "Impression"
* extension[impression] ^definition = """
Impression in the imaging report.
"""

* extension contains HL7IDRRecommendationExt named recommendation 0..* MS
* extension[recommendation] ^short = "Recommendations"
* extension[recommendation] ^definition = """
Recommendations a radiologist provides in the report for possible follow up actions.
"""

* extension contains HL7IDRCommunicationExt named communication 0..* MS
* extension[communication] ^short = "Communications with other care providers"
* extension[communication] ^definition = """
Communications captures what communications have been made with other care providers.
"""
* extension contains RadiationDoseExt named radiationDose 0..1 MS

* extension contains $information-recipient-url  named informationRecipient 0..* and $cvDiagnosticReport-composition named composition 1..1
* extension[composition] ^short = "Imaging Diagnostic Report"
* extension[composition].valueReference only Reference(CZ_CompositionImagingReport)

// We have changed these and they now deviate from IDR as they also need to include the notes related to those sections.
// * obeys hl7eu-im-dr-code
// * obeys hl7eu-im-dr-category
// * obeys hl7eu-im-dr-subject
// * obeys hl7eu-im-dr-study
// * obeys hl7eu-im-dr-order
// * obeys hl7eu-im-dr-history
// * obeys hl7eu-im-dr-procedure
// * obeys hl7eu-im-dr-impression
// * obeys hl7eu-im-dr-recommendation
// * obeys hl7eu-im-dr-communication
// * obeys hl7eu-im-dr-finding

Invariant: presentedform-01
Description: "At least one of presented form has PDF format"
Severity: #warning
Expression: "presentedForm.where(contentType = 'application/pdf').count() > 0"
