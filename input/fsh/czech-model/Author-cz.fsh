Logical: LogCzAuthorImagingCz
Id: logAuthorCz
Title: "A.1.5 - Autor dokumentu"
Description: """Autor (zprávy z obrazového vyšetření). Lze vložit i více autorů dokumentu."""



* identifikator 1..* Identifier "A.1.5.1 - Identifikátor autora" """Identifikační číslo zdravotnického pracovníka (nebo informačního systému), který provedl zápis do zdravotnické dokumentace. Buď interní identifikátor přidělený institucí poskytovatele zdravotní péče, nebo (nejlépe) národní resortní ID zdravotnického pracovníka."""
* jmeno 1..1 HumanName "A.1.5.2 - Jméno autora" """Jméno autora či informačního systému (např. software, který dokument automatizovaně sestavil)."""
* idOrganizace 1..1 Identifier "A.1.5.3 - ID organizace" """Identifikátor organizace, kterou autor reprezentuje."""
* organizace 1..1 Base "A.1.5.4 - Organizace autora" """Název a identifikační údaje zdravotnického zařízení které je reprezentováno autorem dokumentu."""
* datumACas 1..1 dateTime "A.1.5.5 - Datum a čas uložení" """Datum a čas poslední modifikace dokumentu."""
