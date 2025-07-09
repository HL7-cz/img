Profile: CZ_RadiationDoseObservation
Id: cz-radiationDoseObservation
Parent: Observation
Title: "Radiation Dose Observation: Imaging Report (CZ)"
Description: """
A record for the radiation dose the subject has been exposed to during an imaging procedure.
E.g. based on information from https://dicom.nema.org/medical/dicom/current/output/html/part16.html and https://build.fhir.org/ig/HL7/fhir-radiation-dose-summary-ig/index.html
"""
* insert SetFmmandStatusRule( 1, draft )

* basedOn only Reference(CZ_CarePlanImage or DeviceRequest or ImmunizationRecommendation or MedicationRequest or NutritionOrder or CZ_ImagingOrderInformation)
* basedOn
  * insert SliceElement( #type, $this )
* basedOn contains orderaccession 0..1
* basedOn[orderaccession] only Reference( CZ_ImagingOrderInformation )
  * identifier 1..1
  * identifier only CZ_AccessionNumberIdentifier

* identifier 0..*
  * insert SliceElement( #value, type )
* identifier contains radiation-sr-instance-uid 0..1
* identifier[radiation-sr-instance-uid]
  * type = MissingDicomTerminology#00083010 "Irradiation Event UID" 
  * assigner only Reference(CZ_OrganizationCore)

* partOf only Reference(CZ_MedicationAdministration or MedicationDispense or MedicationStatement or Procedure or CZ_ProcedureImaging or Immunization or CZ_StudyImaging)
* partOf 1..*
  * insert SliceElement( #profile, $this )
* partOf contains study 1..1
* partOf[study] only Reference( CZ_StudyImaging )

* code
  * coding 1..*
    * insert SliceElement( #value, $this )
  * coding contains radiation-dose 1..1
  * coding[radiation-dose] = $loinc#73569-6 "Radiation exposure and protection information [Description] Document Diagnostic imaging"

* subject 1..1
* subject only Reference( CZ_PatientCore )

* performer only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_OrganizationCore or CareTeam or CZ_PatientCore or CZ_RelatedPersonCore)

// value
* value[x] 1..1 
* value[x] only string
* valueString ^short = "Dose Summary text."
* valueString ^comment = "Textual representation of the dose summary based computed by the Dose Management system. Based on a locally defined template, definition of which is out of scope of this IG."

* specimen only Reference(CZ_Specimen)

// Performing irradiation device
* device 
* device only Reference(CZ_DeviceObserver or CZ_MedicalDevice)
* device ^short = "Irradiating modality"

* hasMember only Reference(CZ_ObservationResultImaging or Observation or QuestionnaireResponse or MolecularSequence)
* derivedFrom only Reference(DocumentReference or CZ_StudyImaging or Media or QuestionnaireResponse or MolecularSequence)

// dose measurements
* component
  * insert SliceElement( #value, code )
* component contains 
    doseAreaProductTotal 0..* and fluorDoseAreaProductTotal 0..* and doseAreaProduct 0..* and
    CTDoseLengthProductTotal 0..* and DLP 0..* and DLPAlertValue 0..* and AccumulatedDLPForwardEstimate 0..* and DLPNotificationValue 0..* and DLPForwardEstimate 0..* and CRDoseLengthProductSubTotal 0..* and
    CTEffectiveDoseTotal 0..* and EffectiveDose 0..*

* component[doseAreaProductTotal]
  * code = $dcm#113722 "Dose Area Product Total"
  * value[x] only Quantity
  * valueQuantity from ImGraySquareUnits
* component[fluorDoseAreaProductTotal]
  * code = $dcm#113726 "Fluoro Dose Area Product Total"
  * value[x] only Quantity
  * valueQuantity from ImGraySquareUnits
* component[doseAreaProduct]
  * code = $dcm#122130 "Dose Area Product"
  * value[x] only Quantity
  * valueQuantity from ImGraySquareUnits

* component[CTDoseLengthProductTotal]
  * code = $dcm#113813 "CT Dose Length Product Total"
  * value[x] only Quantity
  * valueQuantity from ImDoseLengthUnits
* component[DLP]
  * code = $dcm#113838 "DLP"
  * value[x] only Quantity
  * valueQuantity from ImDoseLengthUnits
* component[DLPAlertValue]
  * code = $dcm#113903 "DLP Alert Value"
  * value[x] only Quantity
  * valueQuantity from ImDoseLengthUnits
* component[AccumulatedDLPForwardEstimate]  
  * code = $dcm#113905 "Accumulated DLP Forward Estimate"
  * value[x] only Quantity
  * valueQuantity from ImDoseLengthUnits
* component[DLPNotificationValue]
  * code = $dcm#113911 "DLP Notification Value"
  * value[x] only Quantity
  * valueQuantity from ImDoseLengthUnits
* component[DLPForwardEstimate]
  * code = $dcm#113913 "DLP Forward Estimate"
  * value[x] only Quantity
  * valueQuantity from ImDoseLengthUnits
* component[CRDoseLengthProductSubTotal]
  * code = $dcm#130745 "CT Dose Length Product Sub-Total"
  * value[x] only Quantity
  * valueQuantity from ImDoseLengthUnits

* component[CTEffectiveDoseTotal]
  * code = $dcm#113814 "CT Effective Dose Total"
  * value[x] only Quantity
  * valueQuantity from ImEffectiveDoseUnits
* component[EffectiveDose]
  * code = $dcm#113839 "Effective Dose"
  * value[x] only Quantity
  * valueQuantity from ImEffectiveDoseUnits

ValueSet: ImEffectiveDoseUnits
Id: im-effective-dose-units
Title: "Effective Dose Units"
Description: "Units for Effective Dose."
* insert UCUMCopyrightForVS
* ^experimental = false
* $ucum#Sv "Sv"        // Effective Dose
* $ucum#mSv "mSv"       // Effective Dose

ValueSet: ImDoseLengthUnits
Id: im-dose-length-units
Title: "Dose Length Units"
Description: "Units for Dose Length."
* ^experimental = false
* $ucum#mGy.cm "mGy.cm" // Dose length product

ValueSet: ImGraySquareUnits
Id: im-gray-square-units
Title: "Gray Square Units"
Description: "Units for Gray Square."
* ^experimental = false
* $ucum#Gy.m2 "Gy.m2"   // Dose area product
* $ucum#mGy.cm2 "mGy.cm2"   // Dose area product