CLASS zcl_02_predefined_types DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_02_predefined_types IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

* Data Objects with Built-in Types

    DATA string TYPE string.
    DATA integer TYPE i.
    DATA date TYPE d.
    DATA char TYPE c LENGTH 10.
    DATA numeric_text TYPE n LENGTH 10.
    DATA decimal TYPE p LENGTH 8 DECIMALS 2.

* Output

    out->write(  'Result with string' ).
    out->write(   string ).
    out->write(  '---------' ).

    out->write(  'Result with integer' ).
    out->write(   integer ).
    out->write(  '---------' ).

    out->write(  'Result with d' ).
    out->write(   date ).
    out->write(  '---------' ).

    out->write(  'Result with c' ).
    out->write(   char ).
    out->write(  '---------' ).

    out->write(  'Result with n' ).
    out->write(   numeric_text ).
    out->write(  '---------' ).

    out->write(  'Result with p' ).
    out->write(   decimal ).
    out->write(  '---------' ).

  ENDMETHOD.
ENDCLASS.
