Profile: CZ_AccessionNumberIdentifier
Parent: Identifier
Id: cz-accession-number-identifier
Title: "Imaging Accession Number Identifier"
Description: "This profile on Identifier represents the Accession Number for the Imaging Order."
* system 1..1
* value 1..1
* type 1..1
* type = http://terminology.hl7.org/CodeSystem/v2-0203#ACSN
* assigner only Reference(CZ_OrganizationCore)

Profile: CZ_StudyInstanceUidIdentifier
Parent: Identifier
Id: cz-study-instance-uid-identifier
Title: "Study Instance UID Identifier"
Description: "This profile on Identifier represents the Study Instance UID (0020,000D) for the Imaging Order."
* system = "urn:dicom:uid"
* value 1..1
* type 0..1
* type = MissingDicomTerminology#0020000D "Study Instance UID" 
* assigner only Reference(CZ_OrganizationCore)

Profile: CZ_SopInstanceUidIdentifier
Parent: Identifier
Id: cz-sop-instance-uid-identifier
Title: "Imaging SOP Class UID Identifier"
Description: "This profile on Identifier represents the SOP Class UID (0008,0018) for the Imaging Order."
* system = "urn:dicom:uid"
* value 1..1
* type 1..1
* type = MissingDicomTerminology#00080018 "SOP Instance UID"
* assigner only Reference(CZ_OrganizationCore)