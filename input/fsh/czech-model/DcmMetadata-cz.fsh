Logical: LogCzDcmMetadataCz
Id: logDcmMetadata
Title: "A.2.7 - DICOM metadata"
Description: """Vybrané relevantní údaje z DICOM studie."""


* ^language = #cs

* studyInstanceUID 1..1 id "A.2.7.1 - Study Instance UID - DICOM tag (0020,000D)" """Celosvětově jedinečný identifikátor studie. Pokud je v ImagingStudy přítomen jeden nebo více prvků série, musí existovat jeden identifikátor DICOM Study UID."""
* pocetSerii 0..1 integer "A.2.7.2 - Počet sérií - DICOM tag (0020,1000)" """Počet sérií ve studii. Tento prvek by měl být přítomen, pokud v rámci studie byla vytvořena alespoň jedna série. Všechny série nemusí být dostupné pro výměnu (např. důvodu dostupnosti zdrojů, bezpečnosti nebo jiných faktorů)."""
* pocetInstanci 0..1 integer "A.2.7.3 - Počet instancí - DICOM tag (0020,1002)" """Počet instancí ve studii. Všechny instance neumí být dostupné pro výměnu."""
* informaceOSubjektu 1..1 logSubjectCz "A.2.7.4 - Informace o subjektu (pacientovi) - DICOM tag: (0010,0010), (0010,0020), (0010,0030)" """Subjekt, obvykle pacient, obrazové studie."""
* pozadovanaProceduraId 0..* string "A.2.7.5 - Požadavek na zobrazovací metodu - DICOM tag (0040,1001)" """Imaging request - The diagnostic request that led to the performance of this imaging study."""
* zadatel 0..1 Base "A.2.7.6 - Žadatel (objednavatel) - DICOM tag (0032,1032), (0032,1031)" """Objednatel služby (indikující lékař nebo lékař odesílající pacienta)."""
* zadatel.identifikator 1..* Identifier "A.2.7.6.1 - Identifikátor žadatele (objednavatele) - DICOM tag (0032,1031)" """Identifikátor objednatele služby (indikující lékař nebo lékař odesílající pacienta)."""
* zadatel.jmeno 1..1 HumanName "A.2.7.6.2 - Jméno žadatele (objednavatele) - DICOM tag (0032,1032)" """Jméno objednatele služby (indikující lékař nebo lékař odesílající pacienta)."""
* zakrok 0..1 string "A.2.7.7 - Zakrok - DICOM tag (0040,0007)" """Informace o zákroku, jehož součástí byla tato obrazová studie. Zákrok je úkon, který je nebo byl proveden na pacientovi nebo pro pacienta. Může se jednat o fyzický zásah, jako je operace, nebo o méně invazivní zásah, jako jsou dlouhodobé služby, poradenství nebo hypnoterapie."""
* hodnotitel 0..1 Base "A.2.7.8 - Hodnotitel - DICOM tag: (0008,1050), (0008,1052)" """Zdravotnický pracovník, který studii vyhodnotil (interpretoval snímky nebo jiný obsah)."""
* hodnotitel.identifikator 1..* Identifier "A.2.7.8.1 - Identifikátor hodnotitele - DICOM tag (0008,1052)" """Identifikátor zdravotnického pracovníka, který studii vyhodnotil (interpretoval snímky nebo jiný obsah)."""
* hodnotitel.jmeno 1..1 HumanName "A.2.7.8.2 - Jméno hodnotitel - DICOM tag (0008,1050)" """Jméno zdravotnického pracovníka, který studii vyhodnotil (interpretoval snímky nebo jiný obsah)."""
* jmenoUmisteni 0..* string "A.2.7.9 - Umístění obrazové studie u poskytovatele - DICOM tag (0008,1040)" """Místo (organizace), kde byla studie provedena."""
* radiofarmaceutickeOzareni 0..* id "A.2.7.10 - Radiofarmaceutické ozáření - DICOM tag (0054,0016)" """Radiační expozice vnitřním ozářením (po podání radiofarmak, vyjádřená jako hodnota ve standardních jednotkách SI [Bq])."""
* serie 0..* Base "A.2.7.11 - Série obrazového vyšetření" """Informace z jednotlivých sérii (například jejich názvy)."""
* serie.cisloSerie 0..* id "A.2.7.11.1 - Číslo série - DICOM tag (0020,0011)" """Cislo identifikujici sérii."""
* serie.popisSerie 0..* string "A.2.7.11.2 - Popis série - DICOM tag (0008,103E)" """Popis série."""
* popisStudie 0..1 string "A.2.7.12 - Popis studie - DICOM tag (0008,1030)" """Popis studie nebo klasifikace provedené studie."""
* fazeStudie 0..* string "A.2.7.13 - Fáze studie" """Podmodel obsahující informace o jednotlivých fázích vyšetření (typicky pro CT - např. nativ, arteriální fáze) a umožňující strukturovaný záznam informací o expozici ionizujícímu záření během obrazového vyšetření v těchto fázích."""
* duvodStudie 0..* string "A.2.7.14 - Důvod studie - DICOM tag (0032,1030)" """Důvod, proč byla studie provedena."""
* poznamka 0..* string "A.2.7.15 - Poznámka - obsoleted  DICOM tag (0032,4000)" """Komentář definovaný uživatelem."""
* studyEndpoint 0..* string "A.2.7.16 - Study end-point" """Síťová služba poskytující přístup ke studii, např. dotaz, zobrazení nebo vyhledání."""
* modalita 0..* CodeableConcept "A.2.7.17 - Modalita - DICOM tag (0008,0060)" """Seznam všech modalit, které byly použity pro získání dané studie."""
* stav 1..1 string "A.2.7.18 - Stav" """Aktuální stav obrazové studie DICOM."""
* accessionNumber 1..1 id "A.2.7.19 - Accession Number - DICOM tag (0008,0050)" """ID požadavku na službu zobrazovací metody. Unikátní v rámci dané organizace."""
* zahajeno 0..1 dateTime "A.2.7.20 - Zahájeno - DICOM tag:(0008,0020), (0008,0030)" """Datum a čas, kdy byla studie zahájena."""