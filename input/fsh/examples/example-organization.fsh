//----------------------------------------------------------------------------------------------------------------------------
Instance: Organization-L1
InstanceOf: CZ_OrganizationCore
Usage: #example
Description: "A minimalist example of the organization of a healthcare provider for the purposes of the L1 document. "
* id = "9f7c3d74-2c71-4b92-9a59-2b6f37ecb3d1"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/krpzs"
* identifier[=].value = "27520561"  //Nemocnice Pardubického kraje, a.s., Chrudimská nemocnice IČ
* name = "Nemocnice Pardubického kraje, a.s., Chrudimská nemocnice"
* telecom.system = #phone
* telecom.value = "+420603853227"
* address[+]
  * use = #work
  * line[+] = "Václavská 570"
  * city = "Chrudim"
  * postalCode = "53701"
  * country = "Česká republika"
    * extension[countryCode].valueCoding = urn:iso:std:iso:3166#CZ "Czechia"

//---------------------------------------------------------------------------------------------------------------
Instance: Organization-L1-Odd
InstanceOf: CZ_OrganizationCore
Usage: #example
Description: "A minimalist example of a subordinate department within a hospital hierarchy for the purposes of the L1 document. "
* id = "af2b3114-e872-43b9-9875-cceb39122f7f"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/icp"
* identifier[=].value = "12345678"  
* name = "CHIR - Oddělení chirurgie"
* partOf = Reference(urn:uuid:9f7c3d74-2c71-4b92-9a59-2b6f37ecb3d1) "Nemocnice Pardubického kraje, a.s., Chrudimská nemocnice"
* telecom.system = #phone
* telecom.value = "+42060385555"
* address[+]
  * use = #work
  * line[+] = "Václavská 570"
  * city = "Chrudim"
  * postalCode = "53701"
  * country = "Česká republika"
    * extension[countryCode].valueCoding = urn:iso:std:iso:3166#CZ "Czechia"
//---------------------------------------------------------------------------------------------------------------
Instance: Organization-L1-HOSP
InstanceOf: CZ_OrganizationCore
Usage: #example
Description: "A minimalist example of a subordinate department within a hospital hierarchy for the purposes of the L1 document. "
* id = "a4641bd0-34af-4038-a7db-872d08a54df9"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/icp"
* identifier[=].value = "12345678"  
* name = "CHIR-L2 - Lůžková stanice 2"
* partOf = Reference(urn:uuid:af2b3114-e872-43b9-9875-cceb39122f7f) "Chirurgické oddělení - Nemocnice Pardubického kraje, a.s., Chrudimská nemocnice"
* telecom.system = #phone
* telecom.value = "+42060385111"
* address[+]
  * use = #work
  * line[+] = "Václavská 570"
  * city = "Chrudim"
  * postalCode = "53701"
  * country = "Česká republika"
    * extension[countryCode].valueCoding = urn:iso:std:iso:3166#CZ "Czechia"