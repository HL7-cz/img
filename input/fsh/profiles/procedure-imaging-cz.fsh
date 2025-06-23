Profile: CZ_ProcedureImaging
Parent: Procedure
Id: cz-procedure-imaging
Title: "Procedure: Imaging Report (CZ)"
Description: "This profile on Procedure represents the imaging procedure for the scope of the Czech national interoperability project."
* insert SetFmmandStatusRule( 1, draft )

* code 1..1
* code from CZ_ProcedureTypeVs (extensible)

* performer 0..*
  * insert SliceElementWithDescription( #value, function, [[Different performers can be added to the procedure.]] )
  * function 1..1
* performer contains performer 0..* and imaging-device 0..*
* performer[performer]
  * function
    * coding
      * insert SliceElement( #value, "$this" )
    * coding contains healthcare-professional 0..1
    * coding[healthcare-professional] = $sct#223366009 "Healthcare professional" // TODO check this code
  * actor only Reference(CZ_PractitionerRoleCore)
* performer[imaging-device]
  * function
    * coding
      * insert SliceElement( #value, "$this" )
    * coding contains imaging-equipment 0..1
    * coding[imaging-equipment] = $sct#314789007 "Diagnostic imaging equipment" // TODO check this code
  * actor only Reference(CZ_DeviceObserver)

  