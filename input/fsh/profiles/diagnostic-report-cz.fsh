Profile: CZ_DiagnosticReport
Parent: DiagnosticReport
Id: cz-diagnostic-report
Title: "Diagnostic Report: Imaging Report (CZ)"
Description: "Diagnostic Report used to represent an entry of a Imaging Report, including its context, for the scope of the Czech national interoperability project."
* ^publisher = "HL7 CZ"
* ^copyright = "HL7 Czech Republic"
* . ^short = "Imaging Report DiagnosticReport"
* . ^definition = "Imaging Report DiagnosticReport"

* insert SetFmmandStatusRule ( 0, draft )

* extension contains
  $artifact-version-url-5 named artifactVersion 0..1
  and $cvDiagnosticReport-supportingInfo named supportingInfo 0..*
  and $cvDiagnosticReport-composition named composition 1..1

* basedOn only Reference(CZ_ImagingOrderInformation)
//* basedOn.extension contains DiagnosticReportBasedOnRequisition named basedOn-requisition 0..*
* status ^short = "Status of this report"
* category 1.. // 1.. ?
//* code from CZ_LabStudyTypesVS (preferred)
* code 1..
* subject 1..
* subject only Reference(CZ_PatientCore or Patient or Group or Location or Device or CZ_MedicalDevice)
* encounter only Reference(Encounter) // profile defined for other scopes to be checked
* effective[x] ^short = "Clinically relevant time/time-period for report."
* performer ^short = "Responsible Diagnostic Service." // add reference to the used profiles
* specimen ^short = "Specimens this report is based on." // add reference to the used profile
* result ^short = "results" // add reference to the used profiles
* imagingStudy 0..0
* presentedForm 1..*
* obeys presentedform-01

Invariant: presentedform-01
Description: "At least one of presented form has PDF format"
Severity: #warning
Expression: "presentedForm.where(contentType = 'application/pdf').count() > 0"