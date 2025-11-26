Profile: CZ_KeyImageDocumentReference
Id: cz-keyImage-documentReference
Parent: DocumentReference
Title: "Imaging Key Image Document Reference: Imaging Report (CZ)"
Description: """A document containing key images for a patient.It can refer to a `DICOM` or `non-DICOM` image. When referring to a DICOM image, the DocumentReference.content.attachment.url should be a WADO-URI. When referring to a non-DICOM image, the DocumentReference.content.attachment.url should be a direct URL to the image.\n
When the resource represents a DICOM instance it SHALL contain a the `SOP Instance UID` in the identifier element. When the resource represents a DICOM series it SHALL contain the `Series Instance UID` in the identifier element."""

* identifier 
  * insert SliceElement( #value, $this )
* identifier contains seriesInstanceUid 0..1 and sopClassInstanceUid 0..1
* identifier[seriesInstanceUid] 
  * type 1..1 
  * type = MissingDicomTerminology#00080018
  * system 1..1 
  * system = "urn:ietf:rfc:3986"
  * value 1..1
  * assigner only Reference(CZ_OrganizationCore)
* identifier[sopClassInstanceUid] 
  * type 1..1
  * type = http://dicom.nema.org/resources/ontology/DCM#112002
  * system 1..1 
  * system = "urn:ietf:rfc:3986"
  * value 1..1
  * assigner only Reference(CZ_OrganizationCore)

* extension contains
  $cvDocumentReference-basedOn named basedOn 0..1
  and ModalityCz named modality 1..1
* extension
  * ^slicing.discriminator[1].type = #value
  * ^slicing.discriminator[=].path = "value"
* extension[basedOn].valueReference only Reference (Appointment or AppointmentResponse or CZ_CarePlanImage or Claim or CommunicationRequest or Contract or CoverageEligibilityRequest or DeviceRequest or EnrollmentRequest or ImmunizationRecommendation or MedicationRequest or NutritionOrder or ServiceRequest or SupplyRequest or VisionPrescription or CZ_ImagingOrderInformation)
* extension[basedOn] contains imorderaccession 0..1
* extension[basedOn][imorderaccession].value[x] only Reference(CZ_ImagingOrderInformation)
  * identifier 1..1
  * identifier only CZ_AccessionNumberIdentifier 
* extension[modality].value[x].coding from CZ_ModalityVs (preferred) 

* category 1..*
  * insert SliceElement( #profile, $this )
* category contains imkeyimages 1..1
* category[imkeyimages]
  * coding
    insert SliceElement( #value, $this )
  * coding contains keyimagecode 1..1
  * coding[keyimagecode] = $loinc#55113-5 "Key images Document Radiology"
  
* subject 1..1
* subject only Reference(CZ_PatientCore or CZ_PatientAnimal)

* author only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_OrganizationCore or CZ_DeviceObserver or CZ_MedicalDevice or CZ_PatientCore or CZ_RelatedPersonCore)
* author
  * insert SliceElement( #profile, $this )
* author contains performer 0..*
* author[performer] only Reference(CZ_PractitionerRoleCore)
  
* authenticator only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_OrganizationCore)
* custodian only Reference(CZ_OrganizationCore)

* content
  * attachment 1..1
* content 
  * insert SliceElement( #value, [[extension.value]] )
* content contains 
    thumbnail 0..1 and 
    content 1..1
* content[thumbnail] 
  * extension contains $document-reference-thumbnail-url named thumbnail 1..1
  * extension[thumbnail].valueBoolean = true
* content[content] 
  * extension contains $document-reference-thumbnail-url named thumbnail 1..1
  * extension[thumbnail].valueBoolean = false
  * attachment 1..1
    * url 1..1

* extension contains $note-url named note 0..1 and CrossVersionMediaViewExtension named view 0..1

* context.sourcePatientInfo only Reference(CZ_PatientCore or CZ_PatientAnimal)

Extension: CrossVersionMediaViewExtension
Title: "Media.view extension"
Description: "This cross version extension includes the FHIR R4 version of the Media.view field which has at this point in time (April 18, 2025), not yet been included in the extension pack."
Context: DocumentReference
* extension 0..0
* value[x] only CodeableConcept
* valueCodeableConcept from CrossVersionMediaView

ValueSet: CrossVersionMediaView
Id: media-view
Title: "Media View types - placeholder for cross-version extension"
Description: "Codes defined in SNOMED CT that can be used to record Media Recording views."
* insert SNOMEDCopyrightForVS
* ^experimental = false
* ^version = "4.0.1"
* include codes from system $sct where concept is-a #260419006