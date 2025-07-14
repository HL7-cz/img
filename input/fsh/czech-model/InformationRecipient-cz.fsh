Logical: LogCzInformationRecipientImagingCz
Id: logInformationRecipientCz
Title: "A.1.4 - Příjemce dokumentu"
Description: """Informace o zamýšleném příjemci dokumentu"""

* IDPrijemce 0..1 Identifier "A.1.4.1 - ID příjemce" """Identifikační číslo zdravotnického pracovníka. Buď interní identifikátor přidělený institucí poskytovatele zdravotní péče, nebo (nejlépe) národní resortní ID zdravotnického pracovníka."""
* jmeno 0..1 HumanName "A.1.4.2 - Jméno příjemce" """Jméno a příjmení osoby příjemce."""
* IDOrganizace 0..* Identifier "A.1.4.3 - ID organizace příjemce" """Identifikátor organizace příjemce."""
* organizace 0..1 Base "A.1.4.4 - Organizace příjemce" """Název a identifikační údaje zdravotnického zařízení příjemce, případně také pracoviště příjemce."""

