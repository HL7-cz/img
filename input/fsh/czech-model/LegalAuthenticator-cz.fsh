Logical: LogCzLegalAuthenticatorImagingCz
Id: logLegalAuthenticatorCz
Title: "A.1.7 - Zodpovídá"
Description: """Zodpovídá"""

* insert SetFmmandStatusRule ( 1, draft )

* identifikator 1..* Identifier "A.1.7.1 - Zodpovídá - ID" """Identifikační číslo zdravotnického pracovníka, který zodpovídá za celkový obsah dokumentu. Buď interní identifikátor přidělený institucí poskytovatele zdravotní péče, nebo (nejlépe) národní resortní ID zdravotnického pracovníka."""
* jmeno 1..1 HumanName "A.1.7.2 - Zodpovídá - jméno osoby" """Plné jméno a identifikační údaje osoby, která zodpovídá za obsah dokumentu."""
* IDOrganizace 0..* Identifier "A.1.7.3 - Zodpovídá - ID organizace" """Identifikátor zdravotnického zařízení které je reprezentováno osobou, která zodpovídá za obsah dokumentu."""
* organizace 1..1 Base "A.1.7.4 - Zodpovídá - organizace" """Název a identifikační údaje zdravotnického zařízení které je reprezentováno osobou, která zodpovídá za obsah dokumentu."""
* datumACas 1..1 dateTime "A.1.7.5 - Datum a čas autorizace" """Datum a čas autorizace dokumentu."""
