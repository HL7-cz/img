The following is a list of the codesystems and valueset used:

### MKN-10 / Orphacode

| Item code      | Item description                                | Value                     |
| ---------------| ----------------------------------------------- | ------------------------- |
| A.2.2.1        | Problem / diagnosis / condition description     |                           |
| A.2.4.6.14     | Illness - reason for the procedure              |                           |

### Snomed-CT

| Item code     | Item description                   | Value                                            |
| ------------- | ---------------------------------- | ------------------------------------------------ |
| A.2.3.2       | Species                            | SNOMED CT [TypeOfSpeciesCodelist]                |
| A.2.3.3       | Material                           | SNOMED CT [SpecimenMaterialCodelist]             |
| A.2.3.5       | Anatomic location                  | SNOMED CT [BodyLocation|LocationICT-O-3]         |
| A.2.3.6       | Morphology                         | SNOMED CT [MorfologyCodelist]                    |
| A.2.3.7       | Source device                      | SNOMED CT or EMDN                                |
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

| Item code     | Item description          | Value                                                                   |
| ------------- | ------------------------- | ----------------------------------------------------------------------- |
| A.1.1.5       | Nationality               | https://terminology.hl7.org/4.0.0/ValueSet-v3-Country2.html             |
| A.1.1.6       | Gender                    | https://terminology.hl7.org/4.0.0/ValueSet-v3-AdministrativeGender.html |
| A.1.2.1       | Address                   | https://terminology.hl7.org/4.0.0/ValueSet-v3-Country2.html             |
| A.1.2.4.1     | Type of contact           | http://terminology.hl7.org/CodeSystem/v3-RoleClas                       |
| A.1.8.2       | Document category         | http://hl7.org/fhir/ValueSet/referenced-item-category                   |
| A.1.8.3       | Document status           | https://www.hl7.org/fhir/valueset-diagnostic-report-status.html         |
| A.1.8.7       | Document confidentiality  | https://terminology.hl7.org/ValueSet-v3-Confidentiality.html            |


### DASTA

| Item code      | Item description        | Value                         |
| -------------- | ----------------------- | ----------------------------- |
| A.1.1.7        | Language                | EJAZYK                        |
| A.1.8.8        | Language                | EJAZYK                        |

### MVC

| Item code      | Item description        | Value                         |
| ---------------| ----------------------- | ----------------------------- |
| A.1.1.5        | Language                | eHDSICountry                  |
| A.1.2.1        | Language                | eHDSICountry                  |
| A.1.2.4.2      | Personal Relationship   | eHDSIPersonalRelationship     |

### DICOM

| Item code      | Item description        | Value                         |
| -------------- | ----------------------- | ----------------------------- |
| A.2.4.1        | Type of Modality        | DICOM [ModalityCodelist]      |
| A.2.6.12       | Modality                | DICOM [Acquisition Modality]  |

### LOINC

| Item code      | Item description        | Value                                                 |
| -------------- | ----------------------- | ----------------------------------------------------- |
| A.2.4.2        | Type of imaging method  | https://loinc.org/oids/1.3.6.1.4.1.12009.10.2.5/      |
