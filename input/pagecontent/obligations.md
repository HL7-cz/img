<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<blockquote class="stu-note">
<b>Informative for this version of the guide</b>
<p>The obligations have been added to this version of the guide only as informative material to gather feedback on their use.</p>
</blockquote>
</div>

### Overview 

Obligations are a mean offered by HL7 FHIR to specify functional capabilities that defined actors MAY, SHOULD or SHALL to the data elements specified by the profiles.

We define three basic levels of compliance with the standard:
- L1 – unstructured document – ​​transmitted as necessary document metadata and a human-readable document in PDF format
- L2 – structured document divided into identifiable sections (entry examination, medical history, risk factors, medication, recommendations, …), the content is still kept only in textual non-formalized form
- L3 – The document is structured into identifiable sections (same as in L2), some information can be kept in formalized form, selected information will be kept in formalized and coded form

This page describes also the actors that have been defined for specifying the obligations.

### Actors

{% include fsh-link-references.md %}

Actors were specified in these roles:

| Role                                                    | Description                                                                                                                          |
| ------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------ |
| the [Level 1 Creator](ActorDefinition-actor-creator-img-L1.html)   | This is a L1 actor that creates a report. This report can be sent to a consumer or to a repository for storing and sharing report. |
| the [Level 1 Consumer](ActorDefinition-actor-consumer-img-L1.html) | This L1 actor represents the system that uses the received or retrieved report.                                                                 |
| the [Level 2 Creator](ActorDefinition-actor-creator-img-L2.html)   | This is a L2 actor that creates a report. This report can be sent to a consumer or to a repository for storing and sharing report. |
| the [Level 2 Consumer](ActorDefinition-actor-consumer-img-L2.html) | This L2 actor represents the system that uses the received or retrieved report.                                                                 |
| the [Level 3 Creator](ActorDefinition-actor-creator-img-L3.html)   | This is a L3 actor that creates a report. This report can be sent to a consumer or to a repository for storing and sharing report. |
| the [Level 3 Consumer](ActorDefinition-actor-consumer-img-L3.html) | This L3 actor represents the system that uses the received or retrieved report.                                                                 |

<p>{% include imgReport_Actors.svg %}</p>

### Obligations List

1. Obligations for profile Patient ([CZ_PatientObligationsImg](StructureDefinition-cz-patient-obl-img.html))
2. Obligations for profile Bundle ([CZ_BundleObligationsImg](StructureDefinition-cz-bundle-obl-img.html))
3. Obligations for profile Composition ([CZ_CompositionObligationsImg](StructureDefinition-cz-composition-obl-img.html))
4. Obligations for profile Organisation ([CZ_OrganizationObligationsImg](StructureDefinition-cz-organization-obl-img.html))
5. Obligations for profile Practitioner ([CZ_PractitionerObligationsImg](StructureDefinition-cz-practitioner-obl-img.html))
6. Obligations for profile Practitioner Role ([CZ_PractitionerRoledObligationsImg](StructureDefinition-cz-practitionerRole-obl-img.html))
7. Obligations for profile Related Person ([CZ_RelatedPersonObligationsImg](StructureDefinition-cz-relatedPerson-obl-img.html))
8. Obligations for profile Coverage ([CZ_CoverageObligationsImg](StructureDefinition-cz-coverage-obl-img.html))
9. Obligations for profile Service request ([CZ_ServiceRequestObligationsImg](StructureDefinition-cz-serviceRequest-obl-img.html))
10. Obligations for profile Diagnostic Report ([CZ_DiagnosticReportObligationsImg](StructureDefinition-cz-diagnosticReport-obl-img.html))
11. Obligations for profile Observation Result ([CZ_ObservationResultObligationsImg](StructureDefinition-cz-observationResult-obl-img.html))