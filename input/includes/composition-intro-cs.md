### Sekce a obsah

Dokument je rozdělen do sady povinných sekcí. Sekce jsou povinné, nikoli volitelné, aby bylo jasné, proč nejsou k dispozici žádná data, což je vyjádřeno v `composition.section.emptyReason`.

### Struktura dokumentu

Zobrazovací zpráva obsahuje následující sekce v tomto pořadí:

#### Hlavička zprávy

Obecné informace o zprávě. Většina informačních prvků v této části zprávy se překrývá s jinými klinickými zprávami. Záhlaví dokumentu obsahuje informace o pacientovi, zdrojové organizaci, autorovi, ověřovateli a správci zprávy.

**Klinická událost (encounter)**

Tento profil umožňuje propojení zprávy s jednou konkrétní klinickou událostí, ke které se zpráva vztahuje.

#### Tělo zprávy

**Zobrazovací studie (Imaging study)**

Informace o studiích, o kterých tato zpráva informuje. Zahrnuje například identifikátory studie, datum a čas provedení vyšetření, použité modality při vyšetření a různé série.

**Objednávka (Order)**

Sekce objednávky obsahuje informace o objednávkách, které vedly ke studiím a této zprávě. Zahrnuje informace jako „přístupové číslo“, identitu odesílajícího lékaře nebo organizace, indikaci k vyšetření a ideálně i další kontext pacienta a specifické klinické otázky položené odesílajícím lékařem. Klinické otázky mají někdy tvar „Sledování X“, kde X je existující známý nález (možná z předchozího vyšetření), nebo „Vyloučení X“, kde X je stav, pro jehož vyloučení je zapotřebí zhodnocení obrazové výstupu. Indikace jsou také doufejme uvedeny, aby poskytly zobrazovacímu lékaři důležitý klinický kontext a podpořily posouzení vhodnosti objednávky a/nebo fakturace. Pokud indikace nejsou přítomny, někdy je musí jej nalézt zobrazovací personál.


> Poznámka: „Vyloučení X“, ačkoli je pro zobrazovacího lékaře do jisté míry užitečné, může být problematické pro fakturaci, protože příznaky, které naznačují možnou přítomnost onemocnění a prokazují lékařskou nutnost zobrazovacího vyšetření, jsou implicitní, ale nejsou zachyceny. V praxi se na pracovišti tato formuloce stále více odmítá.


**Podpůrné klinické údaje (History)**


Tato část obsahuje klinické údaje pacienta a další předchozí klinické podrobnosti, které zobrazovací lékař považuje za relevantní pro zobrazovací studii. Některé informace může poskytnout odesílající lékař v objednávce a další jsou extrahovány z lékařské dokumentace zobrazovacím personálem, automatizovanými nástroji nebo samotným radiologem. Tyto informace poskytují základní informace pro zobrazovacího lékaře, kontext pro obsah zprávy a někdy jsou relevantní pro fakturaci a klinické pokyny. Mezi potenciální zdroje patří výsledky nebo shrnutí klinických poznámek ze setkání, kde byla zadána objednávka zobrazovacího vyšetření.

**Procedura (Procedure)**

Tato část obsahuje informace, jako je typ procedury, zobrazená anatomie, datum a čas zobrazovacího vyšetření a pracoviště, které jej provedlo.

Tato část, nazývaná také zobrazovací technika, může popisovat použité parametry, podrobnosti o všech podaných kontrastních látkách a/nebo radiofarmacích, včetně koncentrace, objemu a cesty podání, a o všech použitých lécích a katétrech nebo zařízeních.

Tato část může také popisovat přípravu dat vytvořených procedurou: Pohledy, sady snímků, rekonstrukce, přeformátování a následné zpracování.

Zde může být také popsána radiační dávka; textový obsah a metriky mohou být omezeny/formátovány tak, aby splňovaly místní předpisy.

Informace v této části jsou obvykle podrobnější než ty, které jsou uvedeny v Objednávce, a ve skutečnosti se mohou lišit od objednaného vyšetření na základě potřeb pacienta a úsudku zobrazovacího lékaře.

Zde mohou být také popsány jakékoli nedostatky studie, například zda bylo zobrazení neúplné nebo zda se vyskytly problémy s kvalitou, které zabránily interpretaci některé části studie nebo jinak ohrozily citlivost a specifičnost vyšetření. V případě, že se pacient nemohl zobrazování zúčastnit, například kvůli klaustrofobii nebo záchvatu, může být stále vypracována zpráva a tato část by uváděla, že vyšetření nebylo provedeno, a uváděla by důvod.

I když skutečné pokyny dané pacientovi obvykle nejsou ve zprávě uvedeny, některé zmiňují skutečnost, že pokyny byly dány, a případně že byla projednána rizika a byl získán souhlas. Poznámky k postupu od technika jsou obvykle zaznamenány jinde, ale zde mohou být uvedeny důležité podrobnosti, jako jsou nežádoucí reakce pacienta nebo věci, které mohou ovlivnit kvalitu studie.

Někdy jsou zde uvedeny i podrobnosti o postupu, které mohou být vyžadovány pro fakturaci.

**Srovnání (Comparison)**

Tato část obsahuje seznam dalších studií, které zobrazovací lékař považoval za relevantní. Obvykle jsou identifikovány podle typu (modality, anatomie, typu vyšetření) a data. Zjištění z těchto studií a srovnání se současnou studií jsou obvykle uvedena v další části (např. s uvedením nezměněných výsledků, s rozlišujícími popisy a/nebo měřeními), ačkoli některé z těchto studií nemusí být v nálezech konkrétně zmíněny. Obvykle se předpokládá, že zobrazovacímu lékaři byly k dispozici jak snímky, tak i zpráva pro každou srovnávací studii, avšak v některých případech, například u externích předchozích studií, byla k dispozici pouze zpráva nebo pouze snímky, v takovém případě to lze zde uvést.

**Nálezy (Findings)**

Tato část poskytuje podrobný popis nálezů zobrazovacího vyšetření. Nálezy by měly být popsány jasně a stručně, pokud možno s použitím standardizované anatomické, patologické a radiologické terminologie.

Pokud existuje značný počet nálezů, zobrazovací lékař je obvykle uspořádá do skupin, obvykle podle anatomie. Šablony pro hlášení pro konkrétní typy zákroků (například ty na radreport.org) také často uspořádají nálezy.

Důležitý rozdíl mezi nálezy a výsledkem spočívá v tom, že nálezy zachycují to, co zobrazovací lékař viděl na snímku, zatímco výsledek zachycuje to, co odvodil/usoudil. Nálezy mohou zaznamenat radiolucenci, zatímco výsledek zaznamená zlomeninu. Existují případy, kdy se oba typy překrývají, ale zobrazovací lékaři se obecně snaží v nálezech zachytit, jaké jsou významné obrazové prvky, a ve výsledku sdělit objednávajícímu lékaři, co si myslí, že tyto prvky představují z klinického hlediska.

**Výsledek (Impression)**

Někdy se také nazývá Závěr nebo Diagnóza a poskytuje celkovou interpretaci nálezů radiologem, specifickou diagnózu a/nebo diferenciální diagnózu (pokud je to možné), odpovědi na jakékoli klinické otázky položené odesílajícím lékařem a případná doporučení pro další léčbu a/nebo potvrzení.

Doporučení se nejčastěji týkají následného diagnostického zobrazování nebo jiných diagnostických postupů, jako jsou biopsie nebo laboratorní testy. Mohou také zahrnovat návrhy na korelaci výsledku zobrazování s dalšími klinickými informacemi pro zvýšení spolehlivosti diagnózy, doporučení ke specialistům nebo méně často terapeutické postupy. Doporučení mohou citovat konkrétní použité pokyny, zejména pokud odesílající lékař může být méně obeznámen se současnými pokyny pro určité nálezy než lékař specializující se na zobrazovací metody. Lékař specializující se na zobrazovací metody může při sestavování doporučení zohlednit odbornost odesílajícího lékaře; u neobvyklého typu rakoviny může rodinný lékař shledat doporučení pro následné sledování užitečnějšími než onkologický specialista.

Vzhledem k tomu, že odesílající lékaři se mohou konkrétně zaměřit na tuto část, může si lékař specializující se na zobrazovací metody vybrat obzvláště důležité detaily, jako jsou klíčové nálezy nebo jakékoli nežádoucí účinky, aby je zde zopakoval a shrnul.

Pořadí položek ve výsledku je často významné, protože zobrazovací lékaři často umisťují nejkritičtější, nejakčnější a nejvýznamnější položky v sekci výsledků jako první, aby minimalizovali riziko jejich přehlédnutí. V případě diferenciální diagnózy se více možných diagnóz obvykle prezentuje v pořadí od nejpravděpodobnější po nejméně pravděpodobnou. Položky výsledků mohou být také očíslovány, aby se usnadnilo slovní odkazování nebo propojení s komunikací.

Některé položky ve výsledku mohou být klinicky významné, ale nesouvisely s indikacemi nebo důvodem vyšetření; například plicní uzlík, který byl při vyšetření hrudníku považován za podezřelý z traumatu. Tyto položky se často označují jako „náhodné nálezy“.

Některé položky ve výsledku mohou být kritické, protože představují potenciál pro závažný negativní klinický dopad na pacienta, pokud nebudou neprodleně přijata vhodná opatření. Přítomnost takových položek téměř vždy vede ke komunikaci s ošetřujícím personálem a/nebo pacientem.

**Doporučení**

Některé položky ve výsledku mohou být považovány za akčovatelné, protože je vhodné provést určitá následná opatření nebo komunikovat. Doporučení mohou, ale nemusí zahrnovat konkrétní odpovídající následná opatření. Během procesu hlášení mohla, ale nemuselo proběhnout odpovídající komunikace s příslušnými osobami a tato komunikace bude ve zprávě uvedena.

**Komunikace**

Toto je volitelná část, protože se nepředpokládalo, že bude často vyžadována.

Existuje velký zájem o nástroje, které by usnadnily jasné a rychlé sdělování kritických výsledků příslušným osobám, potvrdily, že probíhá následná kontrola proveditelných nálezů, a zajistily, aby náhodné nálezy „nepropadly skrz naskrz“.

Komunikace jsou záznamy ve zprávě o pokusech a/nebo úspěšných sděleních určitého obsahu zprávy odesílajícímu lékaři, pacientovi nebo jiné příslušné osobě. Tato komunikace je iniciována během generování Diagnostické zprávy členy organizace, kteří tuto objednávku plní. Např. přímé sdělení časově kritických výsledků radiologem odesílajícímu lékaři.

Komunikace není v pokynech ACR uvedena jako samostatná část, ale kódy pro sekci komunikace existují. Běžnou praxí je prezentovat záznamy o komunikaci ve spodní části zprávy, těsně pod výsledkem, protože jsou často řízeny konkrétními položkami ve výsledku a vyskytují se na konci procesu vytváření zprávy. Takové záznamy o komunikaci podporují lékařsko-právní využití a kontrolu a zlepšování souladu s osvědčenými postupy pro bezpečnost pacientů a kvalitu péče.

Záznam o komunikaci obvykle zaznamenává datum, čas a způsob komunikace, kontaktovanou osobu/organizaci a může shrnout sdělený obsah.