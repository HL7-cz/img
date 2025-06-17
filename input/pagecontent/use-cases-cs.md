Zpráva ze zobrazovacích metod je pro zdravotnické pracovníky všech typů poskytovatelů zdravotní péče důležitým zdrojem informací o zdravotním stavu a zdravotních komplikacích pacienta. ZPRÁVA je považována za důležitou, protože ošetřující lékař na základě lékařského nálezu obsaženém ve zprávě stanovuje další postup. ZPRÁVY z předchozích vyšetření, a to i provedených pro jiné poskytovatele zdravotních služeb, jsou zase důležité pro posouzení vývoje zdravotního stavu, resp. komplikací pacienta. Dostupnost těchto ZPRÁV mezi poskytovateli zdravotních služeb je důležitou potřebou moderní medicíny.

Zobrazovací metody jsou komplementární zdravotní služby, které se provádí výhradně na vyžádání (žádanka na zdravotní službu) ošetřujícím lékařem, který vyšetření indikoval. Ošetřující lékař nemusí být ze stejného zdravotnického zařízení. Primárním příjemcem ZPRÁVY ze zobrazovacích metod je ošetřující lékař, který vyšetření indikoval. ZPRÁVY však mohou sloužit i jako zdroj informací pro řadu dalších příjemců včetně pacienta samotného a může být zdrojem informací využitelným pro další účely.

Výměna, resp. sdílení ZPRÁV mezi různými subjekty je doposud většinou nestandardizovaná a neumožňuje určit povahu údajů obsažených v této zdravotnické dokumentaci, aniž by bylo nutné dokument skutečně otevřít a přečíst.

Cílem tohoto dokumentu je definovat standardizovaný informační obsah a strukturu datové sady zprávy ze zobrazovacích metod včetně metadat, které budou naplňovat potřeby pro dále popsané případy užití a pro zlepšení interoperability v oblasti zobrazovacích metod s využitím informačních technologií se zaměřením na sdílení výsledků z těchto vyšetření mezi poskytovateli zdravotních služeb, včetně pacientů, v  regionálním i národním prostředí (s přihlédnutím na možnost přeshraniční výměny), ale využitelnou také v lokálním prostředí jednotlivých poskytovatelů.

### Aktéři

#### Původce	
Původcem se rozumí každý, z jehož činnosti Zpráva (dokument) vznikla. Za dokument vzniklý z činnosti původce se považuje rovněž dokument, který byl původci doručen nebo jinak předán. Původcem může být fyzická nebo právnická osoba.

#### Provádějící	
Provádějícím se rozumí každý, kdo provádí (provedl) přístrojové vyšetření, tj. záznam obrazu.

#### Autor	
Autorem se rozumí každý, kdo Zprávu (dokument) vypracoval nebo vytvořil. Autorem může být fyzická osoba, např. zdravotnický pracovník nebo zařízení (systém), např. AI.

#### Ověřovatel	
Ověřovatelem se rozumí každý, kdo Zprávu (informace v dokumentu) ověřil. Např. ověřil závěry pozorování novým pozorováním, nebo zkontroloval úplnost informací, srozumitelnost a odbornost sdělení ve Zprávě apod. Ověřovatelem je fyzická osoba, např. „zkušenější“ zdravotnický pracovník, který provedl tzv. druhé čtení.

#### Validátor	
Validátorem se rozumí každý, kdo ověřil formální a věcný obsah dokumentu, tj. strukturu dokumentu, úplnost a sémantickou správnost údajů v dokumentu, integritu dokumentu apod. Validátorem může být fyzická osoba nebo systém.

#### Odesílatel	
Odesílatelem se rozumí každý, kdo inicioval odeslání Zprávy (kdy, komu, kam, jak).

Odesilatel může být chápán z různého pohledu abstrakce jako:
- pracovník původce,
- původce,
- informační systém původce,
- doména sdílení elektronických zdravotních záznamů (EHR)
Odesláním se rozumí odeslání dokumentu v elektronické podobě prostřednictvím informačních a komunikačních technologií.

#### Příjemce	
Příjemcem se rozumí každý, komu je Zpráva (dokument) určena (ve významu adresáta) nebo kdo dokument získal, ať doručením nebo vyhledáním popř. do dokumentu nahlížel vzdáleným přístupem prostřednictvím informačních technologií.

Příjemcem je obecně osoba, organizace nebo informační systém. Může být adresný (např. indikující lékař) nebo neadresný (může vyhledávat a nahlížet do zdravotních záznamů pacienta).

Příjemce může být chápán z různého pohledu abstrakce jako:
- indikující lékař (včetně případu doručení prostřednictvím pacienta)
- pracoviště indikujícího lékaře (např.  lůžkové oddělení nemocnice téhož nebo jiného poskytovatele),
- jiný poskytovatel zdravotních služeb (registrující lékař, kontinuita péče, urgentní péče) nebo poskytovatelé zdravotních či sociálních služeb na vyžádání dokumentace, pokud je pacient v jejich péči a je nezbytná pro danou péči,
- pacient, včetně zákonného zástupce nebo zástupce s uděleným souhlasem,
- v málo obvyklých případech také revizní lékař zdravotní pojišťovny,
- výjimečně i oprávnění nezdravotničtí pracovníci, resp. organizace v souvislosti s výkonem vyplývajícím ze zákona, např. soud, policie, nebo orgány veřejné moci (OVM).
  
#### Subjekt zprávy	
Subjektem Zprávy se rozumí pacient, fyzická osoba nebo zvíře, kteří jsou subjektem vyšetření nebo zákroku, a to i v případě, že objektem vyšetření je jen vzorek.
#### IS původce	
Informačními systémy původce se rozumí Klinické IS (KIS), Radiologické IS (RIS), Ambulantní IS (AIS), PACS  systémy, Důvěryhodný elektronický archiv (DEA). 
#### IS příjemce	
Na straně poskytovatelů zdravotních služeb se těmito systémy rozumí obdobné systémy jako na straně původce. Pro některé příjemce, jako např. pacienty nebo orgány veřejné moci (OVM) to mohou být další systémy, jako např. integrovaný systém datových schránek (ISDS). 
#### Systém EHR	
Systémem EHR (Eletronic Health Record) se rozumí systémy pro kolekci a sdílení elektronických zdravotních záznamů pacientů v rámci afinitní domény, např. na bázi infrastrukturních IHE  profilů.
#### Služby eHealth	
Službami eHealth se rozumí služby elektronického zdravotnictví, např. IDRR , eREG, NCP, eMeDocS  apod., ale také zprostředkované služby, např. služby základních registrů státu.

### Případ užití
Zpráva může být předána:
- subjektu, který zdravotní výkon vyžádal;
- jinému subjektu (například když je pacient referován do jiného  zařízení);
- pacientovi;

Zpráva by měla obsahovat strojové i člověkem čitelný obsah!

#### Vytvoření interoperabilního strukturovaného dokumentu Zprávy ze zobrazovacích metod

**Účel**	
Shrnutí epizody ústavní zdravotní péče zdravotnickému pracovníkovi, včetně předání relevantních lékařských informací k zajištění kontinuity péče, která je „poslána“ (tj. předána) lékaři pacienta a/nebo jinému požadovanému příjemci po propuštění z nemocnice.

**Význam**
Vyhodnocení informací ze zobrazovacích metod a jejich sdělení (předání) indikujícímu lékaři. Zprávu je původce (poskytovatel zdravotní služby) povinen uchovávat jako samostatnou část zdravotnické dokumentace po legislativně stanovenou dobu a předat indikujícímu lékaři a na vyžádání v odůvodněných případech též jiným zdravotnickým pracovníkům.

Zpráva slouží pro účely prevence, diagnostiky, stanovení léčby, ověřování a hodnocení zdravotního stavu, hodnocení pokroku v léčbě apod. Obsahuje informace jako důvod, proč bylo vyšetření vyžádáno, relevantní informace o vyšetření (jaká byla použitá modalita a její nastavení, postupy i lokalizace těla), ale zejména popis pozorování a nálezů, závěr, případně doporučení. Informace se mohou lišit, např. podle typu vyšetření.

**Doména**	
Klinická doména; Doména výměny a sdílení zdravotnických informací

**Rozsah**
Národní/regionální/lokální

**Kontext**	
Zpráva ze zobrazovacích  metod je připravena po provedení vyšetření, vytvoření obrazového záznamu (studie), pozorování obrazového záznamu lékařem a zápisu nálezu. Příjemci se předává až uzavřená finální zpráva. To platí především pro předání pacientovi nebo zdravotnickému pracovníkovi jiného poskytovatele zdravotních služeb. Je-li objednatelem zdravotnický pracovník nebo pracoviště téhož zdravotnického poskytovatele, jsou někdy uvolněny i předběžné zprávy, ale s výrazným upozorněním, že se nejedná o zprávu finální. V některých případech prochází vyšetření dvěma fázemi, tzv. prvním a druhým čtením (ověření nálezu). Bývá to obvykle u náročnějších metod vyšetření, dále v případech, kdy radiolog nemá jistotu, anebo v případech, kdy primář nebo „seniorní“ radiolog ověřuje výsledek vyšetření „juniorního“ lékaře. Po druhém čtení lékař zprávu buď rovnou uzavře, nebo k ní dopíše doplňující nález z druhého čtení.

Zpráva je samostatnou částí zdravotnické dokumentace o poskytnuté zdravotní službě a nemusí být (a obvykle nebývá) uchována jako součást obrazové studie. Proto by měla obsahovat také některé potřebné údaje, které jsou jinak obsaženy jen v obrazové studii, a také jednoznačný odkaz na obrazovou studii a její uložení. (Pozn.: K obrazové studii se text nálezu někdy připojuje jako další série typu DICOM SR.)

Důležitou podmínkou je jednoznačná a ověřená identifikace subjektu vyšetření.

**Informace**	
Zdravotnické informace ze zobrazovacích metod

**Aktéři**
- Provádějící
- Autor
- Validátor
- Odesilatel
- Příjemce
- IS původce
- IS příjemce
- EHR systém
- Služby Ehealth

**Předpoklady**	
Existuje sdílený (národní) standard obsahu a formy Zpráv ze zobrazovacích metod.

Poskytovatelé (odesilatelé i příjemci) používají pro vytváření a zpracování interoperabilní informační systémy, pracující se standardizovanými kódovými systémy a v oblastech, kde použití kódový systémů dosud není rozšířeno, používají zápis volným textem při respektování požadavků na úplnost, přesnost a čitelnost obsahu. Existují systémy pro bezpečné a spolehlivé cílené předávání, resp. sdílení zdravotnické dokumentace.

**Funkční popis procesu**
1. Provádějící naplánuje, provede a popíše přístrojové vyšetření do IS původce.
   
2. Autor provede pozorování, zapíše výsledek pozorování a nález. Dokončenou zprávu podepíše (uznávaným elektronickým podpisem). IS původce připojí ke zprávě elektronickou jmenovku autora a časovou značku.
   
3. Autor připojí ke Zprávě přílohy.
   
4. Validátor (v případě „druhého čtení“) provede kontrolní pozorování a zapíše nová zjištění jako doplněk ke zprávě. Dokončený doplněk ke zprávě podepíše (uznávaným elektronickým podpisem). IS původce připojí k doplňku elektronickou jmenovku validátora a časovou značku.
   
5. Autor, v případě „druhého čtení“ Validátor zprávu uzavírá. IS původce připojí ke zprávě metadata z DICOM studie a elektronickou časovou značku a jmenovku osoby, které Zprávu uzavírá.
   
6. IS původce kompletní ZPRÁVU včetně připojených metadat uloží do repositáře dokumentů, a pokud ZPRÁVA obsahuje komponenty s elektronickým podpisem, tak též do důvěryhodného úložiště.
7. Repositář dokumentů zaregistruje ZPRÁVU do registru dokumentů.

Následné (navazující) procesy spojené s odesláním (předáním) ZPRÁVY příjemcům jsou popsány v případech užití, které jsou součástí samostatného dokumentu pro standardizaci výměny a sdílení zdravotnických informací.

