Instance: actor-creator-img
InstanceOf: ActorDefinition
Title: "Actor Imaging Report Creator"
Description: """Imaging Report Creator: a system generating and sending/providing a Imaging Report to a Consumer for report storage and sharing."""
Usage: #example

* url = "http://hl7.cz/fhir/img/actor-creator-img"
* name = "ImgReportCreator"
* status = #active
* type = #system
// * type = #entity
* documentation = """This actor represents the Imaging Report creators. That is the actor creating the report that can be sent to a consumer for report storage and sharing."""

Instance: actor-consumer-img
InstanceOf: ActorDefinition
Title: "Actor Imaging Report Consumer"
Description: """Imaging Report Report Consumer: a system receiving/querying and using a Imaging Report."""
Usage: #example

* url = "http://hl7.cz/fhir/img/actor-consumer-img"
* name = "ImgReportConsumer"
* status = #active
* type = #system
// * type = #entity
* documentation = """This actor represents the Imaging Report consumers. That is the system using the report received or retrieved.
Using includes, but is not limited to, the report display, storage or processing."""