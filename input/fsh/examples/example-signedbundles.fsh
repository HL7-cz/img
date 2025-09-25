Instance: cz-examplertg-bundlesigned
InstanceOf: CZ_SignedBundle
Title: "Signed Bundle: RTG Imaging report"
Description: "Example of Imaging report (Signed Bundle) including a RTG report"
Usage: #example
* identifier[+].system = "http://example.org"
* identifier[=].value = "CZEXIR0001"
* type = #collection
* timestamp = "2025-06-20T12:02:00+01:00"

* entry[bundle].fullUrl = "urn:uuid:08bbe654-d7d8-429c-a2b1-ac1f5f522cf2"
* entry[bundle].resource = cz-examplertg-bundle

* entry[provenance].fullUrl = "urn:uuid:1abc966d-736c-461e-9ad0-46aa4058a630"
* entry[provenance].resource = cz-examplertgsigned-provenance

Instance: cz-examplertgsigned-provenance
InstanceOf: CZ_Provenance
Title: "Signature of Bundle"
Usage: #example
Description: "Czech national profile on Signature holds an electronic representation of a signature or timestamp and its supporting context in a FHIR accessible form."
* id = "1abc966d-736c-461e-9ad0-46aa4058a630"
* target.identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/ico"
* target.identifier[=].value = "27520536"
* target.reference = "urn:uuid:08bbe654-d7d8-429c-a2b1-ac1f5f522cf2"
* recorded = "2023-04-05T17:23:07Z"
* agent.role = $v3-ParticipationType#AUT
* agent.who = Reference(Practitioner/Practitioner-2) "MUDr. Hana Doktorová"
* signature.type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.1 "Author's Signature"
* signature.when = "2023-04-05T17:23:07Z"
* signature.who.identifier[+].system = "http://example.org/exampleSystem"
* signature.who.identifier[=].value = "MUDr. Hana Doktorová"
* signature.who = Reference(Practitioner/Practitioner-2) "MUDr. Hana Doktorová"
* signature.targetFormat = #application/fhir+xml
* signature.sigFormat = #application/signature+xml
* signature.data = "dGhpcyBibG9iIGlzIHNuaXBwZWQ="