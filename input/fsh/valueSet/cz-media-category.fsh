ValueSet: CZ_MediaCategory
Id: cz-media-category
Title: "Digital Media Category (CZ)"
Description: "Digital Media Category"

* insert SetFmmandStatusRule ( 0, draft )
* ^experimental = false
* ^jurisdiction = $iso3166#CZ
* ^language = #cs-CZ
* ^identifier.system = "http://terminology.hl7.org/CodeSystem/media-category|4.0.0"
// add value * ^identifier.value = "urn:oid:1.2.203.24341.11.1.1"
* ^version = "0.1.0"
//* ^status = #draft
//* ^date = "2022-08-11"

* $media-category#image "Obraz"
* $media-category#video "Video"
* $media-category#audio "Zvuk"
