Profile: CZ_AccessionNumberIdentifier
Parent: Identifier
Id: cz-accession-number-identifier
Title: "Imaging Accession Number Identifier"
Description: "This profile on Identifier represents the Accession Number for the Imaging Order."
* insert ImposeProfile($AccessionNumberIdentifier-eu-img,0)
* system 1..1
* value 1..1
* type 1..1
* type
  * coding
    * insert SliceElement( #value, $this )
  * coding contains v2-0203-coding 1..1 and dcm 0..1
  * coding[v2-0203-coding] = $v2-0203#ACSN 
  * coding[dcm] = http://dicom.nema.org/resources/ontology/DCM#121022 "Accession Number"

Profile: CZ_StudyInstanceUidIdentifier
Parent: Identifier
Id: cz-study-instance-uid-identifier
Title: "Study Instance UID Identifier"
Description: "This profile on Identifier represents the Study Instance UID (0020,000D) for the Imaging Order."
* insert ImposeProfile($StudyInstanceUidIdentifier-eu-img,0)
* system = "urn:dicom:uid"
* value 1..1
* type 1..1
* type
  * coding
    * insert SliceElement( #value, $this )
  * coding contains dcm 1..1
  * coding[dcm] = http://dicom.nema.org/resources/ontology/DCM#110180 "Study Instance UID"
* assigner only Reference(CZ_OrganizationCore)

Profile: CZ_SopInstanceUidIdentifier
Parent: Identifier
Id: cz-sop-instance-uid-identifier
Title: "Imaging SOP Class UID Identifier"
Description: "This profile on Identifier represents the SOP Class UID (0008,0018) for the Imaging Order."
* insert ImposeProfile($SopInstanceUidIdentifier-eu-img,0)
* system = "urn:dicom:uid"
* value 1..1
* type 1..1
* type = MissingDicomTerminology#00080018 "SOP Instance UID"
* assigner only Reference(CZ_OrganizationCore)