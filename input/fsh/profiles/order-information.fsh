Profile: CZ_ImagingServiceRequest
Parent: ServiceRequest
Id: cz-imagingOrderInformation
Title: "Service Request: Imaging Report (CZ)"
Description: "Order information for the scope of the Czech national interoperability project."

* insert ImposeProfile($ServiceRequest-eu-img,0)

* extension contains $bodySite-reference named bodySite 0..1
* extension[bodySite].valueReference only Reference(BodyStructureCzCore)
* identifier
  * insert SliceElement( #value, type )
* identifier contains accessionNumber 0..1
* identifier[accessionNumber] only CZ_AccessionNumberIdentifier
* identifier[accessionNumber].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[accessionNumber].type.coding.code = #ACSN

* basedOn only Reference(CZ_CarePlanImage or CZ_CarePlanCore or CZ_ImagingServiceRequest or ServiceRequest or CZ_MedicationRequestCore)
* replaces only Reference(CZ_ImagingServiceRequest or ServiceRequest)

* category 1..*
  * insert SliceElement( #value, $this )
* category contains imaging 1..1
* category[imaging] = $sct#363679005 // "Imaging"

* authoredOn 1..
* occurrenceDateTime
* priority
* patientInstruction

* subject only Reference(CZ_PatientCore or CZ_PatientAnimal)
* insurance only Reference(CZ_Coverage)
* specimen only Reference(CZ_Specimen)
* code
* code.coding from CZ_ImagingProcedureVs (preferred)

* requester only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_OrganizationCore or CZ_PatientCore or CZ_RelatedPersonCore or CZ_DeviceObserver) // or Device)
* performer only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_OrganizationCore or CareTeam or HealthcareService or CZ_PatientCore or CZ_RelatedPersonCore or CZ_DeviceObserver) // or Device)
* performer.type from $sct-device-type
* bodySite
* bodySite from $sctBodySite (preferred)
* text 1..
* supportingInfo 0..*
* supportingInfo only Reference(CZ_MedicationStatementCore or CZ_BodyHeight or CZ_BodyWeight or CZ_ConditionCore or CZ_ConditionImage or CZ_AllergyIntolerance or CZ_MedicalDevice or CZ_ObservationImage or CZ_CarePlanImage)

* supportingInfo.extension contains
    http://hl7.org/fhir/5.0/StructureDefinition/extension-ServiceRequest.supportingInfo named codeableConcept 0..*

* extension contains http://hl7.org/fhir/5.0/StructureDefinition/extension-ServiceRequest.reason named reason 0..*


* locationReference only Reference(CZ_LocationCore)
* reasonReference only Reference(CZ_ConditionImage)
