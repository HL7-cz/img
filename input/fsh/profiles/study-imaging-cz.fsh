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
* subject only Reference( CZ_PatientCore or CZ_DeviceObserver )

* series
  * performer.function from CZ_ImagingStudyPerformerTypeVS (extensible)
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

  * instance
    * extension contains 
      ImagingStudyInstanceDescription named instance-description 0..1


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
