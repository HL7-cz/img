Instance: cz-examplebase-imagingorder
InstanceOf: CZ_ImagingServiceRequest
Usage: #example
Title: "Imaging order: MR"
Description: "Imaging order for Magnetic Resonance"

* status = #active
* intent = #order
* category[imaging] = $sctCZ#363679005
* performer = Reference(cz-examplebase-device)
* subject = Reference(cz-examplebase-patient)
* bodySite = $sctCZ#72696002
* code.coding = $sctCZ#19741000087109
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Vyšetření MR pravého kolene</div>"
* authoredOn = "2025-04-01T09:00:00+01:00"
* note.text = "Poznámka k vyšetření"
