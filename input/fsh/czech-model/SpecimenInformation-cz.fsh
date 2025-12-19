Logical: LogCzSpecimenInformationCz
Id: logSpecimenInformation
Title: "A.2.3 - Informace o vzorku"
Description: """Informace o vzorku, pokud je předmětem vyšetření vzorek."""



* identifikator 1..* Identifier "A.2.3.1 - ID vzorku" """Identifikátor vzorku, který je jedinečný v definovaném rozsahu. Např. identifikátor přidělený objednávkovým systémem, odběrovým místem, příjmovým místem apod."""				
* biologickyDruh 0..1 CodeableConcept "A.2.3.2 - Biologický druh" """Biologický druh se týká vzorků odebraných jiným než lidským subjektům."""				
* material 1..1 CodeableConcept "A.2.3.3 - Materiál vzorku" """Materiál odebraného a zkoumaného vzorku."""		 		
* dobaOdberu 0..1 dateTime "A.2.3.4 - Doba odběru" """Datum a čas nebo doba odběru materiálu."""				
* anatomickeUmisteni 0..1 CodeableConcept "A.2.3.5 - Anatomické umístění" """Anatomické umístění (umístění v rámci těla, lateralita), odkud je materiál odebrán, například 'levý loket'."""				
* morfologie 0..1 CodeableConcept "A.2.3.6 - Morfologie" """Morfologické abnormality anatomického umístění, odkud je materiál odebrán, například 'rána nebo vřed'."""				
* zdrojMaterialu 0..1 CodeableConcept "A.2.3.7 - Zdroj materiálu" """V případě, že není materiál odebrán přímo z pacienta, ale pochází z předmětu, který s pacientem souvisí, například 'katetr'.
 - Preferovaný systém: SNOMED CT
 - Preferovaný systém: EMDN"""				
* metodaOdberu 0..1 CodeableConcept "A.2.3.8 - Metoda odběru materiálu" """Metoda, způsob odběru vzorku, pokud je to pro výsledky relevantní."""				
* datumACasPrevzeti 0..1 dateTime "A.2.3.9 - Datum a čas převzetí" """Datum a čas převzetí vzorku pracovištěm provádějícím vyšetření."""				