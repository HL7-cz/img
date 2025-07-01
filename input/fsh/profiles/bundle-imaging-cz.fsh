//===================================
/// INVARIANTS
//===================================

Invariant: dr-comp-subj
Description: "DiagnosticReport and Composition SHALL have the same subject"
Expression: "( (entry.resource.ofType(Composition).subject.empty() and entry.resource.ofType(DiagnosticReport).subject.empty() ) or entry.resource.ofType(Composition).subject = entry.resource.ofType(DiagnosticReport).subject )"
Severity:    #error

Invariant: one-comp
Description: "A imaging report bundle SHALL include one and only one Composition"
Expression: "entry.resource.ofType(Composition).count() = 1"
Severity:    #error

Invariant: one-dr
Description: "A imaging report SHALL include one and only one DiagnosticReport"
Expression: "entry.resource.ofType(DiagnosticReport).count() = 1"
Severity:    #error

//==========================
// PROFILE
//==========================
Profile: CZ_BundleImagingReport
Parent: Bundle
Id: cz-bundle-imaging
Title: "Bundle: Imaging Report (CZ)"
Description: "Clinical document used to represent a Imaging Report for the scope of this guide."
* ^purpose = "Imaging report bundle is an electronic health record extract containing results of imaging from a subject of care, comprising at least the required elements of the imaging dataset."
* ^publisher = "HL7 CZ"
* ^copyright = "HL7 CZ"
* . ^short = "Imaging Report Bundle"
* . ^definition = "Imaging Report Bundle. \r\nA container for a collection of resources in the inmaging report document."
* ^language = #cs

* insert SetFmmandStatusRule ( 0, draft )

* obeys dr-comp-subj
* obeys one-comp
* obeys one-dr

* identifier ^short = "Business identifier for this Imaging Report"
* identifier 1..
* type = #document
* timestamp 1..
* total ..0
* link ..0
* entry 1..
  * link ..0
  * fullUrl 1..1
  * resource 1..
  * search ..0
  * request ..0
  * response ..0

* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.ordered = false
* entry ^slicing.rules = #open

* entry contains composition 1..1
* entry[composition].resource only CZ_CompositionImagingReport

* entry contains diagnosticReport 1..1
* entry[diagnosticReport].resource only CZ_DiagnosticReport

* entry contains serviceRequest 0..*
* entry[serviceRequest].resource only CZ_ImagingOrderInformation

* entry contains patient 0..1
* entry[patient].resource only CZ_PatientCore or CZ_PatientAnimal

* entry contains observation 0..*
* entry[observation].resource only CZ_ObservationResultImaging

* entry contains clinicalQuestion 0..*
* entry[clinicalQuestion].resource only CZ_ClinicalQuestion

* entry contains specimen 0..*
* entry[specimen].resource only CZ_Specimen

* entry contains organization 0..*
* entry[organization].resource only CZ_OrganizationCore

* entry contains practitioner 0..*
* entry[practitioner].resource only CZ_PractitionerCore

* entry contains practitionerRole 0..*
* entry[practitionerRole].resource only CZ_PractitionerRoleCore

* entry contains device 0..*
* entry[device].resource only CZ_DeviceObserver

* entry contains coverage 0..*
* entry[coverage].resource only CZ_Coverage

* entry contains medicationAdministration 0..*
* entry[medicationAdministration].resource only CZ_MedicationAdministration 

* entry contains medication 0..*
* entry[medication].resource only CZ_Medication

* entry contains condition 0..*
* entry[condition].resource only CZ_ConditionImage

* entry contains carePlan 0..*
* entry[carePlan].resource only CZ_CarePlanImage

* entry contains imagingStudy 0..*
* entry[imagingStudy].resource only CZ_StudyImaging

* entry contains keyImageReference 0..*
* entry[keyImageReference].resource only CZ_KeyImageDocumentReference

* entry contains procedure 0..*
* entry[procedure].resource only CZ_ProcedureImaging

* entry contains allergyIntolerance 0..*
* entry[allergyIntolerance].resource only CZ_AllergyIntolerance

* signature ^short = "Report Digital Signature"
  * type ^short = "Digital Signature Purposes"
  * when ^short = "When was signed"
  * who ^short = "Who signed."
  * data ^short = "Signature content"