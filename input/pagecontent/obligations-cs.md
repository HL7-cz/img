<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"> 
<blockquote class="stu-note"> 
<b>Informativní pro tuto verzi průvodce</b> 
<p>Do této verze příručky byly přidány povinnosti pouze jako informativní materiál ke shromažďování zpětné vazby o jejich používání.</p> 
</blockquote>
</div>

### Přehled

Povinnosti (Obligations) jsou prostředkem, kterým se v  HL7 FHIR specifikuje schopnosti, které definovaní aktéři MOHOU (MAY), MĚLI BY (SHOULD) nebo MUSÍ (SHALL) mít implementovány specifikovanými profily.

Tato stránka také popisuje aktéry, kteří byli definováni pro specifikaci povinností.

### Aktéři

{% include fsh-link-references.md %}

Byli specifikováni aktéři ve těchto rolích:

| Role                                                 | Popis                                                                                                                      |
| ---------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------- |
| [Tvůrce](ActorDefinition-actor-creator-img.html)     | Prvním je aktér, který vytváří zprávu. Tuto zprávu lze odeslat konzumentovi nebo do úložiště pro ukládání a sdílení zpráv. |
| [Úložiště](ActorDefinition-actor-repos-img.html)     | Druhým aktérem je systém, který uchovává kopii přijaté zprávy, aby ji uložil a zpřístupnil spotřebitelům.                  |
| [Konzument](ActorDefinition-actor-consumer-img.html) | Posledním aktérem je systém, který přijatou nebo načtenou zprávu používá.                                                  |

<p>{% include imgReport_Actors-cs.svg %}</p>

### Seznam povinností

1. Povinnosti pro objekt pacienta ([CZ_PatientObligationsImg](StructureDefinition-cz-patient-obl-img.html))
2. Povinnosti pro informace o žádance ([CZ_ServiceRequestObligationsImg](StructureDefinition-cz-serviceRequest-obl-img.html))
3. Povinnosti zprávy ze zobrazovacích metod ([CZ_DiagnosticReportObligationsImg](StructureDefinition-cz-diagnosticReport-obl-img.html))
4. Povinnosti výsledku vyšetření ([CZ_ObservationResultObligationsImg](StructureDefinition-cz-patient-obl-img.html))