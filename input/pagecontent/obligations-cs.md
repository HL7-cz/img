<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"> 
<blockquote class="stu-note"> 
<b>Informativní pro tuto verzi průvodce</b> 
<p>Do této verze příručky byly přidány povinnosti pouze jako informativní materiál ke shromažďování zpětné vazby o jejich používání.</p> 
</blockquote>
</div>

### Přehled

Povinnosti (Obligations) jsou prostředkem, kterým se v  HL7 FHIR specifikuje schopnosti, které definovaní aktéři MOHOU (MAY), MĚLI BY (SHOULD) nebo MUSÍ (SHALL) mít implementovány specifikovanými profily.

Definujeme tři základní úrovně plnění standardu:
- L1 – nestrukturovaný dokument – předáváno jako nezbytná metadata dokumentu a lidsky čitelný dokument v PDF formátu
- L2 – strukturovaný dokument rozdělený do identifikovatelných sekcí (vstupní vyšetření, anamnéza, rizikové faktory, medikace, doporučení, …), obsah je stále veden pouze v textové neformalizované formě
- L3 – Dokument je strukturovaný do identifikovatelných sekcí (stejných jako v L2), některé informace lze vést ve formalizované podobě, vybrané informace budou povinně vedeny ve formalizované a kódované formě

Tato stránka také popisuje aktéry, kteří byli definováni pro specifikaci povinností.

### Aktéři

{% include fsh-link-references.md %}

Byli specifikováni aktéři ve těchto rolích:

| Role                                                 | Popis                                                                                                                      |
| ---------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------- |
| [Tvůrce úrovně L1](ActorDefinition-actor-creator-img-L1.html)     | Jedná se o aktéra úrovně L1, který vytváří zprávu. Tuto zprávu lze odeslat konzumentovi nebo do úložiště pro ukládání a sdílení zpráv. |
| [Konzument úrovně L1](ActorDefinition-actor-consumer-img-L1.html) | Tento aktér představuje systém úrovně L1, který přijatou nebo načtenou zprávu používá.                                                  |
 |
| [Tvůrce úrovně L2](ActorDefinition-actor-creator-img-L2.html)     | Jedná se o aktéra úrovně L2, který vytváří zprávu. Tuto zprávu lze odeslat konzumentovi nebo do úložiště pro ukládání a sdílení zpráv. |
| [Konzument úrovně L2](ActorDefinition-actor-consumer-img-L2.html) | Tento aktér představuje systém úrovně L2, který přijatou nebo načtenou zprávu používá.                                                  |
 |
| [Tvůrce úrovně L3](ActorDefinition-actor-creator-img-L3.html)     | Jedná se o aktéra úrovně L3, který vytváří zprávu. Tuto zprávu lze odeslat konzumentovi nebo do úložiště pro ukládání a sdílení zpráv. |
| [Konzument  úrovně L3](ActorDefinition-actor-consumer-img-L3.html) | Tento aktér představuje systém úrovně L3, který přijatou nebo načtenou zprávu používá.                                                  |

<p>{% include imgReport_Actors-cs.svg %}</p>

### Seznam povinností

1. Povinnosti pro profil pacienta ([CZ_PatientObligationsImg](StructureDefinition-cz-patient-obl-img.html))
2. Povinnosti pro profil obálky ([CZ_BundleObligationsImg](StructureDefinition-cz-bundle-obl-img.html))
3. Povinnosti pro profil kompozice ([CZ_CompositionObligationsImg](StructureDefinition-cz-composition-obl-img.html))
4. Povinnosti pro profil poskytovatel zdravotních služeb ([CZ_OrganizationObligationsImg](StructureDefinition-cz-organization-obl-img.html))
5. Povinnosti pro profil zdravotního pracovníka ([CZ_PractitionerObligationsImg](StructureDefinition-cz-practitioner-obl-img.html))
6. Povinnosti pro profil role zdravotního pracovníka ([CZ_PractitionerRoledObligationsImg](StructureDefinition-cz-practitionerRole-obl-img.html))
7. Povinnosti pro profil související osoba ([CZ_RelatedPersonObligationsImg](StructureDefinition-cz-relatedPerson-obl-img.html))
8. Povinnosti pro profil úhrada ([CZ_CoverageObligationsImg](StructureDefinition-cz-coverage-obl-img.html))
9. Povinnosti pro profil informací o žádance ([CZ_ServiceRequestObligationsImg](StructureDefinition-cz-serviceRequest-obl-img.html))
10. Povinnosti pro profil zprávy ze zobrazovacích metod ([CZ_DiagnosticReportObligationsImg](StructureDefinition-cz-diagnosticReport-obl-img.html))
11. Povinnosti pro profil výsledku vyšetření ([CZ_ObservationResultObligationsImg](StructureDefinition-cz-observationResult-obl-img.html))