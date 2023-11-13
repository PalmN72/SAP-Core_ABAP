CLASS zcl_02_arithmetic DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_02_arithmetic IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

* Declarations



    TYPES t_result_dec2 TYPE p LENGTH 8 DECIMALS 2.
    TYPES t_result_dec0 TYPE p LENGTH 8 DECIMALS 0.
    TYPES t_result_int TYPE i.

    DATA result_int TYPE t_result_int.
    DATA result2 TYPE t_result_dec0.
    DATA result3 TYPE t_result_dec2.

* Calculations


    result_int = 2 + 3.
    out->write( result_int ).

    result_int = 2 - 3.
    out->write( result_int ).

    result_int = 2 * 3.
    out->write( result_int ).

    result3 = 2 / 3.
    out->write( result3 ).

    result2 = sqrt( 2 ).
    out->write( result2 ).

    result_int = ipow( base = 2 exp = 3 ).
    out->write( result_int ).

    result3 = ( 8 * 7 - 6 ) / ( 5 + 4 ).
    out->write( result3 ).

*    **************************************************************
out->write( '------------------------------------------------' ).
    result_int = 8 * 7 - 6 / 5 + 4.
    out->write( result_int ).

    result2 = 8 * 7 - 6 / 5 + 4.
    out->write( result2 ).

    result3 = 8 * 7 - 6 / 5 + 4.
    out->write( result3 ).

  ENDMETHOD.
ENDCLASS.
