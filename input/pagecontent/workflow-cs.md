Typický, standardní průběh vyšetření probíhá postupně, kdy jednotlivé kroky na sebe postupně navazují, jak je znázorněno na následujícím obrázku sekvenčního diagramu. V tomto diagramu není zahrnuta rozšířená Zpráva z obrazového vyšetření a její uložení do repositáře EHR a odeslání externímu objednateli vyšetření.

<div>
<img src="workflow-1.png" class="figure-img img-responsive img-rounded center-block" width="80%">
<p> </p>
<p>Obr. 1: STANDARDNÍ PRACOVNÍ POSTUP U ZOBRAZOVACÍCH METOD</p>
<p> </p>
</div>

Jednotlivé fáze vyšetření představují stavy rozpracovanosti vyšetření. O fázi, stavu, ve kterém se vyšetření nachází, informují tzv. zprávy (messages) DICOM Modality Performed Procedure Step (MPPS).  

<div>
<img src="workflow-2.png" class="figure-img img-responsive img-rounded center-block" width="90%">
<p> </p>
<p>Obr. 2: FÁZE A STAVY PRŮBĚHU VYŠETŘENÍ</p>
<p> </p>
</div>

Cílový koncept rozšířené Zprávy ze zobrazovacích metod, zahrnující také uložení do repositáře EHR, je na následujícím obrázku. Aktér „zdravotnický pracovník“ (ZP) je podle interakce s příslušným IS buď indikující lékař, nebo radiologický asistent nebo lékař – radiolog.

1.	Provádějící naplánuje, provede a popíše přístrojové vyšetření do IS původce.
2.	Autor provede pozorování, zapíše výsledek pozorování a nález. Dokončenou Zprávu podepíše (uznávaným elektronickým podpisem). IS původce připojí ke Zprávě elektronickou jmenovku autora a časovou značku.
3.	Autor připojí ke Zprávě přílohy.
4.	Validátor (v případě „druhého čtení“) provede kontrolní pozorování a zapíše nová zjištění jako doplněk ke Zprávě. Dokončený doplněk ke Zprávě podepíše (uznávaným elektronickým podpisem). IS původce připojí k doplňku elektronickou jmenovku validátora a časovou značku.
5.	Autor, v případě „druhého čtení“ Validátor Zprávu uzavírá. IS původce připojí ke Zprávě metadata z DICOM studie a elektronickou časovou značku a jmenovku osoby, které Zprávu uzavírá
6.	IS původce kompletní Zprávu včetně připojených metadat uloží do repositáře dokumentů, a pokud Zpráva obsahuje komponenty s elektronickým podpisem, tak též do důvěryhodného úložiště.
7.	Repositář dokumentů zaregistruje Zprávu do registru dokumentů.

<div>
<img src="workflow-3.png" class="figure-img img-responsive img-rounded center-block" width="100%">
<p> </p>
<p>Obr. 3: ROZŠÍŘENÝ KONCEPT SESTAVENÍ ZPRÁVY ZE ZOBRAZOVACÍCH METOD</p>
<p> </p>
</div>