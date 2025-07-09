Profile: CZ_ObservationResultImaging
Parent: Observation
Id: cz-observation-result-imaging
Title: "Observation: Imaging Report (CZ)"
Description: """This profile constrains the Observation resource to represent results produced by imaging report or panels/studies.

This observation may represent the result of a imaging report
"""

* insert SetFmmandStatusRule ( 0, draft )

* ^purpose = "This profile constrains the Observation resource to represent a imaging report."
* . ^short = "Imaging result for a imaging report"
* . ^definition = "This observation may represent the result of a imaging report."
* . ^comment = "Represents either a imaging observation or the group of observations produced by a imaging study."



* language MS
* identifier
  * insert SliceElement( #value, type )
* identifier contains observationUid 0..1
* identifier[observationUid].type = MissingDicomTerminology#00080018 "SOP Instance UID"
* identifier[observationUid].assigner only Reference(CZ_OrganizationCore)

* partOf ^mustSupport = false
* status MS

* basedOn
  * insert SliceElement( #type, $this )
* basedOn only Reference(CarePlan or DeviceRequest or ImmunizationRecommendation or MedicationRequest or NutritionOrder or ServiceRequest or CZ_ImagingOrderInformation)
* basedOn contains imorderaccession 0..1
* basedOn[imorderaccession] only Reference( CZ_ImagingOrderInformation )
  * identifier 1..1
  * identifier only CZ_AccessionNumberIdentifier

* partOf only Reference(CZ_MedicationAdministration or MedicationDispense or MedicationStatement or CZ_ProcedureImaging or Immunization or CZ_StudyImaging)

* code from $sct (required)

* subject ^short = "In the initial iteration of the Czech interoperability project: this is Patient (CZ)."
* subject only Reference(CZ_PatientCore or CZ_PatientAnimal)

* issued MS

* performer only Reference(CareTeam or RelatedPerson or CZ_PatientCore or CZ_OrganizationCore or CZ_PractitionerRoleCore or CZ_PractitionerCore)
* performer MS
* performer ^short = "In the initial iteration of the Czech interoperability project: this is Organization (CZ) or Practitioner (CZ)"
* value[x] MS
* dataAbsentReason MS
* interpretation MS

* note MS
* method MS

* specimen only Reference(CZ_Specimen)
* specimen MS
* device MS
* device only Reference(CZ_DeviceObserver or CZ_MedicalDevice or DeviceMetric)
* referenceRange MS
* hasMember only Reference(CZ_ObservationResultImaging or QuestionnaireResponse or MolecularSequence)
* derivedFrom only Reference(DocumentReference or CZ_StudyImaging or Media or QuestionnaireResponse or MolecularSequence or CZ_ObservationResultImaging)
* derivedFrom MS
