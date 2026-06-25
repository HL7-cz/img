### Účel

Účelem dokumentu je vytvoření národní, funkční a technické specifikace pro výměnu výsledků zobrazovacích vyšetření. Současně musí navržený standard zaručovat základní kompatibilitu s obdobnými standardy, které vznikají v rámci evropského projektu X-eHealth a dalšími podobnými projekty. Koncept funkční specifikace proto vychází z evropské specifikace výsledků zobrazovacích vyšetření přijaté Evropskou sítí elektronického zdravotnictví (eHN) a v rámci cílů tohoto projektu je prováděna jeho adaptace na podmínky českého zdravotnictví tak, aby bylo možné jeho praktické použití v České republice.
Dokument se zaměřuje zejména na oblast sémantické interoperability, ale zpracovává také některé legální, regulační a organizační aspekty, které jsou pro výměnu dat v rámci domény diagnostických zobrazovacích metod důležité.

### Rozsah

Tento dokument se zaměřuje na aspekty interoperability výsledků zobrazovacích metod vyšetření, typicky radiologických vyšetření či vyšetření nukleární medicíny, ale i vyšetření prováděná klinickými lékaři, jako je například gynekologický ultrazvuk. Typické pro zobrazovací metody vyšetření je pořizování obrazového záznamu, v současné době především v digitální podobě, které jsou posuzovány zdravotnickými pracovníky se specializací na tyto vyšetřovací metody. Zpráva z obrazového vyšetření obsahuje informace o vlastním vyšetření a jeho výsledu v písemné podobě a je součástí zdravotnické dokumentace. Zpráva se uchovává jako součást zdravotnické dokumentace pacienta vedené poskytovatelem a je také předána nebo zpřístupněna lékaři, který provedení výkonu indikoval a pacientovi, pokud se nejedná o výkon prováděný v rámci hospitalizační péče. 

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

#### Zahrnuté oblasti

Dokument se zaměřuje na standardizaci obsahu strukturovaného elektronického záznamu ze zobrazovacích metod (radiologické metody, metody nukleární medicíny, ultrazvukové metody apod.) a metadat, na aspekty interoperability a strojového zpracování, ale také na rozšíření údajů, např. reference na související záznamy, vybrané DICOM údaje z obrazových studiích, další přílohy apod. Dokument se zaměřuje také na aspekty související s výměnou a sdílením těchto zpráv za pomoci informačních technologií.

<div>
<img src="content.png" class="figure-img img-responsive img-rounded center-block" width="80%">
<p> </p>
<p>Obr. 1: OBLAST NÁVRHU STANDARDU</p>
<p> </p>
</div>
 
#### Nezahrnuté oblasti

Dokument nezahrnuje oblast obrazové dokumentace v podobě digitálních obrazových záznamů (studií) z přístrojů. Tyto obrazové studie jsou vytvářeny, zpracovávány, uchovávány i přenášeny ve standardizovaných formátech a pomocí komunikačních protokolů mezinárodního standardu DICOM. Pro přenos, resp. sdílení mezi poskytovateli zdravotních služeb jsou v současné době k dispozici v ČR dvě výměnné sítě (ePACS a ReDiMed) založené na DICOM standardu.

### Obsah

#### Informační modely

##### Koncepční pohled

Zpráva o výsledku zobrazování by mohla být rozdělena do několika částí: záhlaví dokumentu, tělo (obsah), vizuální podobu dokumentu v PDF a volitelně může obsahovat i různé přílohy.

###### Zpráva z obrazového vyšetření

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

{% include scope-and-content-structure-cs.md %}