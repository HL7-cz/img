Logical: LogCzKeyImagesAttachmentCz
Id: logKeyImagesAttachment
Title: "A.2.6 - Média (přílohy)"
Description: """Klíčové snímky související s touto zprávou."""

* insert SetFmmandStatusRule ( 1, draft )
* ^language = #cs

* vytvoreni 0..1 dateTime "A.2.6.1 - Datum a čas vytvoření" """Datum a čas vytvoření nebo období, ve kterém byla média vytvořena."""
* vydani 0..1 dateTime "A.2.6.2 - Datum a čas vydání" """Datum a čas, kdy byl tento zdroj zpřístupněn."""
* autor 0..1 Base "A.2.6.3 - Vytvořil" """Osoba, která snímek vytvořila."""
* autor.identifikator 1..* Identifier "A.2.6.3.1 - Identifikátor autora" """Identifikátor autora."""
* autor.jmeno 1..1 HumanName "A.2.6.3.2 - Jméno autora" """Jméno a příjmení autora."""
* autor.idOrganizace 0..* Identifier "A.2.6.3.3 - ID organizace autora" """ID organizace autora."""
* autor.organizace 1..1 Base "A.2.6.3.4 - Organizace autora" """Organizace autora."""
* autor.datumACas 1..1 dateTime "A.2.6.3.5 - Date Time" """Datum a čas poslední aktualizace dokumentu autorem."""
* castTela 0..1 CodeableConcept "A.2.6.4 - Část těla" """Pozorovaná část těla."""
* vyskaMedia 0..1 integer "A.2.6.5 - Media height" """Výška snímku v pixelech (fotografie/video)."""
* sirkaMedia 0..1 integer "A.2.6.6 - Media width" """Šířka snímku v pixelech (fotografie/video)."""
* ramecMedia 0..1 integer "A.2.6.7 - Media frames" """Počet snímků na fotografii, ve videu či v PDF."""
* dobaTrvaniZaznamu 0..1 dateTime "A.2.6.8 - Doba trvání záznamu" """Doba trvání záznamu v sekundách - pro zvuk a video."""
* priloha 1..1 Attachment "A.2.6.9 - Příloha" """Přímo vložená data nebo odkaz na zdroj dat přílohy."""
* poznamka 0..1 string "A.2.6.10 - Poznámka" """Obsahuje volný text, jeho autora a datum a čas jeho vytvoření."""
* pohled 0..1 CodeableConcept "A.2.6.11 - Pohled" """Název projekce, např. boční nebo předozadní (AP)."""
* modalita 0..1 CodeableConcept "A.2.6.12 - Modalita" """Typ akvizičního zařízení/procesu."""
* zarizeni 0..1 CodeableConcept "A.2.6.13 - Zařízení" """Zařízení použité ke sběru médií."""
* typMedia 0..1 CodeableConcept "A.2.6.14 - Typ média" """Klasifikace médií, např. obraz, video nebo zvuk."""