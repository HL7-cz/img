Extension: RadiationDoseExt
Title: "Extension: Radiation Dose"
Id: RadiationDose
Description: "Radiation dose information in the imaging report"
* ^context[+].type = #element
* ^context[=].expression = "Composition.section"
* ^context[+].type = #element
* ^context[=].expression = "DiagnosticReport"
* value[x] only string
* valueString ^short = "Radiation dose summary text."
* valueString ^comment = "Information on total exposure to ionising radiation. This information is required by regulations in several EU countries."
