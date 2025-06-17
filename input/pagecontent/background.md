### Workflow and Tools

Imaging methods are used to image the human body (in this document, we are discussing imaging methods in healthcare) for the purpose of diagnosing, monitoring or treating medical conditions. It is essential that the image records produced are of the highest quality possible, as they have a direct impact on patient treatment outcomes. There are many standards and formats for storing and sharing images. The basic standard used worldwide in healthcare is the DICOM format, and most medical imaging devices manufactured today comply with this standard. Viewing images requires specialized diagnostic medical imaging software.

From a workflow perspective, it is important to integrate DICOM study processing methods that generate quantitative results into the workflow and then automatically import these results directly into radiology reports and graphical summaries, which will help both the healthcare professionals who create the reports and the healthcare professionals who subsequently use the information from the reports.

It is also important for the further development of medical informatics to enable applications and post-processing algorithms to analyze radiological reports and convert them into useful summaries. For example, such applications could analyze reports such as the total amount of tumors in the body over time or indicate whether a particular drug is working, such as through a reduced image of tumor size. This type of information could potentially be linked to a decision support function that would provide differential diagnosis. However, a prerequisite that will be necessary before these types of applications become routine is the integration of workflows.

### Existing standards, profiles and terminologies

In order to achieve interoperability within and between different health information systems, it is necessary to unify standards, profiles and terminologies for both descriptive and structured clinical information across different applications (at local, regional, national or international level). Below we describe the most common existing standards, profiles and terminologies.

#### DICOM
The American College of Radiology (ACR) and the National Electrical Manufacturers Association (NEMA) formed a joint committee in 1983 to develop a standard for storing and distributing images. The first and earliest official standards publication, ACR/NEMA No. 300-1985, known as version 1.0, was published in 1985 with the goal of "promoting the communication and storage of digital imaging information regardless of the manufacturer of the equipment".

In 1993, after several revisions, the ACR-NEMA 300 standard was substantially revised and replaced by this standard, Digital Imaging and Communications in Medicine (DICOM).

The DICOM standard is an international standard that defines medical image formats that can be exchanged with data and in the quality necessary for clinical use. DICOM is the most widely used and widely used imaging standard worldwide. For more than 20 years, this standard has been used to exchange non-textual data (images, videos, waveforms, photographs, etc.), unlike examination reports, which are exchanged in the same way as other reports (e.g., discharge reports) and should follow the same technical and administrative principles as any other health service report.

An image record alone does not provide enough information to be interpreted correctly. In order to be interpreted correctly, it must be accompanied by data about the patient and the method of acquisition (e.g., patient demographics and identification data, reason for the examination, information about the modality and method of acquisition, etc.). For this reason, traditional formats such as JPEG or PNG do not provide all the necessary information to healthcare professionals viewing the images. *The DICOM standard is focused on the manipulation, storage, printing, retrieval, distribution and transmission of images.*

The DICOM standard is divided into different parts, each of which explains different important features of the standard, such as Part 3, which defines the various definitions of information objects, Part 4, which defines the properties that are common to all service classes, and Part 5, which specifies how applications construct and encode information.

Part 18 of the DICOM standard defines DICOMweb, which specifies web services using the HTTP protocol family for managing and distributing DICOM information objects such as medical images, annotations, reports, etc. to healthcare organizations, providers and patients.

DICOM Part 20 contains a specification for transforming DICOM Structured Report (DICOM SR) instances into HL7 CDA documents. DICOM SR is a mechanism for encoding annotations and descriptions of images stored as part of a DICOM study. The Clinical Document Architecture (CDA) standard is primarily intended for the exchange of clinical documents, such as discharge reports and examination notes.

HL7 and DICOM have worked together to harmonize CDA and SR and to avoid unnecessary incompatibilities, but no mechanism for bidirectional transfer of SR to CDA with full fidelity has yet been formally defined by either group, and perhaps never will be.

CDA includes a means for encoding regions of interest in referenced imaging studies, which provides similar mechanisms to those present in DICOM, as well as similar mechanisms for encoding terms from controlled vocabularies. Similar types of graphical elements are used, and the same mechanism is used for referencing two-dimensional coordinates, such as the displacement of a pixel column and row from the upper left corner of the image. CDA follows the HL7 V3 practice of using Unified Medical Language System (UMLS) Concept Unique Identifiers (CUID) as code values, rather than the traditional SNOMED code values ​​used by DICOM, but these can be mapped to each other without loss of information. The code system, which DICOM refers to as the coding scheme identifier, is encoded as a globally unique identifier, specifically an OID (Object Identifier), which is the same as the DICOM unique identifier (UID); these can also be mapped with full fidelity to the DICOM representation, which also added specific mechanisms for encoding the mapping of standard or private coding scheme identifiers to UIDs in a document instance.

Special attention is paid to data obtained during imaging procedures. This data includes images, waveforms, measurements, annotations, and other analytical results managed as DICOM Service-Object Pair (DICOM SOP) instances. These templates reduce variability, improve interoperability, and standardize best practices. They also support automation of report creation and validation of report content.

#### HL7

HL7 International is a non-profit organization for the development of standards in the healthcare sector, founded in 1987, which operates at an international level and is currently one of the most important standards for messaging in the field of health informatics.

HL7 International has developed a set of standards whose primary purpose is to specify the transmission of messages for communicating clinical, demographic, and financial information between computer systems. There are some standards within HL7 that have a different focus, but messaging is one of the strongest aspects of HL7.

#### HL7 V2.x

In March 1987, a committee of healthcare providers, vendors, consultants, and other participants in the international healthcare marketplace shared a common goal of simplifying the implementation of interfaces between computer applications from different and often competing vendors. This committee, which later became known as the HL7 Working Group, seeks to standardize the format and protocol for the exchange of certain key data sets between computer application systems in healthcare.

This collaborative effort resulted in the HL7 Message Exchange Standard for Electronic Health Data Interchange, which is the most widely used international standard in healthcare.

HL7 messages allow the exchange of embedded images between computer systems. These can be attached to an OBX-Observation segment (only in messages that contain this segment type), which encodes the image in Base64, contains a pointer (for example, a URI to a DICOM image stored in a central PACS), or contains a CDA that includes the image itself.

#### HL7 CDA Version 2

HL7 CDA R2 is a basic document exchange standard that provides an architecture, encoding, semantic framework, and markup language for creating clinical documents using the HL7 Information Model (RIM), the HL7 V3 methodology, and managed or local vocabularies (SNOMED CT, ICD, LOINC, etc.). HL7 CDA documents are encoded in XML (Extensible Markup Language).

CDA can support any type of clinical information that may be contained in a patient's medical record, such as a patient summary, prescriptions, history and physical examination, specialist reports, laboratory reports, diagnostics, immunizations, or discharge reports, and many more.

The CDA Release 2 - Imaging Integration Implementation Guide can be found on the HL7 website. The purpose of this implementation guide is to describe the limitations of the CDA Header and Body elements for diagnostic imaging reports. Its purpose is to convey interpretation to the requesting physician and become part of the patient's medical record. It is intended for use in radiology, endoscopy, cardiology, and other imaging specialties.

DICOM Part 20 is the validated implementation guide for CDA R2: Imaging Study Report.

#### HL7 FHIR

HL7 FHIR (Fast Healthcare Interoperability Resources) is the HL7 standard for healthcare data exchange. It combines the best features of HL7 V2.x, HL7 V3, and HL7 CDA R2 with the latest web standards, while being easy to design and implement.
The standard defines a set of resources that represent information about granular clinical concepts, such as a patient, drug, medical device, or procedure performed on a patient.

FHIR defines an ImagingStudy resource that provides information about a DICOM imaging study and about the series and image objects in that study. It also provides information about how to retrieve this information in native DICOM format or in a rendered format, such as JPEG.

FHIR also defines a DiagnosticReport resource that contains clinical context, such as requester and provider information, some combination of atomic results, images, textual and coded interpretations, and formatted representations of diagnostic reports.

One of the clear benefits of FHIR in radiology is the ability to quickly find relevant clinical information. The power of the FHIR interface comes from the simplicity of queries to retrieve specific data, eliminating the need for complex searches in the EMR. One example is the ability to query specifically for the presence of an allergy to iodinated contrast, rather than having to verify in the EMR and search a list of all the patient’s allergies. Using FHIR, imaging software can retrieve clinical information from the EMR and integrate it with other clinical systems used by the radiologist.

#### IHE

IHE (Integrating the Healthcare Enterprise) is a healthcare industry and healthcare organization initiative that improves the way healthcare information systems share information. It promotes the coordinated use of established standards such as DICOM and/or HL7 to achieve optimal patient care. IHE improves healthcare by providing specifications, tools, and services for interoperability and engages clinicians, healthcare organizations, industry, and users in the development, testing, and deployment of standards-based solutions for critical healthcare information needs.

Profiles can be considered as different classes:

###### Content Profiles

Content profiles address the management of a specific type of content object. There are a number of content profiles that describe the details of creating and storing different types of images or image-related objects that would often be created in the context of an IHE intended workflow (SWF). The intended workflow integrates the requesting, scheduling, acquisition, storage, and viewing of images for radiological examinations. A profile addresses how an object is created, stored, queried, and retrieved, but does not address the workflow management process.

Some of these profiles are:
- Nuclear Medicine Image (NM) profile, which specifies how nuclear medicine images and results are created, exchanged, used, and displayed;
- Mammography Image (MAMMO) profile, which specifies how mammography images and evidence objects are created, exchanged, used, and displayed;
- Evidence Documents (ED) profile, which specifies how data objects, such as digital measurements, are created, exchanged, and used;
- or Key Image Note (KIN) profile, which allows users to mark images as significant (e.g., for shipment, for surgery, etc.) and add notes to them.

##### Workflow Profiles

Workflow profiles address the management of a workflow process, which typically includes providing worklists, reporting/monitoring progress, and completing work items. In this context, one or more content objects are typically created according to their content profile. Examples of such profiles include:

- Scheduled Workflow (SWF) profile, which shows how to integrate the requesting, scheduling, retrieving, storing, and viewing of images for radiological examinations;
- Patient Information Reconciliation (PIR) profile, which coordinates patient record reconciliation when images are acquired for unidentified (e.g., trauma) or misidentified patients;
- or Post-Processing Workflow (PWF) profile, which provides worklists, status tracking, and results for post-acquisition tasks such as computer-aided detection or image processing.

##### Infrastructure Profiles

Infrastructure profiles address departmental procedures. Some of these profiles are Cross-enterprise Document Sharing for Imaging (XDS-I.b) detailed below in the "IHE Profiles Used for Imaging" section, which extends:

- XDS profile for sharing images, diagnostic reports, and related information across a group of care sites;
- Audit Trail and Node Authentication – Radiology Option (ATNA) profile, which defines radiology-specific audit trail messages and security measures to protect the confidentiality of patient information;
- or Cross-Enterprise Reliable Document Interchange for Imaging (XDR-I) profile, which extends XDR to transfer images, diagnostic reports, and related information between healthcare providers.

##### Presentation Profiles

Presentation profiles address the presentation of images. Some of these profiles are:

- Consistent Presentation of Images (CPI), which maintains consistent image intensity and transformations across different devices for hard copy and soft copy;
- Key Imag Note (KIN), which allows users to mark images as significant (e.g. for submission, for surgery, etc.) and add notes to them;
- or Presentation of Grouped Procedures (PGP), which helps to display and report individual required procedures (e.g. head, chest, abdomen) that the operator has grouped into a single scan.

##### IHE Profiles Used for Imaging Records (Studies)

IHE defines various profiles for standardizing and sharing clinical imaging records used in different domains and use cases.

The most prominent profiles are:

- Cross-Enterprise Document Sharing for Imaging.b (XDS-I.b) is an interoperability profile that extends XDS (which provides a standards-based specification for managing document sharing between any healthcare organization) to share images, diagnostic reports, and related information across a group of care settings;
- Cross-Community Access for Imaging (XCA-I) supports a means of querying and retrieving patient-relevant medical imaging records held by other communities;
- Cross-enterprise document reliable interchange of images (XDR-I) profile provides DICOM®SOP instances and image reports using a reliable messaging system.

##### National Extensions – IHE Technical Framework

National extensions to the IHE Technical Framework address specific local healthcare needs and facilitate local implementation of the IHE Technical Framework.
They may add requirements to the Technical Framework in general or to specific profiles, actors, transactions, or content modules. Because systems must still comply with the original Technical Framework, national extensions may not rely on or introduce conflicting requirements.
IHE National Committees are responsible for developing national extensions. This is typically done after identifying specific local healthcare needs or implementation challenges during the review, selection, and promotion of integration profiles within their country.

#### DASTA

The current national standard used in the Czech Republic is the "Data Standard for the Exchange of Information in Healthcare" (DASTA or DS).

The DASTA standard is the most widely used standard for data transfer between information systems of healthcare facilities. The DASTA standard is currently embedded in most healthcare information systems in the Czech Republic, including HIS, LIS and information systems for general practitioners and outpatient specialists, etc. The DASTA standard is also used by state institutions such as the ÚZIS (NZIS, eREG), the ZÚ (hygienic and epidemiological registers), etc.

DASTA is based on the XML markup standard. Versions 2 and 3 use "DTD" format files, the current version 4 fully uses XML capabilities (it is built on XML schemas and uses namespaces).

Previously, the DASTA standard was used mainly for data exchange between systems within a healthcare facility, but it is currently also making a significant contribution to data exchange between other healthcare providers.

DASTA can contain and transmit any type of clinical information that would be included in a patient's medical record (e.g. discharge reports, anamnestic and physical reports from specialists, such as medical imaging or pathology reports, etc.). The DASTA system supports unstructured text, as well as links to compound documents encoded in pdf, docx or rtf formats, as well as image formats such as jpg and png.

DASTA specifies that the document content consists of a mandatory text part (which ensures human interpretation of the document content) and optional structured parts (for software processing). The structured part relies on coding systems, such as the DASTA coding system (NCLP, Clinical Events, etc.) and other coding systems used in the Czech healthcare environment) to represent concepts.

The DASTA system has been in use for many years - IS developers are familiar with it and have already developed appropriate software support for it.

DASTA was updated via web services, which enable a flexible, fast and, above all, automatic form of updating the DS and all the code lists with which the DS works. It is possible to add additional data blocks and code lists, including instructions and guidelines.

The technical design of the DS guarantees its universal applicability. It is also a modular system. In particular, the XML platform of the DS4 version uses many progressive elements.

The IS developers are also behind the development of the DS - additions and changes to the DS are discussed in advance as a standard to make them acceptable and feasible. They can then be flexibly and seamlessly integrated into the IS.

The DS is integrated into the IS of many users - changes and innovations are relatively easy to implement in practice. Several courses have been offered to DS users and consultations are available.

DS4 presents clinical events and their practical processing. The issue of clinical events is very broad and is included in the description of the DS4, including a detailed description of the relevant unique patient identifications, identification of their clinical events, including their phases. The introduction of the philosophy of clinical events and the coding system of "clinical events" not only simplified the addition of other clinical events needed for practice, but also facilitated their formalization. All this goes hand in hand with the possibilities of using the XML schema and other tools. Examples of clinical events in the DS4 system include: Laboratory examination (all specifications), X-ray examination (X-ray, CT, SONO...), ECG examination, Patient admission, Surgical report, Consultation decursus, Discharge report, Outpatient report, Extract of reports from the archive, Patient summary, etc.

DS4 presents clinical events and their practical processing. This broad issue is included in the description of DS4, including a detailed description of the relevant unique patient identifications and the identification of their clinical events including individual phases. The introduction of the philosophy of clinical events and the coding system of "clinical events" not only simplified the addition of other clinical events needed for practice, but also facilitated their formalization. All this goes hand in hand with the possibilities of using the XML schema and other tools.

