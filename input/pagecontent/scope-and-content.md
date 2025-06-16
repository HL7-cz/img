### Scope

#### Included Areas
The document focuses on the standardization of the content of structured electronic records from imaging methods (radiological methods, nuclear medicine methods, ultrasound methods, etc.) and metadata, on aspects of interoperability and machine processing, as well as on the expansion of data, e.g. references to related records, selected DICOM data from imaging studies, additional attachments, etc. The document also focuses on aspects related to the exchange and sharing of these reports using information technology.

#### Excluded Areas
The document does not cover the area of image documentation in the form of digital image records (studies) from devices. These image studies are created, processed, stored, and transmitted in standardized formats and using communication protocols of the international DICOM standard. For transmission or sharing between healthcare providers, there are currently many exchange networks available in the Czech Republic based on the DICOM standard.

### Model
Basic Sections of the Imaging Report

| Section |	Cardinality	| Obligation | Link |
| - | - | - | - |
| A.1 Header with Administrative Document Data | 1..1 |	Mandatory |  |
| A.2 Document Content | 1..1 | Mandatory | - |
| A.2.1 Information about the order | 0..* | Mandatory | Link |
| A.2.2 Reason for Admission | 0..1 | Mandatory | Link |
| A.2.3 Sample information | 0..* | Mandatory | Link |
| A.2.4 Report of imaging method | 1..1 | Required | Link |
| A.2.5 Link to related report | 0..* | Optional | Link |
| A.2.6 Media (attachments) | 0..* | Optional | Link |
| A.2.7 DICOM metadata | 0..*| Optional| Link |