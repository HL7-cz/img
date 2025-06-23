Extension: ModalityCz
Id:   modality-cz
Title: "DocumentReference.modality extension for R4"
Description: "Extension to backport DocumentReference.modality in R4."
* ^context.type = #element
* ^context.expression = "DocumentReference"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_33.html (extensible)
