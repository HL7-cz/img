ValueSet:   CZ_ParticipationTypeVS
Id:	        cz-participation-type
Title:	    "Participation Type Value Set"
Description:   """Participation type for Imaging Study series performer, it extends on the base set defined in the FHIR specification."""

* ^language = #cs
* ^version = "1.0.0"
* ^status = #active
* ^date = "2024-01-01"
* ^publisher = "NCEZ"
* ^experimental = false
* ^url = "https://ncez.mzcr.cz/terminology/ValueSet/participationType-cz"

* include codes from valueset http://hl7.org/fhir/ValueSet/series-performer-function
* http://terminology.hl7.org/CodeSystem/v3-ParticipationType|5.0.0#CST	"custodian"