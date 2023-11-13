CLASS zcl_01_hello_world_seb DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_01_hello_world_seb IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  out->write( `Hello World` ).
  ENDMETHOD.
ENDCLASS.
