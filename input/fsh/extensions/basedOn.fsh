Extension: BasedOnCz
Id:   basedOn-cz
Title:  "Procedure that caused this media to be created"
Description: "This extension allows the entry of a procedure that caused this media to be created."
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert SetFmmandStatusRule ( 1, draft )
* insert ExtensionContext(CZ_KeyImageDocumentReference)

* extension contains
    orderaccession 0..1
* extension[orderaccession] only Extension
* extension[orderaccession].value[x] 1..1
* extension[orderaccession].value[x] only Reference( CZ_ImagingOrderInformation )
