Logical: LogCzInformationAboutOrderCz
Id: logInformationAboutOrder
Title: "A.2.1 - Informace o žádance (objednávce)"
Description: """Informace o žádance (objednávce) na zdravotní službu. Zpráva může reagovat na více žádanek (objednávek). - A.2.1"""


* ^language = #cs

* idZadanky 0..1 Identifier "A.2.1.1 - ID žádanky (objednávky)" """Identifikátor žádanky (objednávky) zdravotní služby."""
* datumACas 0..1 dateTime "A.2.1.2 - Datum a čas žádosti" """Datum a čas zadání (vystavení) žádanky (objednávky) zdravotní služby."""
* idZadatele 0..1 Identifier "A.2.1.3 - Identifikace žadatele (osoby)" """Identifikační číslo zdravotnického pracovníka, vystavitele žádosti (objednávky), např. lékař, který indikoval vyšetření. Jedná se buď o interní identifikátor přidělený poskytovatelem zdravotní péče, nebo (nejlépe) národní resortní identifikační číslo zdravotnického pracovníka."""
* jmenoZadatele 0..1 HumanName "A.2.1.4 - Jméno žadatele (osoby)" """Jméno žadatele/objednatele (osoby)."""
* adresaZadatele 0..1 Address "A.2.1.5 - Kontaktní údaje žadatele" """Kontaktní údaje na žadatele/objednatele (adresa a telekom. údaje)."""
* organizaceZadatele 0..1 Base "A.2.1.6 - Organizace žadatele (objednatele)" """Organizace (poskytovatel zdravotních služeb), jménem které žadatel vystavil žádanku."""
