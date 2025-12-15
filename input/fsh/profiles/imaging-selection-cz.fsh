Profile: CZ_ImagingSelectionImaging
Parent: $CrossVersion-R5-ImagingSelection-for-R4
Id: cz-imaging-selection-imaging
Title: "Basic-ImagingSelection: General"
Description: "Basic resource holding cross-version extensions for Imaging Selection allowing ImagingSelection to be used in R4."

* insert ImposeProfile($ImagingSelection-eu-img,0 )
//* subject only Reference(CZ_PatientCore)

Profile: CZ_SrInstanceImagingSelectionImaging
Parent: http://hl7.org/fhir/4.0/StructureDefinition/R5-ImagingSelection-for-R4
Id: cz-sr-instance-imaging-selection-imaging
Title: "Basic-ImagingSelection: DICOM SR Instance"
Description: "Imaging Selection referring to a DICOM SR instance"

* insert ImposeProfile($SRImagingSelection-eu-img,0 )

* identifier 1..*
  * insert SliceElement( #value, type )
* identifier contains sopInstanceUid 1..1
* identifier[sopInstanceUid] only SopInstanceUidIdentifierEuImaging

* extension[ImagingSelection].extension[studyUid].value[x] 1..1
* extension[ImagingSelection].extension[seriesUid].value[x] 1..1
* extension[ImagingSelection].extension[instance] 1..1
* extension[ImagingSelection].extension[instance].extension[uid].value[x] 1..1
* extension[ImagingSelection].extension[instance].extension[subset].value[x] 0..0
* extension[ImagingSelection].extension[instance].extension[imageRegion2D] 0..0
* extension[ImagingSelection].extension[instance].extension[imageRegion3D] 0..0