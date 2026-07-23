ValueSet: CZ_ImagingObservationValueVs
Id: cz-imaging-observationValue-vs
Title: "Czech Imaging Observation value codeable concept"
Description: "This value set includes all observation valuecodeable concept from SNOMED CT."
* ^language = #cs
* ^version = "1.0.0"
* ^status = #active
* ^date = "2024-01-01"
* ^publisher = "NCEZ"
* ^experimental = false
* ^url = "https://ncez.mzcr.cz/terminology/ValueSet/imaging-observationValue-cz"

* insert SNOMEDCopyrightForVS
* include codes from system $sctCZ where concept descendent-of #404684003
* include codes from system $sctCZ where concept descendent-of #410607006 
* include codes from system $sctCZ where concept descendent-of #260787004
