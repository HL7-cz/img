ValueSet: ImEffectiveDoseUnits
Id: im-effective-dose-units
Title: "Effective Dose Units"
Description: "Units for Effective Dose."
* insert UCUMCopyrightForVS
* ^experimental = false
* $ucum#Sv "Sv"        // Effective Dose
* $ucum#mSv "mSv"       // Effective Dose

ValueSet: ImDoseLengthUnits
Id: im-dose-length-units
Title: "Dose Length Units"
Description: "Units for Dose Length."
* ^experimental = false
* $ucum#mGy.cm "mGy.cm" // Dose length product

ValueSet: ImGraySquareUnits
Id: im-gray-square-units
Title: "Gray Square Units"
Description: "Units for Gray Square."
* ^experimental = false
* $ucum#Gy.m2 "Gy.m2"   // Dose area product
* $ucum#mGy.cm2 "mGy.cm2"   // Dose area product