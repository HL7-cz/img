Profile: CZ_ImagingSelection
Id: cz-imaging-selection
Parent: Basic
Title: "Imaging Selection profile for R4"
Description: "Imaging Selection profile for R4"
* insert SetFmmandStatusRule( 1, draft )
* subject only Reference( CZ_PatientCore )
* extension contains
  $cvImagingSelection named imagingSelection 1..1
* extension
  * ^slicing.discriminator[1].type = #value
  * ^slicing.discriminator[=].path = "extension.value"
* extension[imagingSelection] contains study 1..1
* extension[imagingSelection][study].extension[derivedFrom].value[x] only Reference(CZ_StudyImaging)


Profile: CZ_SrInstanceImagingSelection
Parent: CZ_ImagingSelection
Id: cz-sr-instance-imaging
Title: "Imaging Selection referring to a DICOM SR instance"
Description: "Imaging Selection referring to a DICOM SR instance"
* insert SetFmmandStatusRule( 1, draft )
* identifier 1..*
  * insert SliceElement( #value, type )
* identifier contains sopInstanceUid 1..1
* identifier[sopInstanceUid] only CZ_SopInstanceUidIdentifier
* extension[imagingSelection].extension[studyUid].value[x] 1..1
* extension[imagingSelection].extension[seriesUid].value[x] 1..1
* extension[imagingSelection].extension[instance] 1..1
* extension[imagingSelection].extension[instance].extension[uid].value[x] 1..1
* extension[imagingSelection].extension[instance].extension[subset].value[x] 0..0
* extension[imagingSelection].extension[instance].extension[imageRegion2D] 0..0
* extension[imagingSelection].extension[instance].extension[imageRegion3D] 0..0