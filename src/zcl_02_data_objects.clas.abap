CLASS zcl_02_data_objects DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_02_data_objects IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

* Example 1: Local Types

    TYPES my_p TYPE p LENGTH 3 DECIMALS 2.
    TYPES my_i TYPE i .
    TYPES my_string TYPE string.
    TYPES my_n TYPE n LENGTH 10.

* Variable based on local type
    DATA outvar1 TYPE my_p.
    DATA outvar2 TYPE my_i.
    DATA outvar3 TYPE my_string.
    DATA outvar4 TYPE my_n.

    out->write(  `my_variable (TYPE my_p)` ).
    out->write(   outvar1 ).

    out->write(  `my_variable (TYPE my_i)` ).
    out->write(   outvar2 ).

    out->write(  `my_variable (TYPE my_string)` ).
    out->write(   outvar3 ).

    out->write(  `my_variable (TYPE my_n)` ).
    out->write(   outvar4 ).

    out->write( '----------------------------' ).

* Example 2: Global Types

    DATA airport TYPE /dmo/airport_id VALUE 'FRA'.

    out->write(  `airport (TYPE /DMO/AIRPORT_ID )` ).
    out->write(   airport ).

* Example 3: Constants

    CONSTANTS c_text   TYPE string VALUE `Hello World`.
    CONSTANTS c_number TYPE i      VALUE 12345.

    out->write(  `c_text (TYPE STRING)` ).
    out->write(   c_text ).
    out->write(  '---------' ).

    out->write(  `c_number (TYPE I )` ).
    out->write(   c_number ).
    out->write(  `---------` ).

* Example 4: Literals

    out->write(  '12345               ' ).    "Text Literal   (Type C)
    out->write(  `12345               ` ).    "String Literal (Type STRING)
    out->write(  12345                  ).    "Number Literal (Type I)

  ENDMETHOD.
ENDCLASS.
