ValueSet: CZ_ObservationValueVs
Id: cz-observationValue-vs
Title: "CZ Observation value codeable concept"
Description: "This value set includes all observation valuecodeable concept from SNOMED CT."
* insert SNOMEDCopyrightForVS
* ^experimental = false
* include codes from system $sct where concept descendent-of #404684003
* include codes from system $sct where concept descendent-of #410607006 
* include codes from system $sct where concept descendent-of #260787004