Logical: LogCzReasonForAdmissionCz
Id: logReasonForAdmission
Title: "A.2.2 - Důvod vyžádání (objednání)"
Description: """Důvod vyžádání (objednání) - indikace."""

* insert SetFmmandStatusRule ( 1, draft )
* ^language = #cs

* kod 1..* CodeableConcept "A.2.2.1 Popis zdrav. problému/diagnózy/stavu" """Okolnosti zdravotního problému/diagnózy/zdravotního stavu), které ovlivňují zdraví pacienta a jejichž znalost je zásadní pro práci zdravotnického pracovníka během kontaktu s pacientem. Klinický stav subjektu vyšetření relevantní pro interpretaci výsledků.
- Preferovaný systém: ICD-10 (MKN-10)
- Preferovaný systém: Orphacode"""