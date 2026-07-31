ValueSet: CZ_ImagingObservationCodeVs
Id: imaging-observationCode-vs
Title: "Czech Imaging Observation code"
Description: "This value set includes all observation procedure code from SNOMED CT."
* ^language = #cs
* ^version = "1.0.0"
* ^status = #active
* ^date = "2024-01-01"
* ^publisher = "NCEZ"
* ^experimental = false
* ^url = "https://ncez.mzcr.cz/terminology/ValueSet/imaging-observationCode-vs"

* insert SNOMEDCopyrightForVS
* include codes from system $sct where concept descendent-of #363679005
* include codes from system $sct where concept descendent-of #363787002
