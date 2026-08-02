
On the following page, you will find notes on implementing the image report. They concern the creation of a bundle, its composition, and filling these profiles with the relevant data.

### Contents overview

```mermaid
classDiagram
  direction LR
  class CZ_BundleImagingReport{
    <<Bundle>>
  }
  CZ_BundleImagingReport *-- "1" CZ_CompositionImagingReport
  CZ_BundleImagingReport *-- "1" CZ_DiagnosticReport
  CZ_BundleImagingReport *-- "1" CZ_PatientCore
  CZ_BundleImagingReport *-- "0..*" CZ_ImagingServiceRequest
  CZ_BundleImagingReport *-- "0..*" CZ_Practioner
  CZ_BundleImagingReport *-- "0..*" CZ_DeviceObserver
  CZ_BundleImagingReport *-- "0..*" CZ_OrganizationCore
  CZ_BundleImagingReport *-- "0..*" CZ_StudyImaging
  CZ_BundleImagingReport *-- "0..*" CZ_ProcedureImaging
  CZ_BundleImagingReport *-- "0..*" CZ_ObservationResultImaging
  CZ_BundleImagingReport *-- "0..*" CZ_KeyImageDocumentReference
  CZ_BundleImagingReport *-- "0..*" CZ_ConditionImage
  CZ_BundleImagingReport *-- "0..*" CZ_CarePlanImage

  CZ_DiagnosticReport --> CZ_CompositionImagingReport: composition


  CZ_CompositionImagingReport --> CZ_ImagingServiceRequest: extension[basedOn]
  CZ_CompositionImagingReport --> CZ_DiagnosticReport: extension[diagnosticReport]
  CZ_CompositionImagingReport --> CZ_Practioner: author[author]
  CZ_CompositionImagingReport --> CZ_DeviceObserver: author[authoring-device]
  CZ_CompositionImagingReport --> CZ_Practioner: attester[legalAuthenticator]
  CZ_CompositionImagingReport --> CZ_Practioner: attester[resultValidator]
  CZ_CompositionImagingReport --> CZ_OrganizationCore: custodian
  CZ_CompositionImagingReport --> CZ_PatientCore: subject
  CZ_CompositionImagingReport --> CZ_StudyImaging: section[imagingstudy]
  CZ_CompositionImagingReport --> CZ_ImagingServiceRequest: section[order]
  CZ_CompositionImagingReport --> CZ_ConditionImage: section[clinicalQuestion]
  CZ_CompositionImagingReport --> CZ_ProcedureImaging: section[procedure]
  CZ_CompositionImagingReport --> CZ_StudyImaging: section[comparison]
  CZ_CompositionImagingReport --> CZ_ObservationResultImaging: section[findings]
  CZ_CompositionImagingReport --> CZ_KeyImageDocumentReference: section[findings]
  CZ_CompositionImagingReport --> CZ_KeyImageDocumentReference: section[impression]
  CZ_CompositionImagingReport --> CZ_ObservationResultImaging: section[impression]
  CZ_CompositionImagingReport --> CZ_ConditionImage: section[impression]
  CZ_CompositionImagingReport --> CZ_CarePlanImage: section[recommendation]

```

The report is a FHIR bundle that includes CZ_CompositionImagingReport and CZ_DiagnosticReport resources and all resources in the tree of resources that referred to (see [$document operation](https://www.hl7.org/fhir/composition-operation-document.html)). During implementation, it is necessary to follow the obligatory rules described in the [Obligations](obligations.html) section.

### Description of content CZ_CompositionImagingReport

{% include composition-intro.md %}