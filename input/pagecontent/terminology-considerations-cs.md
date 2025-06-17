Následuje seznam použitých kódovacích systémů a číselníků:

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
| A.2.3.5       | Anatomické umístění                | SNOMED CT [BodyLocation|LocationICT-O-3]         |
| A.2.3.6       | Morfologie                         | SNOMED CT [MorfologyCodelist]                    |
| A.2.3.7       | Zdroj materiálu                    | SNOMED CT or EMDN                                |
| A.2.3.8       | Procedure                          | SNOMED CT [CollectionMethodCodelist]             |
| A.2.4.3.2     | Reason for examination by code     | SNOMED CT [ReasonCodelist]                       |
| A.2.4.5.1     | Body Part                          | SNOMED CT [BodyLocation|LocationICT-O-3]         |
| A.2.4.5.2     | Laterality                         | SNOMED CT [Laterality Codelists]                 |
| A.2.4.6.7.1   | Body location code                 | SNOMED CT [BodyLocation|LocationICT-O-3]         |
| A.2.4.6.7.2   | Laterality of the body location    | SNOMED CT [Laterality Codelists]                 |
| A.2.4.6.8.1   | Complications formalized           |                                                  |
| A.2.4.6.10.4  | Type of medical device             |                                                  |
| A.2.4.6.11    | Performance category (procedures)  | SNOMED CT [ProcedureCategoryCodelist]            |
| A.2.4.6.12    | Performance (procedures)           | SNOMED CT [ProcedureCodelist]                    |
| A.2.4.6.13    | Achieving a result                 | SNOMED CT                                        |
| A.2.4.7.3     | The route of administration        | SNOMED CT: <284009009                            |
| A.2.4.8.1     | Allergy code                       | SNOMED CT                                        |
| A.2.4.8.2     | Allergy manifestation              | SNOMED CT                                        |
| A.2.4.9.2.13  | Observation code                   | SNOMED CT                                        |
| A.2.6.11      | View                               | SNOMED CT [ViewProjectionCodelist]               |

### FHIR
| Kód položky    | Popis položky           | Hodnota                                                                 |
| ---------------| ----------------------- | ----------------------------------------------------------------------- |
| A.1.1.6        | Úřední pohlaví          | https://terminology.hl7.org/4.0.0/ValueSet-v3-AdministrativeGender.html |
| A.1.2.1        | Adresa                  | https://terminology.hl7.org/4.0.0/ValueSet-v3-Country2.html             |
| A.1.2.4.1      | Typ kontaktu            | http://terminology.hl7.org/CodeSystem/v3-RoleClas                       |
| A.1.8.2        | Kategorie dokumentu     | http://hl7.org/fhir/ValueSet/referenced-item-category                   |
| A.1.8.3        | Stav dokumentu          | https://www.hl7.org/fhir/valueset-diagnostic-report-status.html         |
| A.1.8.7        | Důvernost dokumentu     | https://terminology.hl7.org/ValueSet-v3-Confidentiality.html            |

### DASTA
| Kód položky    | Popis položky           | Hodnota                                                                 |
| ---------------| ----------------------- | ----------------------------------------------------------------------- |
| A.1.1.7        | Komunikační jazyk       | EJAZYK                                                                  |
| A.1.8.8        | Jazyk dokumentu         | EJAZYK                                                                  |

### MVC
| Kód položky    | Popis položky           | Hodnota                                                                 |
| ---------------| ----------------------- | ----------------------------------------------------------------------- |
| A.1.1.5        | Státní občanství        | eHDSICountry                                                            |
| A.1.2.1        | Jazyk dokumentu         | eHDSICountry                                                            |
| A.1.2.4.2      | Vztah k pacientovi      | eHDSIPersonalRelationship                                               |

### DICOM

| Kód položky    | Popis položky           | Hodnota                       |
| ---------------| ----------------------- | ----------------------------- |
| A.2.4.1        | Typ Modality            | DICOM [ModalityCodelist]      |
| A.2.6.12       | Modalita                | DICOM [Acquisition Modality]  |

### LOINC
| Kód položky    | Popis položky           |Hodnota                                                                   |
| ---------------| ----------------------- | ------------------------------------------------------------------------- |
| A.2.4.2        | Typ zobrazovací metody  | https://loinc.org/oids/1.3.6.1.4.1.12009.10.2.5/                          |