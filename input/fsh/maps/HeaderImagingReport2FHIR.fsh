Instance: HeaderImagingReport2FHIR-cz
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/img/ConceptMap/HeaderImagingReport2FHIR-cz"
* name = "HeaderImagingReport2FHIRcz"
* title = "CZ Header Model to this guide Map"
* status = #draft
* experimental = true
* description = """CZ Imaging Report Header Model to this guide mapping"""

* group[+].source = "https://hl7.cz/fhir/img/StructureDefinition/SubjectCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-patient-core"
* group[=].element[+].code = #Header.subject
* group[=].element[=].display = "A.1.1 - Identification and A.1.2 - related contact information of the Patient/subject"
* group[=].element[=].target.code = #Patient
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Composition.subject.ofType(CZ_PatientCore) or Composition.subject.ofType(CZ_PatientAnimal)"
* group[=].element[+].code = #Header.payer.insuranceNumber
* group[=].element[=].display = "A.1.3.3 - Health insurance number"
* group[=].element[=].target.code = #Patient.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "If treated as one of the Patient identifiers; this applies in some jurisdictions."
* group[+].source = "https://hl7.cz/fhir/img/StructureDefinition/PayerCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-coverage"
* group[=].element[+].code = #Header.payer
* group[=].element[=].display = "A.1.3 - Health insurance and payment information - Health insurance information is not always required, however, in some jurisdictions, the insurance number is also used as the patient identifier. It is necessary not just for identification but also forms access to funding for care."
* group[=].element[=].target.code = #Composition.section:order.insurance		
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "Composition.InformationAboutOrder.entry.ofType(CZ_ImagingInformationAboutOrder).insurance.ofType(CZ_Coverage)"
* group[=].element[+].code = #Header.payer.insuranceCode
* group[=].element[=].display = "A.1.3.1 - Health insurance code"
* group[=].element[=].target.code = #CZ_Coverage.payor.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.payer.insuranceName
* group[=].element[=].display = "A.1.3.2 - Health insurance name"
* group[=].element[=].target.code = #CZ_Coverage.payor.name
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent	
* group[+].source = "https://hl7.cz/fhir/img/StructureDefinition/InformationRecipientCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-practitioner-core"
* group[=].element[+].code = #Header.informationRecipient
* group[=].element[=].display = "A.1.4 - Recipient identifier"
* group[=].element[=].target.code = #Composition.recipient
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Composition.extension:informationRecipient.valueReference.resolve()"
* group[=].element[+].code = #InformationRecipientCz.identifier
* group[=].element[=].display = "A.1.4.1 - Recipient identifier"
* group[=].element[=].target.code = #CZ_PractitionerCore.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #InformationRecipientCz.name
* group[=].element[=].display = "A.1.4.2 - Recipient name"
* group[=].element[=].target.code = #CZ_PractitionerCore.practictioner.name					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #InformationRecipientCz.organizationID
* group[=].element[=].display = "A.1.4.3 - Recipient organisation ID"
* group[=].element[=].target.code = #CZ_PractitionerCore.organization.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "ID Organization"
* group[=].element[+].code = #InformationRecipientCz.organization
* group[=].element[=].display = "A.1.4.4 - Recipient organisation"
* group[=].element[=].target.code = #CZ_PractitionerCore.organization					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent				
* group[+].source = "https://hl7.cz/fhir/img/StructureDefinition/AuthorCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-practitioner-core"
* group[=].element[+].code = #Header.author
* group[=].element[=].display = "A.1.5 - Author (by whom the Hospital discharge report was/were authored). Multiple authors could be provided."
* group[=].element[=].target.code = #Composition.author
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Composition.author.resolve().ofType(CZ_PractitionerCore)"
* group[=].element[+].code = #AuthorCz.identifier
* group[=].element[=].display = "A.1.5.1 - Author identifier"
* group[=].element[=].target.code = #CZ_PractitionerCore.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #AuthorCz.name
* group[=].element[=].display = "A.1.5.2 - Author name"
* group[=].element[=].target.code = #CZ_PractitionerCore.practictioner.name					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #AuthorCz.organizationID
* group[=].element[=].display = "A.1.5.3 - Author organisation ID"
* group[=].element[=].target.code = #CZ_PractitionerCore.organization.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "If Organization"
* group[=].element[+].code = #AuthorCz.organization
* group[=].element[=].display = "A.1.5.4 - Author organisation"
* group[=].element[=].target.code = #CZ_PractitionerCore.organization					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[+].source = "https://hl7.cz/fhir/img/StructureDefinition/AttesterCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-practitioner-core"					
* group[=].element[+].code = #Header.attester
* group[=].element[=].display = "A.1.6 - Attester (multiple attesters could be provided)"
* group[=].element[=].target.code = #CZ_PractitionerCore
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where attester.mode = 'professional' AND Composition.attester.party.resolve().ofType(CZ_PractitionerCore)"
* group[=].element[+].code = #AttesterCz.identifier
* group[=].element[=].display = "A.1.6.1 - Attester identifier"
* group[=].element[=].target.code = #CZ_PractitionerCore.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #AttesterCz.name
* group[=].element[=].display = "A.1.6.2 - Attester name"
* group[=].element[=].target.code = #CZ_PractitionerCore.practictioner.name					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #AttesterCz.organizationID
* group[=].element[=].display = "A.1.6.3 - Attester organisation ID"
* group[=].element[=].target.code = #CZ_PractitionerCore.organization.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #AttesterCz.organization
* group[=].element[=].display = "A.1.6.4 - Attester organisation"
* group[=].element[=].target.code = #CZ_PractitionerCore.organization					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://hl7.cz/fhir/img/StructureDefinition/LegalAuthenticatorCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-practitioner-core"						
* group[=].element[+].code = #Header.legalAuthenticator
* group[=].element[=].display = "A.1.7 - Legal authenticator (The person taking responsibility for the medical content of the document)"
* group[=].element[=].target.code = #CZ_PractitionerCore					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where attester.mode = 'legal' AND Composition.attester.party.resolve().ofType(CZ_PractitionerCore)"
* group[=].element[+].code = #LegalAuthenticatorCz.identifier
* group[=].element[=].display = "A.1.7.1 - Legal authenticator identifier"
* group[=].element[=].target.code = #CZ_PractitionerCore.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where attester.mode = 'legal'"
* group[=].element[+].code = #LegalAuthenticatorCz.name
* group[=].element[=].display = "A.1.7.2 - Legal authenticator name"
* group[=].element[=].target.code = #CZ_PractitionerCore.practictioner.name					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where attester.mode = 'legal'"
* group[=].element[+].code = #LegalAuthenticatorCz.organizationID
* group[=].element[=].display = "A.1.7.3 - Legal authenticator organisation ID"
* group[=].element[=].target.code = #CZ_PractitionerCore.organization.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where attester.mode = 'legal'"
* group[=].element[+].code = #LegalAuthenticatorCz.organization
* group[=].element[=].display = "A.1.7.4 - Legal authenticator organisation"
* group[=].element[=].target.code = #CZ_PractitionerCore.organization					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where attester.mode = 'legal'"
* group[+].source = "https://hl7.cz/fhir/img/StructureDefinition/DocumentMetadataCz"
* group[=].target = "https://hl7.cz/fhir/img/StructureDefinition/cz-bundle-imaging"
* group[=].element[+].code = #Header.documentMetadata.identifier
* group[=].element[=].display = "A.1.8.1 - Document ID"
* group[=].element[=].target.code = #Bundle.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "If it is the identifier of a particular report instance"
* group[=].element[+].code = #Header.documentMetadata.dateTime
* group[=].element[=].display = "A.1.8.4 - Report date and time"
* group[=].element[=].target.code = #Bundle.timeStamp
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "If it is when this particular version of  this report has been assembled into a Bundle."
* group[+].source = "https://hl7.cz/fhir/img/StructureDefinition/HeaderImagingReportCz"
* group[=].target = "https://hl7.cz/fhir/img/StructureDefinition/cz-composition-imaging"
* group[=].element[+].code = #Header.subject
* group[=].element[=].display = "A.1.1 - Identification and A.1.2 - related contact information of the Patient/subject"
* group[=].element[=].target.code = #Composition.subject		
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent		
* group[=].element[+].code = #Header.author.dateTime
* group[=].element[=].display = "A.1.5.5 - Date Time"
* group[=].element[=].target.code = #Composition.date					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent													
* group[=].element[+].code = #Header.documentMetadata
* group[=].element[=].display = "A.1.8 - Document metadata"
* group[=].element[=].target.code = #Composition.meta					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #Header.documentMetadata.identifier
* group[=].element[=].display = "A.1.8.1 - Document ID"
* group[=].element[=].target.code = #Composition.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "If it is the identifer of the document (indipendently by its versions) and not of this particular document instance."
* group[=].element[+].code = #Header.documentMetadata.category
* group[=].element[=].display = "A.1.8.2 - Document category"
* group[=].element[=].target.code = #Composition.category					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.documentMetadata.status
* group[=].element[=].display = "A.1.8.3 - Document status"
* group[=].element[=].target.code = #Composition.status					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.documentMetadata.dateTime
* group[=].element[=].display = "A.1.8.4 - Report date and time"
* group[=].element[=].target.code = #Composition.date					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "If it is when this document has been created (indipendently by its version)"
* group[=].element[+].code = #Header.documentMetadata.title
* group[=].element[=].display = "A.1.8.5 - Document title"
* group[=].element[=].target.code = #Composition.title					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.documentMetadata.custodian
* group[=].element[=].display = "A.1.8.6 - Report custodian"
* group[=].element[=].target.code = #Composition.custodian					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.documentMetadata.confidentiality
* group[=].element[=].display = "A.1.8.7 - Confidentiality"
* group[=].element[=].target.code = #Composition.confidentiality					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.documentMetadata.language
* group[=].element[=].display = "A.1.8.8 - Language"
* group[=].element[=].target.code = #Composition.language		
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #Header.documentMetadata.version
* group[=].element[=].display = "A.1.8.9 - Version"
* group[=].element[=].target.code = #Composition.extension:versionNumber.valueString					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "As business version, not as resource version"