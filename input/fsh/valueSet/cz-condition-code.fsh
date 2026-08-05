ValueSet:   ValueSetConditionProblemDiagnosisCodes
Id:	        condition-code
Title:	    "ValueSet: Condition/Problem/Diagnosusis codes"
Description:   """SNOMED CT based valueset for Condition/Problem/Diagnosis codes"""
* ^language = #cs
* ^url = "https://ncez.mzcr.cz/terminology/ValueSet/condition-code"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2025-11-19T17:50:08.889549Z"
* ^publisher = "Národní centrum elektronického zdravotnictví (NCEZ)"
* ^jurisdiction = urn:iso:std:iso:3166#CZ "Czechia"
* ^compose.inactive = false
* insert SNOMEDCopyrightForVS

* include codes from system $sct where concept descendent-of #404684003   //findings
* $sct#160245001  // "No current problems or disability"

