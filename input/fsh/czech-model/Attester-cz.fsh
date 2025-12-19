Logical: LogCzAttesterImagingCz
Id: logAttesterCz
Title: "A.1.6 - Ověřil (může být vloženo i více ověřovatelů)"
Description: """Ověřil (může být vloženo i více ověřovatelů)"""



* identifikator 1..* Identifier "A.1.6.1 - Identifikátor ověřovatele" """Identifikační číslo zdravotnického pracovníka, který ověřil dokument. Buď interní identifikátor přidělený institucí poskytovatele zdravotní péče, nebo (nejlépe) národní resortní ID zdravotnického pracovníka."""
* jmeno 1..1 HumanName "A.1.6.2 - Jméno ověřovatele" """Plné jméno a identifikační údaje osoby, která dokument ověřila."""
* idOrganizace 1..1 Identifier "A.1.6.3 - Identifikátor organizace" """Identifikátor organizace, kterou ověřovatel reprezentuje."""
* organizace 1..1 Base "A.1.6.4 - Organizace ověřovatele" """Název a identifikační údaje zdravotnického zařízení které je reprezentováno osobou, která dokument ověřila."""
* datumACas 1..1 dateTime "A.1.6.5 - Datum a čas ověření" """Datum a čas ověření dokumentu."""
