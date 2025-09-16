Profile: CZ_StudyImaging
Parent: ImagingStudy
Id: cz-study-imaging
Title: "Imaging Study (CZ)"
Description: """This profile represents an imaging study instance."""

* insert SetFmmandStatusRule( 1, draft )
* obeys imagingstudy-01

* identifier
  * insert SliceElement( #value, system )
* identifier contains studyInstanceUid 1..1
* identifier[studyInstanceUid] only CZ_StudyInstanceUidIdentifier

* subject 1..1
* subject only Reference(CZ_PatientCore or CZ_DeviceObserver)

* modality from CZ_ModalityVs (preferred)

* basedOn
  * insert SliceElement( #type, $this )
* basedOn contains orderaccession 0..1
* basedOn[orderaccession] only Reference(CZ_ImagingOrderInformation)
  * identifier 1..1
  * identifier only AccessionNumberIdentifier

* referrer only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore)
* interpreter only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore)
* procedureReference only Reference(CZ_ProcedureImaging)
* location only Reference(CZ_LocationCore)
* reasonReference only Reference(CZ_ConditionImage or CZ_ObservationResultImaging or Media or CZ_DiagnosticReport or DocumentReference)

* series
  * specimen only Reference(CZ_Specimen)
  * performer.function from CZ_ImagingStudyPerformerTypeVS (extensible)
  * performer.actor only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_OrganizationCore or CareTeam or CZ_PatientCore or CZ_RelatedPersonCore or CZ_DeviceObserver or Device)
  * performer
    * insert SliceElement( #type, actor )
  * performer contains performer 0..1 and device 0..1 and custodian 0..1
  * performer[performer]
    * function = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PRF
    * actor only Reference( CZ_PractitionerRoleCore )
  * performer[custodian]
    * function = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#CST
    * actor only Reference( CZ_OrganizationCore )
  * performer[device]
    * function = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#DEV
    * actor only Reference( CZ_DeviceObserver ) 
 // * insert EndpointTypes 
  * modality from CZ_ModalityVs (extensible) 
  * instance
    * extension contains 
      ImagingStudyInstanceDescription named instance-description 0..1

Profile: AccessionNumberIdentifier
Parent: Identifier
Id: accession-number-identifier
Title: "Imaging Accession Number Identifier"
Description: "This profile on Identifier represents the Accession Number for the Imaging Order."
* insert SetFmmandStatusRule( 1, draft )
* system 1..1
* value 1..1
* type 1..1
* type = http://terminology.hl7.org/CodeSystem/v2-0203#ACSN


Extension: ImagingStudyInstanceDescription
Id: instance-description
Title: "Instance Description"
Description: "A description of the instance in an ImagingStudy."
Context: ImagingStudy.series.instance
* value[x] only string

Invariant: imagingstudy-01
Description: "A DICOM instance UID must start with 'urn:oid:'"
Severity: #warning
Expression: "identifier.where(system='urn:dicom:uid').value.startsWith('urn:oid:')"
