Logical: LogCzHeaderImagingReportCz
Id: logHeaderImagingReportCz
Title: "A.1 - Hlavička dokumentu"
Description: """Záhlaví dokumentu s administrativními údaji"""


* ^language = #cs

* subjekt 1..1 logSubjectCz "A.1.1 - Identifikace a A.1.2 - Kontaktní informace pacienta" """Identifikace pacienta a kontaktní informace pacienta"""
* zdravotniPojisteni 0..1 logPayerCz "A.1.3 - Zdravotní pojištění" """Informace o zdravotním pojištění."""
* prijemceDokumentu 0..* logInformationRecipientCz "A.1.4 - Příjemce dokumentu" """Informace o zamýšleném příjemci dokumentu"""
* autor 1..* logAuthorCz "A.1.5 - Autor dokumentu" """Autor dokumentu dle zákona 372/2011 §54 odst. (3)."""
* overil 0..* logAttesterCz "A.1.6 - Ověřil" """Ověřil"""
* zodpovida 0..1 logLegalAuthenticatorCz "A.1.7 - Zodpovídá" """Zodpovídá"""
* metadataDokumentu 1..1 logDocumentMetadataCz "A.1.8 - Metadata dokumentu" """Metadata dokumentu"""
* elektronickyPodpis 1..* logDigitalSignatureCz "A.1.9 - Elektronické podpisy" """Elektronické podpisy dle zákona 327/2011 §54a"""