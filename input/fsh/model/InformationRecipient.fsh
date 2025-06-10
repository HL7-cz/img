Logical: InformationRecipientImagingCz
Id: InformationRecipientCz
Title: "A.1.4 - Information recipient - (intended recipient or recipients of the report), if applicable"
Description: """Information recipient - (intended recipient or recipients of the report), if applicable"""

* identifier 0..1 Identifier "A.1.4.1 - Recipient identifier" """The health professional or patient identifier. Either an internal identifier assigned by a healthcare provider institution or (preferably) a national health professional ID such as the licence or registration number. In case when the recipient is not a health professional, e.g. patient, appropriate personal identifier could be used."""
* name 0..1 HumanName "A.1.4.2 - Recipient name" """Person name [the structure of the name will be the same as for the patient (given name, family name / surname)]."""
* organizationID 0..* Identifier "A.1.4.3 - Recipient organisation ID" """The healthcare provider organisation identifier. Identifier that is unique within a defined scope. Example: National healthcare provider ID. Multiple identifiers could be provided."""
* organization 0..1 BackboneElement "A.1.4.4 - Recipient organisation" """The healthcare provider organisation information."""
* address 0..1 Address "A.1.4.5 - Address" """Mailing and home or office addresses. The addresses are always sequences of address parts (e.g. street address line, country, postcode, city) even if postal address formats may vary depending on the country. An address may or may not include a specific use code; if this attribute is not present it is assumed to be the default address useful for any purpose."""
* country 1..1 CodeableConcept "A.1.4.6 - Country" """Country of the intended recipient as part of the address."""
* telecom 0..* ContactPoint "A.1.4.7 - Telecom" """Telecommunication contact information (addresses) associated to a person, such as phone number, email, or messaging service. Multiple telecommunication addresses might be provided."""

