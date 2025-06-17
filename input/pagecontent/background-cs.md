### Pracovní postup a nástroje

Zobrazovací metody se používají k zobrazení lidského těla (v tomto dokumentu se zabýváme zobrazovacími metodami ve zdravotnictví) za účelem diagnostiky, monitorování nebo léčby zdravotních stavů. Je nezbytné, aby vytvářené obrazové záznamy byly co nejkvalitnější, protože mají přímý vliv na výsledky léčby pacientů. Pro ukládání a sdílení snímků existuje mnoho standardů a formátů. Základním celosvětově používaným standardem ve zdravotnictví je formát DICOM a v současné době většina vyráběných lékařských zobrazovacích zařízení odpovídá tomuto standardu . Prohlížení snímků vyžaduje speciální diagnostický lékařský zobrazovací software. 

Z hlediska pracovního postupu je důležité integrovat do pracovního postupu metody zpracování DICOM studií, které generují kvantitativní výsledky, a tyto výsledky pak automaticky importovat přímo do radiologických zpráv a grafických shrnutí, což bude pomáhat jak zdravotnickým pracovníkům, kteří zprávy vytváří, tak zdravotnickým pracovníkům, kteří následně ze zpráv informace využívají.

Z hlediska dalšího rozvoje medicínské informatiky je také důležité, aby bylo umožněno aplikacím a algoritmům následného zpracování analyzovat radiologické zprávy a převádět je do užitečných souhrnů. Takové aplikace by například mohly analyzovat zprávy, jako je celkové množství nádorů v těle v průběhu času nebo indikovat, zda určitý lék funguje, jak prostřednictvím zmenšeného obrazu velikosti nádoru. Tento druh informací by mohl být potenciálně propojen s funkcí pro podporu rozhodování, která by poskytovala diferenciální diagnózu. Předpokladem, který bude nutný, než se tyto typy aplikací stanou rutinními, je však integrace pracovních postupů.

### Existující standardy, profily a terminologie

Aby bylo možné dosáhnout interoperability v rámci různých zdravotnických informačních systémů a mezi nimi, je třeba sjednotit standardy, profily a terminologie pro popisné i strukturované klinické informace napříč různými aplikacemi (na místní, regionální, národní nebo mezinárodní úrovni). Níže popisujeme nejběžnější existující standardy, profily a terminologie.

#### DICOM
Americká radiologická asociace (American College of Radiology, ACR) a Národní asociace výrobců elektrotechniky (National Electrical Manufacturers Association, NEMA) vytvořily v roce 1983 společný výbor s cílem vyvinout standard pro ukládání a distribuci snímků. První a nejstarší publikace oficiálních standardů s názvem ACR/NEMA č. 300-1985, známá jako verze 1.0, byla vydána v roce 1985 s cílem "podpořit komunikaci i ukládání digitálních obrazových informací bez ohledu na výrobce zařízení".

V roce 1993 byla norma ACR-NEMA 300 po několika revizích podstatně přepracována a nahrazena touto normou s označením Digital Imaging and Communications in Medicine (DICOM).

Norma DICOM  je mezinárodní norma, která definuje formáty lékařských snímků, které lze vyměňovat s daty a v kvalitě nezbytné pro klinické použití. DICOM je celosvětově nejrozšířenější a nejpoužívanější zobrazovací standard. Již více než 20 let se tento standard používá pro výměnu netextových dat (snímků, videí, vln, fotografií apod.), na rozdíl od zpráv z vyšetření, jejichž výměna se neliší od výměny jiných zpráv (např. propouštěcích zpráv) a měla by se řídit stejnými technickými a administrativními zásadami jako jakákoli jiná zpráva o zdravotních službách.

Obrazový záznam sám o sobě neposkytuje dostatek informací, aby byl správně interpretován. Aby mohl být správně interpretován, musí být doprovázen údaji o pacientovi a způsobu pořízení snímku (například demografické a identifikační údaje pacienta, důvod vyšetření, informace o modalitě a způsobu pořízení snímku atp.). Z tohoto důvodu tradiční formáty, jako je JPEG nebo PNG, neposkytují zdravotnickým pracovníkům, kteří snímky prohlížejí, všechny potřebné informace. *Standard DICOM je zaměřen na manipulaci se snímky (obrazovými záznamy), jejich ukládání, tisk, vyhledávání, získávání a na jejich distribuci i přenos.*

Norma DICOM je rozdělena do různých částí, z nichž každá vysvětluje jiné důležité vlastnosti normy, například část 3, kde jsou definovány různé definice informačních objektů, v části 4 vlastnosti, které mají všechny třídy služeb společné nebo část 5, která specifikuje, jak aplikace konstruují a kódují informace. 

Část 18 standardu DICOM definuje DICOMweb , který specifikuje webové služby využívající rodinu protokolů HTTP pro správu a distribuci informačních objektů DICOM, jako jsou medicínské snímky, anotace, zprávy atd. zdravotnickým organizacím, poskytovatelům a pacientům.

DICOM Part 20  obsahuje specifikaci pro transformaci instancí DICOM Structured Report (DICOM SR) do dokumentů HL7 CDA. DICOM SR je mechanismus pro kódování anotací a popisu snímků uložených jako součást DICOM studie. Standard CDA (Clinical Document Architecture) je určen především k výměně klinických dokumentů, jako jsou propouštěcí zprávy a poznámky o průběhu vyšetření.

Organizace HL7 a DICOM spolupracovaly na harmonizaci v oblasti CDA a SR i na zamezení bezdůvodných nekompatibilit, ale žádný mechanismus obousměrného přenosu SR do CDA s plnou věrností dosud nebyl formálně definován ani jednou ze skupin a možná ani nikdy nebude.

CDA obsahuje prostředky pro kódování oblastí zájmu v odkazovaných obrazových studiích, které poskytují podobné mechanismy jako mechanismy přítomné v DICOM a také podobné mechanismy pro kódování pojmů z řízených slovníků. Používají se podobné typy grafických prvků a stejný mechanismus se používá pro odkazování na dvourozměrné souřadnice, jako posunutí sloupce a řádku pixelu od levého horního rohu obrázku. CDA se řídí praxí HL7 V3, kdy se jako kódové hodnoty používají Unified Medical Language System (UMLS) Concept Unique Identifiers (CUID), nikoli tradiční kódové hodnoty SNOMED, které používá DICOM, ale ty lze vzájemně mapovat bez ztráty informace. Systém kódů, který DICOM označuje jako identifikátor kódovacího schématu, je kódován jako globálně jedinečný identifikátor, konkrétně jako OID (Object Identifier), což je totéž jako jedinečný identifikátor DICOM (UID); ty lze rovněž mapovat s plnou věrností do reprezentace DICOM, který rovněž přidal specifické mechanismy pro kódování mapování standardních nebo soukromých identifikátorů kódovacího schématu na UID v instanci dokumentu.

Zvláštní pozornost je věnována údajům získaným při zobrazovacích postupech. Tyto údaje zahrnují snímky, průběhy, měření, anotace a další analytické výsledky spravované jako instance DICOM Service-Object Pair (DICOM SOP). Tyto šablony snižují variabilitu, zlepšují interoperabilitu a standardizují osvědčené postupy. Podporují také automatizaci tvorby zpráv a validaci obsahu zpráv.

#### HL7

HL7 International je nezisková organizace pro vývoj standardů v oblasti zdravotnictví, založená v roce 1987, která působí na mezinárodní úrovni a v současné době je jedním z nejdůležitějších standardů pro zasílání zpráv v oblasti zdravotnické informatiky.

HL7 International vyvinula soubor norem, jejichž hlavním cílem je specifikovat přenos zpráv pro komunikaci klinických, demografických a finančních informací mezi počítačovými systémy. V rámci HL7 existují některé standardy, které mají jiné zaměření, ale zasílání zpráv je jedním z nejsilnějších aspektů HL7.

#### HL7 V2.x

V březnu 1987 výbor složený z poskytovatelů zdravotní péče, prodejců, konzultantů a dalších účastníků mezinárodního trhu zdravotní péče sdílel společný cíl zjednodušit implementaci rozhraní mezi počítačovými aplikacemi od různých a často konkurenčních výrobců. Tento výbor, který se následně stal známým jako pracovní skupina HL7, se snaží standardizovat formát a protokol pro výměnu určitých klíčových souborů dat mezi počítačovými aplikačními systémy ve zdravotnictví. 

Z této společné práce vzešel standard pro výměnu zpráv HL7  pro elektronickou výměnu zdravotnických dat, který je v oblasti zdravotnictví mezinárodně nejrozšířenější.

Zprávy HL7 umožňují výměnu vložených obrázků mezi počítačovými systémy. Ty mohou být připojeny k segmentu typu OBX-Observation (pouze ve zprávách, které obsahují tento typ segmentu), který kóduje obrázek v Base64, obsahuje ukazatel (například URI na obrázek DICOM uložený v centrálním PACS) nebo obsahuje CDA, jehož součástí je i samotný obrázek.

#### HL7 CDA verze 2

HL7 CDA R2 je základní standard pro výměnu dokumentů, který poskytuje architekturu, kódování, sémantický rámec a značkovací jazyk pro vytváření klinických dokumentů s využitím informačního modelu HL7 (RIM), metodiky HL7 V3 a řízených nebo místních slovníků (SNOMED CT, ICD, LOINC atd.). Dokumenty HL7 CDA jsou kódovány v XML (Extensible Markup Language). 

CDA může podporovat jakýkoli druh klinických informací, které mohou být obsaženy ve zdravotnické dokumentaci pacienta, jako je pacientský souhrn, recepty, anamnéza a fyzikální vyšetření, zprávy specialistů, laboratorní zprávy, diagnostika, očkování nebo propouštěcí zpráva a mnoho dalších možností.

Na webových stránkách HL7 lze nalézt implementační příručku pro CDA Release 2 - Imaging Integration. Účelem této implementační příručky je popsat omezení prvků CDA Header a Body pro diagnostické zprávy ze zobrazovacích metod. Jejím účelem je předat interpretaci lékaři, který si vyžádal zdravotní službu a stal se součástí zdravotnické dokumentace pacienta. Je určen pro použití v radiologii, endoskopii, kardiologii a dalších zobrazovacích specializacích.

Část 20 standardu DICOM je ověřeným návodem pro implementaci CDA R2: Zpráva o obrazové studii.

#### HL7 FHIR

HL7 FHIR  (Fast Healthcare Interoperability Resources) je standard HL7 pro výměnu zdravotnických dat. Kombinuje nejlepší vlastnosti standardů HL7 V2.x, HL7 V3 a HL7 CDA R2 s využitím nejnovějších webových standardů, přičemž se snadno navrhuje a implementuje. 
Standard definuje sadu zdrojů, které reprezentují informace o granulárních klinických konceptech, jako je pacient, lék, zdravotnický prostředek nebo postup provedený u pacienta. 

FHIR definuje zdroj ImagingStudy , který poskytuje informace o obrazové studii DICOM a o sériích i obrazových objektech v této studii. Poskytuje také informace o tom, jak tyto informace získat v nativním formátu DICOM nebo ve vykresleném formátu, například JPEG. 

FHIR také definuje zdroj DiagnosticReport , který obsahuje klinický kontext, jako jsou informace o žadateli a poskytovateli, určitou kombinaci atomických výsledků, obrázků, textových i kódovaných interpretací a formátované reprezentace diagnostických zpráv.

Jedním z jasných přínosů FHIR v oblasti radiologie je možnost rychlého vyhledávání relevantních klinických informací. Síla rozhraní FHIR vychází z jednoduchosti dotazů pro získání konkrétních dat, což eliminuje potřebu složitého vyhledávání v EMR. Jedním z příkladů je možnost dotazovat se konkrétně na přítomnost alergie na jódovaný kontrast, namísto ověřování v EMR a vyhledávání v seznamu všech pacientových alergií. Pomocí FHIR může zobrazovací software vyhledávat klinické informace získané z EMR a integrovat je s dalšími klinickými systémy používanými radiologem.

#### IHE

IHE (Integrating the Healthcare Enterprise) je iniciativa zdravotníků a průmyslu, která zlepšuje způsob, jakým informační systémy ve zdravotnictví sdílejí informace. Podporuje koordinované používání zavedených standardů, jako je DICOM a/nebo HL7 s cílem dosáhnout optimální péče o pacienty. IHE zlepšuje zdravotní péči poskytováním specifikací, nástrojů i služeb pro interoperabilitu a zapojuje lékaře, zdravotnické orgány, průmysl i uživatele do vývoje, testování a zavádění řešení založených na standardech pro životně důležité potřeby zdravotnických informací.

Profily lze považovat za různé třídy :

##### Obsahové profily

Obsahové profily se zabývají správou konkrétního typu obsahového objektu. Existuje řada profilů obsahu popisujících podrobnosti vytváření a ukládání různých typů obrázků nebo objektů souvisejících s obrázky, které by často byly vytvářeny v kontextu plánovaného pracovního postupu IHE (SWF ). Zamýšlený pracovní postup integruje vyžádání, plánování, pořizování, ukládání a prohlížení snímků pro radiologická vyšetření. Profil se zabývá tím, jak je objekt vytvořen, uložen, dotazován a vyhledáván, ale nezabývá se procesem řízení pracovního postupu.

Některé z těchto profilů jsou:
- Nuclear Medicine Image (NM) profil, který určuje, jak se vytvářejí, vyměňují, používají a zobrazují obrázky i výsledky z nukleární medicíny; 
- Mammography Image (MAMMO) profil, který specifikuje, jak se vytvářejí, vyměňují, používají a zobrazují mamografické snímky i evidenční objekty; 
- Evidence Documents (ED) profil, který specifikuje, jak se vytvářejí, vyměňují a používají datové objekty, jako například digitální měření; 
- nebo Key Image Note (KIN) profil, který umožňuje uživatelům označovat snímky jako významné (např. pro odeslání, pro operaci atd.) a přidávat k nim poznámky.
  
##### Profily pracovních postupů

Profily pracovního postupu řeší správu procesu pracovního postupu, který obvykle zahrnuje poskytování pracovních seznamů, hlášení/monitorování průběhu a dokončení pracovních položek. V tomto kontextu se obvykle vytváří jeden nebo více objektů obsahu podle jejich profilu obsahu. Mezi tyto profily patří např.:

- Scheduled Workflow (SWF) profil, který ukazuje, jak integrovat vyžádání, plánování, získávání, ukládání a prohlížení snímků pro radiologická vyšetření;
- Patient Information Reconciliation (PIR) profil, který koordinuje odsouhlasení záznamu pacienta při pořizování snímků pro neidentifikované (např. úrazové) nebo chybně identifikované pacienty; 
- nebo Post-Processing Workflow (PWF) profil, který poskytuje pracovní seznamy, sledování stavu a výsledků pro úlohy po pořízení, jako je počítačem podporovaná detekce nebo zpracování obrazu.
  
##### Profily infrastruktury

Profily infrastruktury řeší postupy jednotlivých oddělení. Některé z těchto profilů jsou Cross-enterprise Document Sharing for Imaging (XDS-I.b) podrobně popsané níže v části "Profily IHE používané pro zobrazování", které rozšiřují:

- XDS profil pro sdílení snímků, diagnostických zpráv a souvisejících informací napříč skupinou pracovišť poskytujících péči;
- Audit Trail and Node Authentication – Radiology Option (ATNA) profil, který definuje zprávy auditního záznamu specifické pro radiologii a bezpečnostní opatření na ochranu důvěrnosti informací o pacientech; 
- nebo Cross-Enterprise Reliable Document Interchange for Imaging (XDR-I) profil, který rozšiřuje XDR o předávání snímků, diagnostických zpráv a souvisejících informací mezi poskytovateli zdravotní péče.
  
##### Prezentační profily

Prezentační profily se zabývají prezentací snímků. Některé z těchto profilů jsou:

- Consistent Presentation of Images (CPI), který zachovává konzistentní intenzitu a transformace snímků mezi různými zařízeními pro papírovou a softwarovou kopii; 
- Key Imag Note (KIN), který umožňuje uživatelům označovat snímky jako významné (např. pro odeslání, pro operaci atd.) a přidávat k nim poznámky; 
- nebo Presentation of Grouped Procedures (PGP), která pomáhá zobrazit a nahlásit jednotlivé požadované procedury (např. hlava, hrudník, břicho), které operátor seskupil do jednoho skenu.
  
##### IHE profily používané pro obrazové záznamy (studie)

IHE definuje různé profily pro standardizaci a sdílení klinických obrazových záznamů používaných v různých oblastech a případech použití.

Nejvýznamnější profily jsou:

- Cross-Enterprise Document Sharing for Imaging.b (XDS-I.b) je profil interoperability, který rozšiřuje XDS (který poskytuje specifikaci založenou na standardech pro správu sdílení dokumentů mezi jakýmikoliv zdravotnickými organizacemi) za účelem sdílení snímků, diagnostických zpráv a souvisejících informací v rámci skupiny pracovišť poskytujících péči; 
- Cross-Community Access for Imaging (XCA-I) podporuje prostředky pro dotazování a vyhledávání medicínských obrazových záznamů relevantních pro pacienta, které jsou v držení jiných komunit;
- Cross-enterprise document reliable interchange of images (XDR-I) profil poskytuje instance DICOM®SOP a obrazové zprávy pomocí spolehlivého systému přenosu zpráv.

##### Národní rozšíření – technické rámec IHE

Národní rozšíření technického rámce IHE řeší specifické místní potřeby zdravotní péče a usnadňují místní implementaci technického rámce IHE.
Mohou přidávat požadavky na technický rámec obecně nebo na konkrétní profily, aktéry, transakce nebo moduly obsahu. Protože systémy musí stále splňovat původní technický rámec, nesmí se národní rozšíření opírat o protichůdné požadavky ani je zavádět.
Za vypracování národních rozšíření jsou odpovědné národní komise IHE. Obvykle se tak děje po identifikaci konkrétní místní potřeby zdravotní péče nebo komplikací s implementací během revize, výběru a propagace integračních profilů v rámci jejich země.

#### DASTA

Současný národní standard používaný v České republice je "Datový standard pro výměnu informací ve zdravotnictví" (DASTA nebo DS).

Standard DASTA  je nejpoužívanějším standardem pro přenos dat mezi informačními systémy zdravotnických zařízení. Standard DASTA je v současné době zakotven ve většině zdravotnických informačních systémů v ČR včetně HIS, LIS a informačních systémů pro praktické lékaře i ambulantní specialisty apod. Standard DASTA využívají také státní instituce, jako je ÚZIS (NZIS, eREG), ZÚ (hygienicko-epidemiologické registry) apod.

DASTA je založena na značkovacím standardu XML. Verze 2 a 3 používají soubory formátu "DTD", současná verze 4 plně využívá možností XML (je postavena na schématech XML a využívá jmenné prostory).

Dříve se standard DASTA používal především pro výměnu dat mezi systémy v rámci zdravotnického zařízení, ale v současné době významně přispívá i k výměně dat mezi ostatními poskytovateli zdravotní péče.

DASTA může obsahovat a přenášet jakýkoli druh klinických informací, které by byly obsaženy ve zdravotnické dokumentaci pacienta (např. propouštěcí zprávy, anamnestické a fyzikální zprávy specialistů, jako jsou zprávy z lékařských zobrazovacích metod nebo patologie atd.) Systém DASTA podporuje nestrukturovaný text, stejně jako odkazy na složené dokumenty zakódované ve formátech pdf, docx nebo rtf a také obrazové formáty, jako jsou jpg a png.

DASTA specifikuje, že obsah dokumentu se skládá z povinné textové části (která zajišťuje lidskou interpretaci obsahu dokumentu) a volitelných strukturovaných částí (pro softwarové zpracování). Strukturovaná část se opírá o kódovací systémy, jako je kódovací systém DASTA (NCLP, Klinické události apod.) a další kódovací systémy používané v českém zdravotnickém prostředí) pro reprezentaci pojmů.

Systém DASTA se používá již řadu let – vývojáři IS jej znají a mají pro něj již vyvinutou odpovídající softwarovou podporu.

DASTA byla aktualizována prostřednictvím webových služeb, které umožňují flexibilní, rychlou a především automatickou formu aktualizace DS a všech číselníků, se kterými DS pracuje. Je možné přidat další datové bloky a číselníky včetně návodů a pokynů.

Technické provedení DS zaručuje jeho univerzální použitelnost. Jedná se rovněž o modulární systém. Zejména platforma XML verze DS4 využívá mnoho progresivních prvků.

Za vývojem DS stojí také vývojáři IS – doplňky a změny DS jsou předem standardně projednávány, aby byly přijatelné a proveditelné. Poté mohou být pružně a bezproblémově začleněny do IS.

DS je začleněn do IS mnoha uživatelů – změny a inovace se relativně snadno zavádějí do praxe. Uživatelům DS bylo nabídnuto několik kurzů a jsou k dispozici konzultace.

DS4 představuje klinické události a jejich praktické zpracování. Problematika klinických událostí je velmi široká a je zahrnuta do popisu DS4, včetně podrobného popisu příslušných jedinečných identifikací pacientů, identifikace jejich klinických událostí včetně jejich fází. Zavedení filozofie klinických událostí a systému kódování "klinických událostí" nejen zjednodušilo doplnění dalších klinických událostí potřebných pro praxi, ale také usnadnilo jejich formalizaci. To vše jde ruku v ruce s možnostmi využití schématu XML a dalších nástrojů. Mezi příklady klinických událostí v systému DS4 patří např.: Laboratorní vyšetření (všechny specifikace), RDG vyšetření (RTG, CT, SONO...), EKG vyšetření, Příjem pacienta, Chirurgická zpráva, Konziliární dekurz, Propouštěcí zpráva, Ambulantní zpráva, Výpis zpráv z archivu, Souhrn pacienta atd.

DS4 představuje klinické události a jejich praktické zpracování. Tato široká problematika je zahrnuta do popisu DS4, včetně podrobného popisu příslušných jedinečných identifikací pacientů a identifikace jejich klinických událostí včetně jednotlivých fází. Zavedení filozofie klinických událostí a systému kódování "klinických událostí" nejen zjednodušilo doplnění dalších klinických událostí potřebných pro praxi, ale také usnadnilo jejich formalizaci. To vše jde ruku v ruce s možnostmi využití schématu XML a dalších nástrojů.
