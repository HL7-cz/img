Extension: HL7IDRComparisonStudiesExt
Title: "Extension: HL7IDR DiagnosticReport Comparison Study"
Id: HL7IDRComparisonStudy
Description: "Studies used for comparison in part of diagnostic reporting"
Context: DiagnosticReport
* value[x] only Reference(CZ_StudyImaging or CZ_ImagingSelectionImaging)

Extension: HL7IDRPatientHistoryExt
Title: "Extension: HL7IDR Patient History"
Id: HL7IDRPatientHistory
Description: "Patient history that are relevant for the report"
Context: DiagnosticReport
* value[x] only Reference
// * value[x] only Reference(HL7IDRPatientHistoryCondition or HL7IDRPatientHistoryObservation or HL7IDRPatientHistoryProcedure or HL7IDRPatientHistoryFamilyMemberHistory)

Extension: HL7IDRImagingProcedureExt
Title: "Extension: HL7IDR Imaging Procedure"
Id: HL7IDRImagingProcedure
Description: "Imaging procedure used for the imaging acquisition and procedure specific information."
Context: DiagnosticReport
* value[x] only Reference(CZ_ProcedureImaging or AdverseEvent or CZ_RadiationDoseObservation)

Extension: HL7IDRFindingExt
Title: "Extension: HL7IDR KeyImage Finding"
Id: HL7IDRFinding
Description: "KeyImage in the imaging report"
Context: DiagnosticReport
* value[x] only Reference(CZ_ObservationImage or CZ_ImagingSelectionKeyImageImaging or CZ_KeyImageDocumentReference or DocumentReference  or Media   )

Extension: HL7IDRImpressionExt
Title: "Extension: HL7IDR Impression"
Id: HL7IDRImpression
Description: "Impression in the imaging report"
Context: DiagnosticReport
* value[x] only Reference(CZ_ObservationImage or Condition or CZ_KeyImageDocumentReference or CZ_ImagingSelectionKeyImageImaging )

Extension: HL7IDRRecommendationExt
Title: "Extension: HL7IDR Recommendation"
Id: HL7IDRRecommendation
Description: "Recommendations for any follow up actions"
Context: DiagnosticReport
* value[x] only Reference(CZ_CarePlanImage or ServiceRequest)

Extension: HL7IDRCommunicationExt
Title: "Extension: HL7IDR Communication"
Id: HL7IDRCommunication
Description: "Communications captures what communications have been made with other care providers"
Context: DiagnosticReport
* value[x] only Reference