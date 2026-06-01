Seznam použitých kódovacích systémů a číselníků:

### MKN-10 / Orphacode

| Kód položky    | Popis položky                            | Hodnota                   |
| ---------------| ---------------------------------------- | ------------------------- |
| A.2.2.1        | Popis zdrav. problému/diagnózy/stavu     |                           |
| A.2.4.6.14     | Onemocnění - důvod výkonu                |                           |

### Snomed-CT

| Kód položky   | Popis položky                      | Hodnota                                          |
| ------------- | ---------------------------------- | ------------------------------------------------ |
| A.2.3.2       | Biologický druh                    | SNOMED CT [TypeOfSpeciesCodelist]                |
| A.2.3.3       | Materiál                           | SNOMED CT [SpecimenMaterialCodelist]             |
| A.2.3.5       | Anatomické umístění                | SNOMED CT [BodyLocation]                         |
| A.2.3.6       | Morfologie                         | SNOMED CT [MorfologyCodelist]                    |
| A.2.3.7       | Zdroj materiálu                    | SNOMED CT                                        |
| A.2.3.8       | Procedure                          | SNOMED CT [CollectionMethodCodelist]             |
| A.2.4.3.2     | Důvod vyšetření                    | SNOMED CT [ReasonCodelist]                       |
| A.2.4.5.1     | Část těla                          | SNOMED CT [BodyLocation]                         |
| A.2.4.5.2     | Lateralita                         | SNOMED CT [Laterality Codelists]                 |
| A.2.4.6.7.1   | Umístění na těle                   | SNOMED CT [BodyLocation]                         |
| A.2.4.6.7.2   | Lateralita                         | SNOMED CT [Laterality Codelists]                 |
| A.2.4.6.8.1   | Komplikace                         | SNOMED CT                                        |
| A.2.4.6.10.4  | Typ zdravotnického zařízení        | SNOMED CT [DiagnosticImagingEquipment]           |
| A.2.4.6.11    | Kategorie výkonu                   | SNOMED CT [ProcedureCategoryCodelist]            |
| A.2.4.6.12    | Výkon                              | SNOMED CT [ProcedureCodelist]                    |
| A.2.4.6.13    | Dosažení výsledku                  | SNOMED CT                                        |
| A.2.4.7.3     | Cesta podání                       | SNOMED CT: <284009009                            |
| A.2.4.8.1     | Kód alergie                        | SNOMED CT                                        |
| A.2.4.8.2     | Projev alergie                     | SNOMED CT                                        |
| A.2.4.9.2.13  | Typ vyšetření                      | SNOMED CT                                        |
| A.2.6.11      | View                               | SNOMED CT [ViewProjectionCodelist]               |

### FHIR

| Kód položky    | Popis položky                            | Hodnota                                                                   |
| -------------- | ---------------------------------------- | ------------------------------------------------------------------------- |
| A.1.1.5        | Státní občanství                         | https://terminology.hl7.org/4.0.0/ValueSet-v3-Country2.html   |
| A.1.1.6        | Úřední pohlaví                           | https://terminology.hl7.org/4.0.0/ValueSet-v3-AdministrativeGender.html   |
| A.1.1.7        | Komunikační jazyk          | https://hl7.org/fhir/R4/valueset-languages.html              |
| A.1.2.1        | Adresa                                   | https://terminology.hl7.org/4.0.0/ValueSet-v3-Country2.html               |
| A.1.2.4.1      | Typ kontaktu                             | http://terminology.hl7.org/CodeSystem/v3-RoleClas                         |
| A.1.2.4.2      | Vztah k pacientovi                       | http://hl7.org/fhir/ValueSet/relatedperson-relationshiptype
| A.1.8.2        | Kategorie dokumentu                      | http://hl7.org/fhir/ValueSet/referenced-item-category                     |
| A.1.8.3        | Stav dokumentu                           | https://www.hl7.org/fhir/valueset-diagnostic-report-status.html           |
| A.1.8.7        | Důvernost dokumentu                      | https://terminology.hl7.org/ValueSet-v3-Confidentiality.html              |
| A.1.8.8        | Jazyk dokumentu            | https://hl7.org/fhir/R4/valueset-languages.html              |

### DICOM

| Kód položky    | Popis položky           | Hodnota                       |
| -------------- | ----------------------- | ----------------------------- |
| A.2.4.1        | Typ Modality            | DICOM [ModalityCodelist]      |
| A.2.6.12       | Modalita                | DICOM [Acquisition Modality]  |

### LOINC

| Kód položky    | Popis položky           | Hodnota                                               |
| -------------- | ----------------------- | ----------------------------------------------------- |
| A.2.4.2        | Typ zobrazovací metody  | https://loinc.org/oids/1.3.6.1.4.1.12009.10.2.5/      |
