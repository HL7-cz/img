ValueSet: CZ_ObservationCodeVs
Id: cz-observationCode-vs
Title: "CZ Observation code"
Description: "This value set includes all observation procedure code from SNOMED CT."
* insert SNOMEDCopyrightForVS
* ^experimental = false
* include codes from system $sct where concept is-a #71388002