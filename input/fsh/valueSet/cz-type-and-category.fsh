ValueSet: ImagingDocumentTypes
Id: cz-imaging-document-types-vs
Title: "Types of image complement documents"
Description: "Types of image complement documents"
* ^language = #cs
* ^extension.url = "http://hl7.org/fhir/tools/StructureDefinition/web-source"
* ^extension.valueUrl = "https://termtest.mzcr.cz/fhir/ValueSet/imaging-document-types"
* ^url = "https://ncez.mzcr.cz/terminology/ValueSet/imaging-document-types"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2025-11-19T17:50:08.889549Z"
* ^publisher = "National eHealth Center (NCEZ)"
* ^compose.inactive = false

* include codes from system $loinc where STATUS = "ACTIVE" and SCALE_TYP = "Doc" and CLASS = "RAD"

ValueSet: DocumentCategory
Id: cz-document-category-vs
Title: "Categories of image complement documents"
Description: "Categories of image complement documents"
* ^language = #cs
* ^extension.url = "http://hl7.org/fhir/tools/StructureDefinition/web-source"
* ^extension.valueUrl = "https://termtest.mzcr.cz/fhir/ValueSet/document-category"
* ^url = "https://ncez.mzcr.cz/terminology/ValueSet/document-category"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2025-11-19T14:36:29.065962Z"
* ^publisher = "National eHealth Center (NCEZ)"
* ^compose.inactive = false

* $loinc#107904-5 "Administrativní záznamy"
* $loinc#18682-5 "Záznamy zdravotnické záchranné služby"
* $loinc#11503-0 "Lékařské záznamy"
* $loinc#11543-6 "Ošetřovatelské záznamy"
* $loinc#26436-6 "Laboratorní nálezy"
* $loinc#18726-0 "Nálezy zobrazovacího komplementu"
* $loinc#57133-1 "Žádanky"
