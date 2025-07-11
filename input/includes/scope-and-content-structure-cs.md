### Popis základních částí obrazové zprávy

#### Informace o žádance (objednávce)

Zobrazovací metody jsou prováděny na vyžádání (obvykle) indikujícím lékařem. Žádanka by měla obsahovat také zdůvodnění vyšetření. Žádanky (objednávky) chodí v listinné podobě nebo elektronicky. Vždy jsou zaevidované v informačním systému (RIS/HIS/AIS). Ze žádanek se pak tvoří jednotlivé pracovní požadavky pro modality (přístroje). Údaje ze žádanek se obvykle přebírají do ZPRÁV automatizovaně.

#### Důvod vyžádání (indikace)

Důvod vyžádání zdravotní služby. Zpráva může reagovat na více uvedených důvodů. Důvod vyžádání by měl být obsažen v žádance (objednávce).

#### Informace o vzorku

Informace o vzorku, pokud je předmětem vyšetření vzorek materiálu. Biologický druh se týká vzorků odebraných jiným než lidským subjektům. Materiál odebraného vzorku, čas odběru, anatomické umístění, morfologické abnormality anatomického umístění, odkud je materiál odebrán, například „rána“ nebo „vřed“ apod. Pro většinu údajů je navržen kódový systém SNOMED CT.

#### Výkon (procedura)

**Typ výkonu**<br>
Klasifikace vyšetření. V současnosti se využívá klasifikace ERTN, ke které ÚZIS udržuje mapování na kódy výkonů číselníku VZP.
Navrženo je i používání LOINC „Imaging Document Codes“ nebo zajistit také mapování české radiologické klasifikace (ČRK) na LOINC.

**Část těla**<br>
Popis části těla, případně lateralita („stranovost“), na které je prováděn výkon. Strukturovaně nebo minimálně volným textem.

**Modalita**<br>
Zobrazovací modalita (zkratka), která provedla obrazový záznam. DICOM Standards PS 3.3-2011, Section C.7.3.1.1.1

**Důvod provedení**<br>
Důvod provedení výkonu, uvedený zdravotnickým pracovníkem odpovědným za provedení výkonu. Může být jiný, než který byl uveden v žádance indikujícím lékařem, nebo jej doplňuje.

**Technika provedení výkonu**<br>
Popis technického provedení zobrazovací metody (např. použité MR sekvence, projekce snímku atd.). Obsahuje navíc kódované položky. Popis technického provedení lze provézt i formalizovaným zápisem, tj. strukturovaně, ale minimálně (povinně) volným textem.
Popis technického provedení obsahuje také informace o podání látky, např. kontrastní látky nebo jiného léčivého přípravku podaného v souvislosti s výkonem (např. kontrastní látka nebo lék na uklidnění apod.). Povinně musí být uveden min. název léčivého přípravku, dávka a datum a čas podání. Vznikne-li po podání nežádoucí reakce, musí se zaznamenat také informace o nežádoucí reakci.

**Výsledky**<br>
Popis výsledků provedených výkonů (vyšetření) musí být minimálně volným textem a kód typu pozorování (SNOMED CT).

**Závěr**<br>
Závěr shrnuje nejdůležitější nálezy a/nebo diagnózy, které byly učiněny na základě výsledků zobrazovací metody (případně s přihlédnutím k jiným klinickým informacím). Tento oddíl může obsahovat volným textem popis klinického závěru a/nebo kódované hodnocení, například kategorie BI-RADS nebo ekvivalentní.

**Doporučení**<br>
Doporučení může obsahovat např. doporučení následných vyšetření nebo postupů, které vyplynuly z výsledků a/nebo závěrů. Strukturovaná část této položky je shodná se stejnojmennou položkou v propouštěcí zprávě.

#### Předchozí výkony

Odkaz na související předchozí provedené zobrazovací metody, např. pro porovnání výsledků nebo trendů, nebo na starší verzi Zprávy změněnou touto Zprávou. Příslušná Zpráva musí patřit stejnému pacientovi. Návrh nepředepisuje způsob implementace, jakým uživatelským způsobem budou informace o předchozích vyšetřeních připojována. Možná je i poznámka volným textem.

#### Média (jiné přílohy)

Klíčové snímky související s touto Zprávou. Může být více příloh. Kromě metadat popisujících jednotlivá připojená média může být přílohou skutečný obsah média (inline) nebo přímý odkaz na zdrojový soubor média. Kromě metadat může být k příloze zadán volný text. Návrh nepředepisuje způsob implementace, jakým uživatelským způsobem budou média připojována. Součástí médií, tedy příloh, může být také výstupy z přístrojů ve formě obrázků (např. křivky EKG, snímky z mikroskopu apod.) a také důvěryhodná forma dokumentu („otisk“ dokumentu PDF/A s kvalifikovaným podpisem).

#### DICOM metadata

Vybrané relevantní údaje z DICOM studie bez obrazových dat. Cílem je, aby údaje byly dostupné pro všechny uživatele bez nutnosti přenosu celých DICOM obrazových studií a bez nutnosti software umožňujícího čtení z DICOM dat z obrazových studií. Údaje, které jsou součástí DICOM dat se nepřepisují, ale připojí se ke Zprávě (do Zprávy) automaticky. „Konzument“ Zprávy dostane informace o obrazové studii a může získat jen náhledy na některé série, některé snímky a to „proklikem“ ze zprávy apod.
