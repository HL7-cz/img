### Purpose

The purpose of the document is to create a national, functional and technical specification for the exchange of imaging examination results. At the same time, the proposed standard must guarantee basic compatibility with similar standards that are being developed within the framework of the European X-eHealth project and other similar projects. The concept of the functional specification is therefore based on the European specification for imaging examination results adopted by the European eHealth Network (eHN) and within the objectives of this project, its adaptation to the conditions of the Czech healthcare system is carried out so that its practical use in the Czech Republic is possible.

The document focuses mainly on the area of ​​semantic interoperability, but also addresses some legal, regulatory and organizational aspects that are important for the exchange of data within the domain of diagnostic imaging methods.

### Scope

This document focuses on aspects of interoperability of imaging examination results, typically radiological examinations or nuclear medicine examinations, but also examinations performed by clinicians, such as gynecological ultrasound. Typical for imaging examination methods is the acquisition of an image record, currently mainly in digital form, which is assessed by healthcare professionals specializing in these examination methods. The report from imaging methods contains information about the examination itself and its result in written form and is part of the medical documentation. The report is stored as part of the patient's medical documentation kept by the provider and is also transmitted or made available to the physician who indicated the procedure and to the patient, unless the procedure is performed as part of hospitalization.

The document focuses on:
- priority use cases;
- categorization and naming of medical documentation (findability);
- structure and definition of medical documentation data (interoperability, reuse, translatability);
- mechanisms and infrastructure for information exchange (availability);
- workflows between organizations (quality, efficiency);
- examining existing standards and best practices and implementation guidelines that can be reused as input for functional specifications;
- presenting the methodology related to the described topics, combining existing materials and harmonizing them into a draft of new standards;
- providing specifications for each of the topics;
- gathering findings and highlighting future challenges for the imaging field and proposing a roadmap for further challenges in the area of ​​interoperability.

The functional specification is applicable to cases of hospital care, specialized outpatient care and general practice as well as emergency care.

#### Areas covered

The document focuses on standardizing the content of structured electronic records of imaging methods (radiological methods, nuclear medicine methods, ultrasound methods, etc.) and metadata, on interoperability and machine processing aspects, but also on data extensions, e.g. references to related records, selected DICOM data from imaging studies, additional annexes, etc. The document also focuses on aspects related to the exchange and sharing of these messages using information technology.

<div>
<img src="content-en.png" class="figure-img img-responsive img-rounded center-block" width="80%">
<p> </p>
<p>Fig. 1: CONTENT OF THE STANDARD</p>
<p> </p>
</div>

#### Areas not covered

The document does not cover the area of ​​image documentation in the form of digital image records (studies) from devices. These image studies are created, processed, stored and transmitted in standardized formats and using communication protocols of the international DICOM standard. For transmission or sharing between healthcare providers, two exchange networks (ePACS and ReDiMed) based on the DICOM standard are currently available in the Czech Republic.

### Content

#### Information Models

##### Conceptual view

Imaging result report could be divided into several parts: document header, body, presented form in PDF and optionally it could also have various attachments.

###### Imaging Result Report

<figure>
  {% include imgReport_CIM.svg %}
</figure>

###### Imaging Result header

<figure>
  {% include imgReportHead_CIM.svg %}
</figure>

###### Imaging Result body

<figure>
  {% include imgReportBody_CIM.svg %}
</figure>

{% include StructureDefinition-cz-composition-imaging-intro.md %}