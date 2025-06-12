ValueSet: CZ_ProcedureTypeVs
Id: cz-procedure-type
Title: "CZ Procedure Type"
Description: "This value set includes all imaging procedure types."
* insert SNOMEDCopyrightForVS
* ^experimental = false
* include codes from system $sct where concept is-a #363679005
* exclude $sct#363679005