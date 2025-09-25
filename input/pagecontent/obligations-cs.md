<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"> 
<blockquote class="stu-note"> 
<b>Informativní pro tuto verzi průvodce</b> 
<p>Do této verze příručky byly přidány závazná pravidla pouze jako informativní materiál ke shromažďování zpětné vazby o jejich používání.</p> 
</blockquote>
</div>

### Přehled

Závazná pravidla (Obligations) jsou prostředkem, kterým se v  HL7 FHIR specifikuje schopnosti, které definovaní aktéři MOHOU (MAY), MĚLI BY (SHOULD) nebo MUSÍ (SHALL) mít implementovány specifikovanými profily.

Definujeme tři základní úrovně plnění standardu:
- L1 – nestrukturovaný dokument – předáváno jako nezbytná metadata dokumentu a lidsky čitelný dokument v PDF formátu
- L2 – strukturovaný dokument rozdělený do identifikovatelných sekcí (vstupní vyšetření, anamnéza, rizikové faktory, medikace, doporučení, …), obsah je stále veden pouze v textové neformalizované formě
- L3 – Dokument je strukturovaný do identifikovatelných sekcí (stejných jako v L2), některé informace lze vést ve formalizované podobě, vybrané informace budou povinně vedeny ve formalizované a kódované formě

Tato stránka také popisuje aktéry, kteří byli definováni pro specifikaci závazných pravidel.

### Aktéři

{% include fsh-link-references.md %}

Byli specifikováni aktéři ve těchto rolích:

| Role                                                 | Popis                                                                                                                      |
| ---------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------- |
| [Tvůrce úrovně L1](https://build.fhir.org/ig/HL7-cz/cz-core/ActorDefinition/actor-consumer-L1.html)     | Jedná se o aktéra úrovně L1, který vytváří zprávu. Tuto zprávu lze odeslat konzumentovi nebo do úložiště pro ukládání a sdílení zpráv. |
| [Konzument úrovně L1](https://build.fhir.org/ig/HL7-cz/cz-core/ActorDefinition/actor-consumer-L1.html) | Tento aktér představuje systém úrovně L1, který přijatou nebo načtenou zprávu používá.                                                  |
 |
| [Tvůrce úrovně L2](https://build.fhir.org/ig/HL7-cz/cz-core/ActorDefinition/actor-creator-L2.html)     | Jedná se o aktéra úrovně L2, který vytváří zprávu. Tuto zprávu lze odeslat konzumentovi nebo do úložiště pro ukládání a sdílení zpráv. |
| [Konzument úrovně L2](https://build.fhir.org/ig/HL7-cz/cz-core/ActorDefinition/actor-consumer-L2.html) | Tento aktér představuje systém úrovně L2, který přijatou nebo načtenou zprávu používá.                                                  |
 |
| [Tvůrce úrovně L3](https://build.fhir.org/ig/HL7-cz/cz-core/ActorDefinition/actor-creator-L3.html)     | Jedná se o aktéra úrovně L3, který vytváří zprávu. Tuto zprávu lze odeslat konzumentovi nebo do úložiště pro ukládání a sdílení zpráv. |
| [Konzument  úrovně L3](https://build.fhir.org/ig/HL7-cz/cz-core/ActorDefinition/actor-consumer-L3.html) | Tento aktér představuje systém úrovně L3, který přijatou nebo načtenou zprávu používá.                                                  |

<p>{% include imgReport_Actors-cs.svg %}</p>

### Seznam závazných pravidel

1. Pravidla pro profil pacienta ([CZ_PatientObligationsImg](StructureDefinition-cz-patient-obl-img.html))
2. Pravidla pro profil klinické události ([CZ_EncounterObligationsImg](StructureDefinition-cz-encounter-obl-img.html))
3. Pravidla pro profil obálky ([CZ_BundleObligationsImg](StructureDefinition-cz-bundle-obl-img.html))
4. Pravidla pro profil kompozice ([CZ_CompositionObligationsImg](StructureDefinition-cz-composition-obl-img.html))
5. Pravidla pro profil poskytovatel zdravotních služeb ([CZ_OrganizationObligationsImg](StructureDefinition-cz-organization-obl-img.html))
6. Pravidla pro profil zdravotního pracovníka ([CZ_PractitionerObligationsImg](StructureDefinition-cz-practitioner-obl-img.html))
7. Pravidla pro profil role zdravotního pracovníka ([CZ_PractitionerRoleObligationsImg](StructureDefinition-cz-practitionerRole-obl-img.html))
8. Pravidla pro profil související osoba ([CZ_RelatedPersonObligationsImg](StructureDefinition-cz-relatedPerson-obl-img.html))
9. Pravidla pro profil úhrada ([CZ_CoverageObligationsImg](StructureDefinition-cz-coverage-obl-img.html))
10. Pravidla pro profil informací o žádance ([CZ_ServiceRequestObligationsImg](StructureDefinition-cz-serviceRequest-obl-img.html))
11. Pravidla pro profil zprávy ze zobrazovacích metod ([CZ_DiagnosticReportObligationsImg](StructureDefinition-cz-diagnosticReport-obl-img.html))
12. Pravidla pro profil výsledku vyšetření ([CZ_ObservationResultObligationsImg](StructureDefinition-cz-observationResult-obl-img.html))
13. Pravidla pro profil Reakce ([CZ_AdverseEventObligationsImg](StructureDefinition-cz-adverseEvent-obl-img.html))
14. Pravidla pro profil Příloha ([CZ_AttachmentObligationsImg](StructureDefinition-cz-attachment-obl-img.html))
15. Pravidla pro profil Plán péče ([CZ_CarePlanObligationsImg](StructureDefinition-cz-carePlan-obl-img.html))
16. Pravidla pro profil Stav ([CZ_ConditionObligationsImg](StructureDefinition-cz-condition-obl-img.html))
17. Pravidla pro profil Zdravotnický prostředek ([CZ_MedicalDeviceObligationsImg](StructureDefinition-cz-medicalDevice-obl-img.html))
18. Pravidla pro profil Odkaz na klíčové DICOM snímky ([CZ_KeyImageDocumentReferenceObligationsImg](StructureDefinition-cz-keyImageDocumentReference-obl-img.html))
19. Pravidla pro profil Medikace ([CZ_MedicationObligationsImg](StructureDefinition-cz-medication-obl-img.html))
20. Pravidla pro profil Administrace medikace ([CZ_MedicationAdministrationObligationsImg](StructureDefinition-cz-medicationAdministration-obl-img.html))
21. Pravidla pro profil Zvířecí pacient ([CZ_PatientAnimalObligationsImg](StructureDefinition-cz-patientAnimal-obl-img.html))
22. Pravidla pro profil Procedura ([CZ_ProcedureObligationsImg](StructureDefinition-cz-procedure-obl-img.html))
23. Pravidla pro profil Nález radiační dávky ([CZ_RadiationDoseObservationObligationsImg](StructureDefinition-cz-radiationDoseObservation-obl-img.html))
24. Pravidla pro profil Vzorku ([CZ_SpecimenObligationsImg](StructureDefinition-cz-specimen-obl-img.html))
25. Pravidla pro profil DICOM studie ([CZ_StudyImagingObligationsImg](StructureDefinition-cz-studyImaging-obl-img.html))