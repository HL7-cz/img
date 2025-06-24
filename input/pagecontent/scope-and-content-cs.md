## Účel

Účelem dokumentu je vytvoření národní, funkční a technické specifikace pro výměnu výsledků zobrazovacích vyšetření. Současně musí navržený standard zaručovat základní kompatibilitu s obdobnými standardy, které vznikají v rámci evropského projektu X-eHealth a dalšími podobnými projekty. Koncept funkční specifikace proto vychází z evropské specifikace výsledků zobrazovacích vyšetření přijaté Evropskou sítí elektronického zdravotnictví (eHN) a v rámci cílů tohoto projektu je prováděna jeho adaptace na podmínky českého zdravotnictví tak, aby bylo možné jeho praktické použití v České republice.
Dokument se zaměřuje zejména na oblast sémantické interoperability, ale zpracovává také některé legální, regulační a organizační aspekty, které jsou pro výměnu dat v rámci domény diagnostických zobrazovacích metod důležité.

## Rozsah

Tento dokument se zaměřuje na aspekty interoperability výsledků zobrazovacích metod vyšetření, typicky radiologických vyšetření či vyšetření nukleární medicíny, ale i vyšetření prováděná klinickými lékaři, jako je například gynekologický ultrazvuk. Typické pro zobrazovací metody vyšetření je pořizování obrazového záznamu, v současné době především v digitální podobě, které jsou posuzovány zdravotnickými pracovníky se specializací na tyto vyšetřovací metody. Zpráva ze zobrazovacích metod obsahuje informace o vlastním vyšetření a jeho výsledu v písemné podobě a je součástí zdravotnické dokumentace. Zpráva se uchovává jako součást zdravotnické dokumentace pacienta vedené poskytovatelem a je také předána nebo zpřístupněna lékaři, který provedení výkonu indikoval a pacientovi, pokud se nejedná o výkon prováděný v rámci hospitalizační péče. 

Dokument se zaměřuje na:
- prioritní případy užití;
- kategorizaci a pojmenování zdravotnické dokumentace (vyhledatelnost);
- strukturu a definice dat zdravotnické dokumentace (interoperabilita, opakované použití, přeložitelnost);
- mechanismy a infrastruktura pro výměnu informací (dostupnost);
- pracovní postupy mezi organizacemi (kvalita, efektivita);
- zkoumání stávajících norem a osvědčených postupů a pokynů pro implementaci, které lze znovu použít jako vstupní údaje pro funkční specifikace;
- představení a metodiku související s popsanými tématy, kombinaci stávajících materiálů a jejich harmonizaci do návrhu nových norem;
- poskytnutí specifikací pro každé z témat;
- shromáždění zjištění a zdůraznění budoucích výzev pro oblast zobrazovacích metod a návrh plánu pro další výzvy v oblasti interoperability.

Funkční specifikace je aplikovatelná na případy nemocniční péče, specializované ambulantní péče a praktického lékařství i urgentní péče.

### Zahrnuté oblasti

Dokument se zaměřuje na standardizaci obsahu strukturovaného elektronického záznamu ze zobrazovacích metod (radiologické metody, metody nukleární medicíny, ultrazvukové metody apod.) a metadat, na aspekty interoperability a strojového zpracování, ale také na rozšíření údajů, např. reference na související záznamy, vybrané DICOM údaje z obrazových studiích, další přílohy apod. Dokument se zaměřuje také na aspekty související s výměnou a sdílením těchto zpráv za pomoci informačních technologií.

<div>
<img src="content.png" class="figure-img img-responsive img-rounded center-block" width="60%">
<p> </p>
<p>Obr. 1: OBLAST NÁVRHU STANDARDU</p>
<p> </p>
</div>
 
### Nezahrnuté oblasti

Dokument nezahrnuje oblast obrazové dokumentace v podobě digitálních obrazových záznamů (studií) z přístrojů. Tyto obrazové studie jsou vytvářeny, zpracovávány, uchovávány i přenášeny ve standardizovaných formátech a pomocí komunikačních protokolů mezinárodního standardu DICOM. Pro přenos, resp. sdílení mezi poskytovateli zdravotních služeb jsou v současné době k dispozici v ČR dvě výměnné sítě (ePACS a ReDiMed) založené na DICOM standardu.

## Obsah

### Informační modely

##### Koncepční pohled

Zpráva o výsledku zobrazování by mohla být rozdělena do několika částí: záhlaví dokumentu, tělo (obsah), vizuální podobu dokumentu v PDF a volitelně může obsahovat i různé přílohy.

###### Zpráva ze zobrazovacích metod

<figure>
  {% include imgReport_CIM-cs.svg %}
</figure>

###### Hlavička dokumentu

<figure>
  {% include imgReportHead_CIM-cs.svg %}
</figure>

###### Tělo dokumentu

<figure>
  {% include imgReportBody_CIM-cs.svg %}
</figure>

### Popis základních částí obrazové zprávy

#### Informace o žádance (objednávce)

Zobrazovací metody jsou prováděny na vyžádání (obvykle) indikujícím lékařem. Žádanka by měla obsahovat také zdůvodnění vyšetření. Žádanky (objednávky) chodí v listinné podobě nebo elektronicky. Vždy jsou zaevidované v informačním systému (RIS/HIS/AIS). Ze žádanek se pak tvoří jednotlivé pracovní požadavky pro modality (přístroje). Údaje ze žádanek se obvykle přebírají do ZPRÁV automatizovaně.

#### Důvod vyžádání (indikace)
Důvod vyžádání zdravotní služby. Zpráva může reagovat na více uvedených důvodů. Důvod vyžádání by měl být obsažen v žádance (objednávce).

#### Informace o vzorku

Informace o vzorku, pokud je předmětem vyšetření vzorek materiálu. Biologický druh se týká vzorků odebraných jiným než lidským subjektům. Materiál odebraného vzorku, čas odběru, anatomické umístění, morfologické abnormality anatomického umístění, odkud je materiál odebrán, například „rána“ nebo „vřed“ apod. Pro většinu údajů je navržen kódový systém SNOMED CT.

#### Výkon (procedura)

**Typ výkonu**

Klasifikace vyšetření. V současnosti se využívá klasifikace ERTN, ke které ÚZIS udržuje mapování na kódy výkonů číselníku VZP.
Navrženo je i používání LOINC „Imaging Document Codes“ nebo zajistit také mapování české radiologické klasifikace (ČRK) na LOINC.

**Část těla**

Popis části těla, případně lateralita („stranovost“), na které je prováděn výkon. Strukturovaně nebo minimálně volným textem.

**Modalita**

Zobrazovací modalita (zkratka), která provedla obrazový záznam. DICOM Standards PS 3.3-2011, Section C.7.3.1.1.1

**Důvod provedení**

Důvod provedení výkonu, uvedený zdravotnickým pracovníkem odpovědným za provedení výkonu. Může být jiný, než který byl uveden v žádance indikujícím lékařem, nebo jej doplňuje.

**Technika provedení výkonu**

Popis technického provedení zobrazovací metody (např. použité MR sekvence, projekce snímku atd.). Obsahuje navíc kódované položky. Popis technického provedení lze provézt i formalizovaným zápisem, tj. strukturovaně, ale minimálně (povinně) volným textem.
Popis technického provedení obsahuje také informace o podání látky, např. kontrastní látky nebo jiného léčivého přípravku podaného v souvislosti s výkonem (např. kontrastní látka nebo lék na uklidnění apod.). Povinně musí být uveden min. název léčivého přípravku, dávka a datum a čas podání. Vznikne-li po podání nežádoucí reakce, musí se zaznamenat také informace o nežádoucí reakci.

**Výsledky**

Popis výsledků provedených výkonů (vyšetření) musí být minimálně volným textem a kód typu pozorování (SNOMED CT).

**Závěr**

Závěr shrnuje nejdůležitější nálezy a/nebo diagnózy, které byly učiněny na základě výsledků zobrazovací metody (případně s přihlédnutím k jiným klinickým informacím). Tento oddíl může obsahovat volným textem popis klinického závěru a/nebo kódované hodnocení, například kategorie BI-RADS nebo ekvivalentní.

**Doporučení**

Doporučení může obsahovat např. doporučení následných vyšetření nebo postupů, které vyplynuly z výsledků a/nebo závěrů. Strukturovaná část této položky je shodná se stejnojmennou položkou v propouštěcí zprávě.

#### Předchozí výkony
Odkaz na související předchozí provedené zobrazovací metody, např. pro porovnání výsledků nebo trendů, nebo na starší verzi Zprávy změněnou touto Zprávou. Příslušná Zpráva musí patřit stejnému pacientovi. Návrh nepředepisuje způsob implementace, jakým uživatelským způsobem budou informace o předchozích vyšetřeních připojována. Možná je i poznámka volným textem.

#### Média (jiné přílohy)

Klíčové snímky související s touto Zprávou. Může být více příloh. Kromě metadat popisujících jednotlivá připojená média může být přílohou skutečný obsah média (inline) nebo přímý odkaz na zdrojový soubor média. Kromě metadat může být k příloze zadán volný text. Návrh nepředepisuje způsob implementace, jakým uživatelským způsobem budou média připojována. Součástí médií, tedy příloh, může být také výstupy z přístrojů ve formě obrázků (např. křivky EKG, snímky z mikroskopu apod.) a také důvěryhodná forma dokumentu („otisk“ dokumentu PDF/A s kvalifikovaným podpisem).

#### DICOM metadata

Vybrané relevantní údaje z DICOM studie bez obrazových dat. Cílem je, aby údaje byly dostupné pro všechny uživatele bez nutnosti přenosu celých DICOM obrazových studií a bez nutnosti software umožňujícího čtení z DICOM dat z obrazových studií. Údaje, které jsou součástí DICOM dat se nepřepisují, ale připojí se ke Zprávě (do Zprávy) automaticky. „Konzument“ Zprávy dostane informace o obrazové studii a může získat jen náhledy na některé série, některé snímky a to „proklikem“ ze zprávy apod.
