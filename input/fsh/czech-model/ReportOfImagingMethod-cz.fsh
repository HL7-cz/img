Logical: LogCzReportOfImagingMethodCz
Id: logReportOfImagingMethod
Title: "A.2.4 - Zpráva ze zobrazovacích metod"
Description: """Datové elementy Zprávy ze zobrazovacích metod"""


* ^language = #cs

* typModality 0..* CodeableConcept "A.2.4.1 - Typ modality" """Typ modality, která byla použita.
- Preferovany system: DICOM [ModalityCodelist]"""
* typZobrazovaciMetody 1..* CodeableConcept "A.2.4.2 - Typ zobrazovací metody" """Typ zobrazovací metody.
- Preferovany system: Valueset ČRK (ERTN) 
- Preferovany system: LOINC Imaging Document Codes"""
* duvod 0..* Base "A.2.4.3 - Důvod (indikace)" """Důvod (indikace)"""
* duvod.popis 0..1 string "A.2.4.3.1 - Popis důvodu" """Popis klinického stavu s uvedením důvodu, proč byla nařízena (indikována) zobrazovací metoda. Příklad: \"Kašel trvající 3 měsíce\"."""
* duvod.klasifikace 0..* CodeableConcept "A.2.4.3.2 - Klasifikace důvodu" """Kód důvodu provedení zobrazovací metody.
- Preferovany system: SNOMED CT [ReasonCodelist]"""
* klinickaOtazka 0..* string "A.2.4.4 - Klinická otázka" """Klinická otázka, na kterou má provedení zobrazovací metody odpovědět. Příklad: \"Podezření na nádor plic.\"."""
* castTela 0..* Base "A.2.4.5 - Část těla" """Část těla, která je předmětem vyšetření nebo výkonu. Musí být přítomen alespoň jeden z prvků Kód nebo Popis části těla."""
* castTela.code 0..1 CodeableConcept "A.2.4.5.1 - Kód části těla" """Kód klasifikace části těla, místa na/v těle.
- Preferovany system: SNOMED CT [BodyLocation|LocationICT-O-3]"""
* castTela.laterality 0..1 CodeableConcept "A.2.4.5.2 - Lateralita části těla" """Stranovost, dává-li smysl. (Umístění na straně těla, je-li třeba odlišit od podobného umístění na druhé straně těla. Pokud je přítomna lateralita, musí být přítomna i lokalizace těla.)
- Preferovany system: SNOMED CT [Laterality Codelists]"""
* castTela.description 0..1 string "A.2.4.5.3 - Popis části těla" """Lidsky čitelný popis umístění na těle."""
* procedura 0..* Base "A.2.4.6 - Výkon (procedura)" """Popis výkonu (procedury) vyjádřený kódem a/nebo textovým popisem. (Např. použité MR sekvence, projekce snímku...)"""
* procedura.duvod 0..* string "A.2.4.6.1 - Důvod výkonu" """Důvod provedení výkonu (procedury) formalizovaně nebo textovým popisem."""
* procedura.zahajeni 0..1 dateTime "A.2.4.6.2 - Zahájení výkonu (procedury)" """(Požadované) datum zahájení (a pokud možno čas zahájení) výkonu. Je povoleno uvést \"neurčité\" datum, např. pouze rok."""
* procedura.ukonceni 0..1 dateTime "A.2.4.6.3 - Ukončení výkonu (procedury)" """Datum ukončení (a pokud možno čas ukončení) výkonu. Je povoleno uvádět \"neurčité\" datum, např. pouze rok. Element datum ukončení se používá pouze u výkonů, které trvají určitou dobu a pak se použijí vždy. Pokud výkon stále pokračuje, hodnota se ponechá prázdná. U okamžitých nebo velmi krátce trvajících výkonů se element vynechává."""
* procedura.provedl 0..* HumanName "A.2.4.6.4 - Výkon provedl" """Zdravotnický pracovník a/nebo poskytovatel, který výkon provedl."""
* procedura.zapsal 0..1 HumanName "A.2.4.6.5 - Záznam o výkonu zapsal" """Zdravotnický pracovník, který pořídil záznam o výkonu a nese odpovědnost za jeho obsah."""
* procedura.misto 0..1 string "A.2.4.6.6 - Místo výkonu" """Místo (organizace) provedení výkonu (procedury). Uvádí se pouze pokud je odlišné od pracoviště provádějící obrazové vyšetření."""
* procedura.anatomickeZamereni 0..1 Base "A.2.4.6.7 - Anatomické zaměření výkonu" """Anatomické místo, na které je výkon zaměřen. Musí obsahovat alespoň jeden z prvků, buď Kód a/nebo lidsky čitelný Popis místa na/v těle."""
* procedura.anatomickeZamereni.kod 0..1 CodeableConcept "A.2.4.6.7.1 - Kód místa na/v těle" """Místo na/v těle, na které je výkon zaměřen.
- Preferovany system: SNOMED CT < 123037004 | Body structure 
- Preferovany system: ICD-O-3 International Classification of Diseases for Oncology, version 3 (Topography codes)"""
* procedura.anatomickeZamereni.lateralita 0..1 CodeableConcept "A.2.4.6.7.2 - Lateralita místa na těle" """Místo na straně těla, je-li třeba odlišit od podobného místa na druhé straně těla. Pokud je přítomna lateralita, musí být přítomna i lokalizace místa na/v těle.
- Preferovany system: SNOMED CT [Laterality Codelists]"""
* procedura.anatomickeZamereni.popis 0..1 string "A.2.4.6.7.3 - Popis místa na/v těle" """Lidsky čitelný popis místa na/v těle, na které je výkon zaměřen."""
* procedura.komplikace 0..* Base "A.2.4.6.8 - Komplikace během výkonu" """Jakékoli komplikace, které se vyskytly během výkonu nebo bezprostředně po ní. Ty se zpravidla sledují odděleně od poznámek, které obvykle popisují samotný výkon, nikoli problémy 'po zákroku'."""
* procedura.komplikace.kod 0..* CodeableConcept "A.2.4.6.8.1 - Komplikace formalizovaně" """Uvedení komplikací během výkonu nebo bezprostředně po ní pomocí kódovacího systému.
- Preferovany system: SNOMED CT"""
* procedura.komplikace.popis 0..1 string "A.2.4.6.8.2 - Popis komplikací" """Textový (narativní) popis komplikací během výkonu nebo bezprostředně po něm."""
* procedura.komentar 0..* Base "A.2.4.6.9 - Komentář k výkonu (proceduře)" """Poznámky a komentáře k výkonu (proceduře)."""
* procedura.komentar.autor 0..1 string "A.2.4.6.9.1 - Autor komentáře" """Autor komentáře."""
* procedura.komentar.text 1..* string "A.2.4.6.9.2 - Text komentáře" """Prostý nebo formátovaný textový obsah komentáře."""
* procedura.komentar.datumACas 0..1 dateTime "A.2.4.6.9.3 - Datum a čas" """Kdy byl komentář zapsán. Tento prvek musí být zahrnut, pokud informaci nelze odvodit z kontextu (např. z informací o návštěvě apod.)."""
* procedura.pouziteZarizeni 0..* Base "A.2.4.6.10 - Použitý zdravotnický prostředek" """Zdravotnický prostředek použitý během výkonu (procedury)."""
* procedura.pouziteZarizeni.jmeno 0..1 string "A.2.4.6.10.1 - Název zdravotnického prostředku" """Název značky zařízení nebo softwaru."""
* procedura.pouziteZarizeni.model 0..1 string "A.2.4.6.10.2 - Model zdravotnického prostředku" """Model zařízení nebo verze softwaru."""
* procedura.pouziteZarizeni.iden 0..* Identifier "A.2.4.6.10.3 - Identifikátor zdravotnického prostředku" """Jedinečné identifikátory přidělené zařízení výrobcem, jinou organizací nebo vlastníkem, například sériové číslo. Často používaným kódovacím systémem je GTIN."""
* procedura.pouziteZarizeni.typ 0..1 CodeableConcept "A.2.4.6.10.4 - Typ zdravotnického prostředku" """Kód typu výrobku.
- Preferovany system: SNOMED CT 
- Preferovany system: EMDN"""
* procedura.pouziteZarizeni.popis 0..1 string "A.2.4.6.10.5 - Popis zdravotnického prostředku" """Další volný textový popis/specifikace zařízení."""
* procedura.pouziteZarizeni.vyrobce 0..1 string "A.2.4.6.10.6 - Výrobce zdrav. prostředku" """Název výrobce zařízení nebo softwaru."""
* procedura.pouziteZarizeni.udi 0..1 Identifier "A.2.4.6.10.7 - UDI zdrav. prostředku" """UDI zdrav. prostředku umístěný na štítek nebo obal prostředku."""
* procedura.kategorie 0..* CodeableConcept "A.2.4.6.11 - Kategorie výkonu (procedury)" """Metoda nebo technika, která byla použita k provedení zákroku, např. přístup, výplach, tlak atd.
- Preferovany system: SNOMED CT [ProcedureCategoryCodelist]"""
* procedura.kod 1..1 CodeableConcept "A.2.4.6.12 - Výkon (procedura)" """Kód, případně název procedury.
- Preferovany system: SNOMED CT [ProcedureCodelist]"""
* procedura.dosazeniVysledku 0..1 CodeableConcept "A.2.4.6.13 - Dosažení výsledku" """Vyřešily se důvody, proč byl zákrok proveden? 'Nevyřešily' … 'úspěšný', 'neúspěšný', 'částečně úspěšný'
- Preferovany system: SNOMED CT"""
* procedura.kodOnemocneni 0..* CodeableConcept "A.2.4.6.14 - Onemocnění - důvod výkonu" """Podrobný popis či odkaz na informaci o zdravotním stavu/zdravotním problému pacienta, který je důvodem pro provedení výkonu (procedury).
- Preferovany system: MKN-10 
- Preferovany system: Orphacode"""
* procedura.souvisejiciProstredek 0..* string "A.2.4.6.15 - Prostředek související" """Zdravotnický prostředek, který se implantuje, vyjímá nebo se s ním jinak manipuluje (kalibrace, výměna baterie, nasazení protézy, přiložení odsávačky na ránu atd.) jako stěžejní část zákroku."""
* medikace 0..* Base "A.2.4.7 - Medikace" """Jakákoliv látka podaná v souvislosti s daným výkonem (typicky kontrastní látka, ale může se jednat i o jiný typ léku, např. lék na snížení pohyblivosti střev)"""
* medikace.jmeno 1..1 string "A.2.4.7.1 - Podaný léčivý přípravek" """Podaný léčivý přípravek v souvislosti s daným vyšetřením (typicky kontrastní látka, ale může se jednat i o jiný typ léku, např. lék na snížení pohyblivosti střev). Obvykle se jedná o léky. Potraviny, krevní přípravky, pomůcky a obvazy nespadají striktně do kategorie léků, ale mohou být také zaznamenány."""
* medikace.davka 0..1 string "A.2.4.7.2 - Dávkování" """Podaná dávka léčivého přípravku."""
* medikace.cestaPodani 0..1 CodeableConcept "A.2.4.7.3 - Cesta podání účinné látky" """Způsob, jakým pacient přišel do kontaktu s účinnou látkou, nebo způsob, jakým byla účinná látka podána.
- Preferovany system: SNOMED CT: <284009009 | Route of administration value"""
* medikace.davkovaciZarizeni 0..* string "A.2.4.7.4 - Dávkovací zařízení" """Přístroj použitý při podávání léku pacientovi. Například konkrétní infuzní pumpa."""
* medikace.sarze 0..1 string "A.2.4.7.5 - Šarže" """Informace, které se týkají balených přípravků. Přidělené číslo šarže určeného přípravku. Kdy vyprší platnost této konkrétní šarže přípravku."""
* medikace.datumACasZacatku 0..1 dateTime "A.2.4.7.6 - Datum a čas nebo interval startu podání" """Konkrétní datum/čas nebo časový interval podání. Datum zahájení: Jedná se o čas, kdy bylo podávání zahájeno."""
* medikace.datumACasKonce 0..1 dateTime "A.2.4.7.7 - Datum a čas nebo interval konce podání" """Datum ukončení: Čas, kdy skončila doba podávání (nebo měla skončit)."""
* medikace.podal 0..1 HumanName "A.2.4.7.8 - Podal" """Důvod podání léčivého přípravku. Stav pacienta, který byl důvodem podání léčivého přípravku, nebo pozorování, které podporuje, proč byl léčivý přípravek podán."""
* medikace.duvodPodani 0..* string "A.2.4.7.9 - Důvod podání" """Důvod podání léčivého přípravku. Stav pacienta, který byl důvodem podání léčivého přípravku, nebo pozorování, které podporuje, proč byl léčivý přípravek podán."""
* medikace.komentar 0..1 string "A.2.4.7.10 - Komentář" """Komentáře k podání léčivého přípravku."""
* medikace.datumACasZapisu 1..1 dateTime "A.2.4.7.11 - Datum a čas zápisu" """Datum, ke kterému jsou tyto informace o podání léčivého přípravku zadány."""
* nezadouciReakce 0..* Base "A.2.4.8 - Nežádoucí reakce" """Nežádoucí reakce související s medikací nebo výkonem."""
* nezadouciReakce.reakce 1..* CodeableConcept "A.2.4.8.1 - Reakce" """Reakce, které jsou projevem alergie nebo nesnášenlivosti. Jedná se o příhody, které se mohou vyskytnout nebo se vyskytly v minulosti jako reakce na původce alergie nebo intolerance.
- Preferovany system: SNOMED CT"""
* nezadouciReakce.zavaznostReakce 0..1 CodeableConcept "A.2.4.8.2 - Závažnost reakci" """Závažnost reakce v důsledku medikace nebo expozice.
- Preferovany system: SNOMED CT 'Mírná', 'Středně těžká', 'Těžká'"""
* nezadouciReakce.datumACas 0..1 dateTime "A.2.4.8.3 - Datum a čas" """Datum a čas, kdy k reakci došlo. Může to být také jen datum nebo částečné datum v případě, že přesné datum není známo."""
* nezadouciReakce.popis 0..1 string "A.2.4.8.4 - Popis" """Textový popis reakce jako celku."""
* vysledekZobrazovaciMetody 1..1 Base "A.2.4.9 - Výsledek zobrazovací metody" """Oddíl Zprávy ze zobrazovacích metod obsahující narativní výsledek a volitelně formalizovaný výsledek s využitím kódovacích systémů"""
* vysledekZobrazovaciMetody.narativniVysledek 1..1 string "A.2.4.9.1 - Narativní výsledek" """Souhrnný textový (narativní) popis výsledků zobrazovacích metod"""
* vysledekZobrazovaciMetody.formalizovanyVysledek 0..* Base "A.2.4.9.2 - Formalizovaný výsledek" """Formalizovaný strukturovaný výsledek zobrazovací metody"""
* vysledekZobrazovaciMetody.formalizovanyVysledek.poznamka 0..* string "A.2.4.9.2.1 - Poznámka" """Poznámka k výsledku. Měla by mít autora a časovou značku."""
* vysledekZobrazovaciMetody.formalizovanyVysledek.skupinaPozorovani 0..* string "A.2.4.9.2.2 - Skupina pozorování (měření)" """Jedná se o mechanismus seskupování. Pozorování může být součástí skupiny pozorování, například testovacího panelu, které se objednávají, provádějí nebo vykazují společně."""
* vysledekZobrazovaciMetody.formalizovanyVysledek.slozkaPozorovani 0..* string "A.2.4.9.2.3 - Složka pozorování (měření)" """Některá pozorování mají více dílčích pozorování. Tato složková pozorování jsou vyjádřena jako samostatné dvojice kódů hodnot, které sdílejí stejné atributy. Příkladem jsou systolická a diastolická složková pozorování pro měření krevního tlaku a více složkových pozorování pro genetická pozorování."""
* vysledekZobrazovaciMetody.formalizovanyVysledek.vzorek 0..1 string "A.2.4.9.2.4 - Vzorek" """Informace o vzorku, který byl při pozorování použit."""
* vysledekZobrazovaciMetody.formalizovanyVysledek.referencniRozsahy 0..1 string "A.2.4.9.2.5 - Referenční rozsahy" """Informace o referenčním rozmezí relevantním pro cílovou populaci."""
* vysledekZobrazovaciMetody.formalizovanyVysledek.duvodAbsence 0..1 string "A.2.4.9.2.6 - Důvod absence hodnoty" """Důvod, proč chybí očekávaná hodnota pozorování."""
* vysledekZobrazovaciMetody.formalizovanyVysledek.hodnotaPozorovani 0..1 string "A.2.4.9.2.7 - Hodnota pozorování (měření)" """Výsledná hodnota pozorování. Mohou existovat různé typy hodnot, buď číselné, textové, kódované, nebo mohou být přítomny nezpracované údaje."""
* vysledekZobrazovaciMetody.formalizovanyVysledek.interpretace 0..* string "A.2.4.9.2.8 - Interpretace výsledku" """Interpretace výsledku pozorování (měření)."""
* vysledekZobrazovaciMetody.formalizovanyVysledek.metodaPozorovani 0..1 string "A.2.4.9.2.9 - Metoda pozorování (měření)" """Informace o metodě, principu nebo mechanismu pozorování."""
* vysledekZobrazovaciMetody.formalizovanyVysledek.odvozenaZ 0..* string "A.2.4.9.2.10 - Odvozeno z" """Zdroj, z něhož je tato hodnota pozorování odvozena. Například měření plodu na základě ultrazvukového snímku."""
* vysledekZobrazovaciMetody.formalizovanyVysledek.pozorovanaCastTela 0..1 string "A.2.4.9.2.11 - Pozorovaná část těla" """Specifikace pozorované části těla."""
* vysledekZobrazovaciMetody.formalizovanyVysledek.stavPozorovani 0..1 string "A.2.4.9.2.12 - Stav pozorování" """Stav pozorování jako konečné, předběžné nebo změněné."""
* vysledekZobrazovaciMetody.formalizovanyVysledek.kodPozorovani 1..1 CodeableConcept "A.2.4.9.2.13 - Kód pozorování" """Kódovaná informace o typu pozorování.
- Preferovany system: SNOMED CT"""
* vysledekZobrazovaciMetody.formalizovanyVysledek.kategoriePozorovani 0..* string "A.2.4.9.2.14 - Kategorie pozorování" """Klasifikace obecné kategorie pozorování, např. zobrazovací, laboratorní, životní funkce atd."""
* vysledekZobrazovaciMetody.formalizovanyVysledek.pouziteZarizeni 0..* string "A.2.4.9.2.15 - Použité zařízení k pozorování" """Zařízení použité k provedení pozorování a získání výsledku."""
* vysledekZobrazovaciMetody.formalizovanyVysledek.datumACas 0..1 dateTime "A.2.4.9.2.16 - Datum a čas pozorování" """Datum a čas nebo období pozorování."""
* vysledekZobrazovaciMetody.datumACas  0..1 dateTime "A.2.4.9.3 - Datum a čas uvolnění výsledku" """Datum a čas, kdy bylo pozorování zpřístupněno, obvykle po ověření. """
* vysledekZobrazovaciMetody.autor 0..1 HumanName "A.2.4.9.4 - Autor výsledku" """Zdravotnický pracovník a/nebo organizace poskytovatele zdravotní péče, kde nebo kým bylo pozorování autorizováno."""
* zaver 0..1 Base "A.2.4.10 - Závěr" """Závěr shrnuje nejdůležitější nálezy a/nebo diagnózy, které bylo učiněno na základě pozorování zobrazovacích vyšetření (případně s přihlédnutím k jiným klinickým informacím). Tento oddíl může obsahovat kódované hodnocení, například kategorie BI-RADS nebo ekvivalentní."""
* zaver.text 1..1 string "A.2.4.10.1 - Text závěru" """Volným textem popis klinického závěru."""
* zaver.kod 0..1 CodeableConcept "A.2.4.10.2 - Kódovaný závěr" """Kódované klinické závěry - stavy nebo pozorování (jeden nebo druhý). Běžně používané systémy hodnocení (TNM, Bi-Rads, Li-Rads atd.) lze vyjádřit jako stav se stagingem (typicky TNM, ale i jiné) nebo jako kódované pozorování (Bi-Rads, Li-Rads atd.).
- Preferovany system: TNM, Bi-Rads, Li-Rads"""
* doporuceni 0..1 string "A.2.4.11 - Doporučení" """Tento oddíl obsahuje doporučení pro následná vyšetření nebo postupy, které vyplynuly z výsledků a/nebo závěrů. Strukturovaná část této položky je shodná se stejnojmennou položkou v propouštěcí zprávě."""
* textoveCastiDokumentu 0..1 Base "A.2.4.12 - Textové části dokumentu" """Souhrnné textové (narativní) části dokumentu."""
* textoveCastiDokumentu.kompletniZprava 0..1 string "A.2.4.12.1 - Kompletní zpráva o vyšetření" """Kompletní zpráva o vyšetření, tak jak byla vydána"""
* textoveCastiDokumentu.komentare 0..1 string "A.2.4.12.2 - Komentáře, interpretace a doporučení" """Komentáře, např. textové interpretace nebo doporučení, které jsou součástí zprávy o vyšetření."""



