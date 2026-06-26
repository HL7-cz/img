Extension: CZ_AnatomicalRegionExtension
Id: cz-anatomical-region-extension
Title: "Extension: Anatomical Region"
Description: "The anatomical region in an ImagingStudy instance. This is additional information next to ImagingStudy.series.bodySite."
Context: DiagnosticReport, ImagingStudy

* value[x] only CodeableConcept
* valueCodeableConcept from ValueSetAnatomicalRegion (required)
  * coding 1..*