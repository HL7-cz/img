Logical: LogEnInformationRecipientImagingCz
Id: InformationRecipientCz
Title: "A.1.4 - Information recipient - (intended recipient or recipients of the report), if applicable"
Description: """Information recipient - (intended recipient or recipients of the report), if applicable"""

* identifier 0..1 Identifier "A.1.4.1 - Recipient identifier" """The health professional or patient identifier. Either an internal identifier assigned by a healthcare provider institution or (preferably) a national health professional ID such as the licence or registration number. In case when the recipient is not a health professional, e.g. patient, appropriate personal identifier could be used."""
* name 0..1 HumanName "A.1.4.2 - Recipient name" """Person name [the structure of the name will be the same as for the patient (given name, family name / surname)]."""
* organizationID 0..* Identifier "A.1.4.3 - Recipient organisation ID" """The healthcare provider organisation identifier. Identifier that is unique within a defined scope. Example: National healthcare provider ID. Multiple identifiers could be provided."""
* organization 0..1 Base "A.1.4.4 - Recipient organisation" """The healthcare provider organisation information."""