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
* group[=].element[+].code = #Subject.identification					
* group[=].element[=].display = "A.1.1 Identification of the patient/subject"					
* group[=].element[=].target.code = #Patient					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto	
* group[=].element[+].code = #Subject.identification.givenName					
* group[=].element[=].display = "A.1.1.1 Given name"					
* group[=].element[=].target.code = #Patient.name.given					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent				
* group[=].element[+].code = #Subject.identification.familyName					
* group[=].element[=].display = "A.1.1.2 Familyname/surname"					
* group[=].element[=].target.code = #Patient.name.family					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Subject.identification.dateOfBirth					
* group[=].element[=].display = "A.1.1.3 Date of birth"					
* group[=].element[=].target.code = #Patient.birthDate					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Subject.identification.identifier					
* group[=].element[=].display = "A.1.1.4 Patient identifier"					
* group[=].element[=].target.code = #Patient.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Subject.identification.citizenship					
* group[=].element[=].display = "A.1.1.5 Citizenship"					
* group[=].element[=].target.code = #Patient.patient-citizenship					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Subject.identification.gender					
* group[=].element[=].display = "A.1.1.6 Gender"					
* group[=].element[=].target.code = #Patient.gender					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Subject.identification.languageOfCommunication					
* group[=].element[=].display = "A.1.1.7 Language of communication"					
* group[=].element[=].target.code = #Patient.communication.language					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Subject.contactInfo					
* group[=].element[=].display = "A.1.2 Patient/subject related contact information"					
* group[=].element[=].target.code = #Patient					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #Subject.contactInfo.address					
* group[=].element[=].display = "A.1.2.1 Address"					
* group[=].element[=].target.code = #Patient.address					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Subject.contactInfo.telecom					
* group[=].element[=].display = "A.1.2.2 Telecom"					
* group[=].element[=].target.code = #Patient.telecom					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Subject.contactInfo.preferedPhysician					
* group[=].element[=].display = "A.1.2.3 Prefered physician"					
* group[=].element[=].target.code = #Patient.generalPractitioner					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Subject.contactInfo.legalRepresent					
* group[=].element[=].display = "A.1.2.4 Legal representatives and other contact persons"					
* group[=].element[=].target.code = #Patient.contact				
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Subject.contactInfo.legalRepresent.type					
* group[=].element[=].display = "A.1.2.4.1 Contact type"					
* group[=].element[=].target.code = #Patient.contact.relationship					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto	
* group[=].element[+].code = #Subject.contactInfo.legalRepresent.relationToSubject					
* group[=].element[=].display = "A.1.2.4.2 Relationship to the patient"					
* group[=].element[=].target.code = #Patient.contact.relationship					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Subject.contactInfo.legalRepresent.identifier					
* group[=].element[=].display = "A.1.2.4.3 Person identifier"					
* group[=].element[=].target.code = #Patient.contact				
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #relatedto	
* group[=].element[+].code = #Subject.contactInfo.legalRepresent.givenName					
* group[=].element[=].display = "A.1.2.4.4 Given name"					
* group[=].element[=].target.code = #Patient.contact.name.given					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Subject.contactInfo.legalRepresent.familyName					
* group[=].element[=].display = "A.1.2.4.5 Family name/surname"					
* group[=].element[=].target.code = #Patient.contact.name.family					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Subject.contactInfo.legalRepresent.address					
* group[=].element[=].display = "A.1.2.4.6 Contact person address"					
* group[=].element[=].target.code = #Patient.contact.address				
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Subject.contactInfo.legalRepresent.telecom					
* group[=].element[=].display = "A.1.2.4.7 Telecom"					
* group[=].element[=].target.code = #Patient.contact.telecom					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent	
* group[+].source = "https://hl7.cz/fhir/img/StructureDefinition/SubjectCz"					
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-practitioner-core"	
* group[=].element[+].code = #Subject.contactInfo.preferedPhysician					
* group[=].element[=].display = "A.1.2.3 Prefered physician"					
* group[=].element[=].target.code = #Practitioner					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Subject.contactInfo.preferedPhysician.Identifier		
* group[=].element[=].display = "A.1.2.3.1 Identification of the prefered physician"					
* group[=].element[=].target.code = #Practitioner.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent		
* group[=].element[+].code = #Subject.contactInfo.preferedPhysician.Name		
* group[=].element[=].display = "A.1.2.3.2 Name of the prefered physician"					
* group[=].element[=].target.code = #Practitioner.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent		
* group[=].element[+].code = #Subject.contactInfo.preferedPhysician.telecom		
* group[=].element[=].display = "A.1.2.3.6 Telecom"					
* group[=].element[=].target.code = #Practitioner.telecom					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent		
* group[+].source = "https://hl7.cz/fhir/img/StructureDefinition/SubjectCz"					
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-practitionerrole-core"	
* group[=].element[+].code = #Subject.contactInfo.preferedPhysician					
* group[=].element[=].display = "A.1.2.3 Prefered physician"					
* group[=].element[=].target.code = #PractitionerRole					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Subject.contactInfo.preferedPhysician.Identifier		
* group[=].element[=].display = "A.1.2.3.1 Identification of the prefered physician"					
* group[=].element[=].target.code = #PractitionerRole.identifier					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent		
* group[=].element[+].code = #Subject.contactInfo.preferedPhysician.Name		
* group[=].element[=].display = "A.1.2.3.2 Name of the prefered physician"					
* group[=].element[=].target.code = #PractitionerRole.practiotioner.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent		
* group[=].element[+].code = #Subject.contactInfo.preferedPhysician.Specialization		
* group[=].element[=].display = "A.1.2.3.3 Specialization of the prefered physician"					
* group[=].element[=].target.code = #PractitionerRole.speciality					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Subject.contactInfo.preferedPhysician.providerIdentifierName		
* group[=].element[=].display = "A.1.2.3.4 Identification and name of the provider the doctor represents"					
* group[=].element[=].target.code = #PractitionerRole.organization.name					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent		
* group[=].element[+].code = #Subject.contactInfo.preferedPhysician.providerAddress		
* group[=].element[=].display = "A.1.2.3.5 Provider address"					
* group[=].element[=].target.code = #PractitionerRole.organization.address					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent	
* group[=].element[+].code = #Subject.contactInfo.preferedPhysician.telecom		
* group[=].element[=].display = "A.1.2.3.6 Telecom"					
* group[=].element[=].target.code = #PractitionerRole.telecom					
* group[=].element[=].target.display = ""					
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://hl7.cz/fhir/img/StructureDefinition/PayerCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-coverage"
* group[=].element[+].code = #Header.payer
* group[=].element[=].display = "A.1.3 - Health insurance and payment information - Health insurance information is not always required, however, in some jurisdictions, the insurance number is also used as the patient identifier. It is necessary not just for identification but also forms access to funding for care."
* group[=].element[=].target.code = #Composition.section:order.insurance		
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "Composition.section:order.entry.ofType(CZ_ImagingInformationAboutOrder).insurance.ofType(CZ_Coverage)"
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
* group[=].element[+].code = #Header.payer.insuranceNumber
* group[=].element[=].display = "A.1.3.3 - Health insurance number"
* group[=].element[=].target.code = #CZ_Coverage.subscriberID
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[+].source = "https://hl7.cz/fhir/img/StructureDefinition/InformationRecipientCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-practitionerRole-core"
* group[=].element[+].code = #Header.informationRecipient
* group[=].element[=].display = "A.1.4 - Recipient identifier"
* group[=].element[=].target.code = #Composition.recipient
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Composition.extension:informationRecipient.valueReference.resolve()"
* group[=].element[+].code = #InformationRecipientCz.identifier
* group[=].element[=].display = "A.1.4.1 - Recipient identifier"
* group[=].element[=].target.code = #CZ_PractitionerRoleCore.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #InformationRecipientCz.name
* group[=].element[=].display = "A.1.4.2 - Recipient name"
* group[=].element[=].target.code = #CZ_PractitionerRoleCore.practictioner.name					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #InformationRecipientCz.organizationID
* group[=].element[=].display = "A.1.4.3 - Recipient organisation ID"
* group[=].element[=].target.code = #CZ_PractitioneRoleCore.organization.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "ID Organization"
* group[=].element[+].code = #InformationRecipientCz.organization
* group[=].element[=].display = "A.1.4.4 - Recipient organisation"
* group[=].element[=].target.code = #CZ_PractitioneRoleCore.organization					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent				
* group[+].source = "https://hl7.cz/fhir/img/StructureDefinition/AuthorCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-practitionerRole-core"
* group[=].element[+].code = #Header.author
* group[=].element[=].display = "A.1.5 - Author (by whom the Hospital discharge report was/were authored). Multiple authors could be provided."
* group[=].element[=].target.code = #Composition.author
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Composition.author.resolve().ofType(CZ_PractitionerRoleCore)"
* group[=].element[+].code = #AuthorCz.identifier
* group[=].element[=].display = "A.1.5.1 - Author identifier"
* group[=].element[=].target.code = #CZ_PractitionerRoleCore.practictioner.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #AuthorCz.name
* group[=].element[=].display = "A.1.5.2 - Author name"
* group[=].element[=].target.code = #CZ_PractitionerRoleCore.practictioner.name					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #AuthorCz.organizationID
* group[=].element[=].display = "A.1.5.3 - Author organisation ID"
* group[=].element[=].target.code = #CZ_PractitionerRoleCore.organization.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "If Organization"
* group[=].element[+].code = #AuthorCz.organization
* group[=].element[=].display = "A.1.5.4 - Author organisation"
* group[=].element[=].target.code = #CZ_PractitionerRoleCore.organization					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[+].source = "https://hl7.cz/fhir/img/StructureDefinition/AuthorCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-encounter"					
* group[=].element[+].code = #AuthorCz.organization
* group[=].element[=].display = "A.1.5.4 - Author organisation"
* group[=].element[=].target.code = #CZ_Encounter.serviceProvider					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[+].source = "https://hl7.cz/fhir/img/StructureDefinition/AttesterCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-practitionerRole-core"					
* group[=].element[+].code = #Header.attester
* group[=].element[=].display = "A.1.6 - Attester (multiple attesters could be provided)"
* group[=].element[=].target.code = #Composition.attester
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where attester.mode = 'professional' AND Composition.attester.party.resolve().ofType(CZ_PractitionerRoleCore)"
* group[=].element[+].code = #AttesterCz.identifier
* group[=].element[=].display = "A.1.6.1 - Attester identifier"
* group[=].element[=].target.code = #CZ_PractitionerRoleCore.practictioner.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #AttesterCz.name
* group[=].element[=].display = "A.1.6.2 - Attester name"
* group[=].element[=].target.code = #CZ_PractitionerRoleCore.practictioner.name					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #AttesterCz.organizationID
* group[=].element[=].display = "A.1.6.3 - Attester organisation ID"
* group[=].element[=].target.code = #CZ_PractitionerRoleCore.organization.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #AttesterCz.organization
* group[=].element[=].display = "A.1.6.4 - Attester organisation"
* group[=].element[=].target.code = #CZ_PractitionerRoleCore.organization					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "https://hl7.cz/fhir/img/StructureDefinition/LegalAuthenticatorCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-practitioner-core"						
* group[=].element[+].code = #Header.legalAuthenticator
* group[=].element[=].display = "A.1.7 - Legal authenticator (The person taking responsibility for the medical content of the document)"
* group[=].element[=].target.code = #Composition.attester					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where attester.mode = 'legal' AND Composition.attester.party.resolve().ofType(CZ_PractitionerRoleCore)"
* group[=].element[+].code = #LegalAuthenticatorCz.identifier
* group[=].element[=].display = "A.1.7.1 - Legal authenticator identifier"
* group[=].element[=].target.code = #CZ_PractitionerRoleCore.practictioner.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where attester.mode = 'legal'"
* group[=].element[+].code = #LegalAuthenticatorCz.name
* group[=].element[=].display = "A.1.7.2 - Legal authenticator name"
* group[=].element[=].target.code = #CZ_PractitionerRoleCore.practictioner.name					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where attester.mode = 'legal'"
* group[=].element[+].code = #LegalAuthenticatorCz.organizationID
* group[=].element[=].display = "A.1.7.3 - Legal authenticator organisation ID"
* group[=].element[=].target.code = #CZ_PractitionerRoleCore.organization.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "where attester.mode = 'legal'"
* group[=].element[+].code = #LegalAuthenticatorCz.organization
* group[=].element[=].display = "A.1.7.4 - Legal authenticator organisation"
* group[=].element[=].target.code = #CZ_PractitionerRoleCore.organization					
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
//* group[=].element[+].code = #Header.documentMetadata.identifier
//* group[=].element[=].display = "A.1.8.1 - Document ID"
//* group[=].element[=].target.code = #Composition.identifier					
//* group[=].element[=].target.display = ""
//* group[=].element[=].target.equivalence = #equivalent					
//* group[=].element[=].target.comment = "If it is the identifer of the document (indipendently by its versions) and not of this particular document instance."
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
* group[+].source = "https://hl7.cz/fhir/img/StructureDefinition/DigitalSignatureCz"
* group[=].target = "https://hl7.cz/fhir/img/StructureDefinition/cz-bundle-imaging"
* group[=].element[+].code = #Header.DigitalSignatureCz.digitalSignature
* group[=].element[=].display = "A.1.9.1 - Electronic signature or document seal"
* group[=].element[=].target.code = #Bundle.signature.data		
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #Header.DigitalSignatureCz.timestamp
* group[=].element[=].display = "A.1.9.2 - Electronic time stamp"
* group[=].element[=].target.code = #Bundle.signature.when					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = ""