<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"> 
<blockquote class="stu-note"> 
<b>Informativní pro tuto verzi průvodce</b> 
<p>Do této verze příručky byly přidány povinnosti pouze jako informativní materiál ke shromažďování zpětné vazby o jejich používání.</p> 
</blockquote>
</div>

### Přehled

Povinnosti(Obligations) jsou prostředkem, kterým se v  HL7 FHIR specifikuje schopnosti, které definovaní aktéři MOHOU, MĚLI BY nebo MUSÍ mít implementovány specifikovanými profily.

Tato stránka také popisuje aktéry, kteří byli definováni pro specifikaci povinností.

### Aktéři

{% include fsh-link-references.md %}

Byli specifikováni tři aktéři:
* [Tvůrce](ActorDefinition-actor-creator-img.html);
* [Úložiště](ActorDefinition-actor-repos-img.html); a
* [Spotřebitel](ActorDefinition-actor-consumer-img.html)

Prvním je akter, který vytváří zprávu. Tuto zprávu lze odeslat spotřebiteli nebo do úložiště pro uložení a sdílení zpráv.
Druhým aktérem je systém, který uchovává kopii přijaté zprávy, aby ji uložil a zpřístupnil spotřebitelům.
Posledním aktérem je systém, který přijatou nebo načtenou zprávu používá.

<p>{% include imgReport_Actors-cs.svg %}<p>

### Seznam povinností

1. Povinnosti pacienta ([CZ_PatientObligationsImg](StructureDefinition-cz-patient-obl-img.html))