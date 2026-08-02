ValueSet: CrossVersionMediaView
Id: media-view
Title: "Media View types - placeholder for cross-version extension"
Description: "Codes defined in SNOMED CT that can be used to record Media Recording views."
* ^language = #cs
* ^url = "https://ncez.mzcr.cz/terminology/ValueSet/media-view"
* ^version = "4.0.1"
* ^status = #active
* ^experimental = false
* ^date = "2025-11-19T17:50:08.889549Z"
* ^publisher = "Národní centrum elektronického zdravotnictví (NCEZ)"
* ^jurisdiction = urn:iso:std:iso:3166#CZ "Czechia"
* ^compose.inactive = false
* insert SNOMEDCopyrightForVS

* include codes from system $sct where concept is-a #260419006
