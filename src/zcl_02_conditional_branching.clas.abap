CLASS zcl_02_conditional_branching DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_02_conditional_branching IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

* Declarations

    CONSTANTS c_number1 TYPE i VALUE 0.
    CONSTANTS c_number2 TYPE i VALUE 1.
    CONSTANTS c_number3 TYPE i VALUE 2.
    CONSTANTS c_number4 TYPE i VALUE -1.
    CONSTANTS c_number5 TYPE i VALUE -2.

* Example 1: Simple IF ... ENDIF.

    out->write(  `--------------------------------` ).
    out->write(  `Example 1: Simple IF ... ENDIF.` ).
    out->write(  `-------------------------------` ).

    IF c_number1 = 0.
      out->write( `The value of C_NUMBER equals 0`   ).
    ELSE.
      out->write( `The value of C_NUMBER is NOT 0`   ).
    ENDIF.

* Example 2: Optional Branches ELSEIF and ELSE

    out->write(  `--------------------------------------------` ).
    out->write(  `Example 2: Optional Branches ELSEIF and ELSE` ).
    out->write(  `--------------------------------------------` ).

    IF c_number2 = 0.
      out->write( `The value of C_NUMBER equals 0`            ).
    ELSEIF c_number2 > 0.
      out->write( `The value of C_NUMBER is greater than 0`   ).
    ELSE.
      out->write( `The value of C_NUMBER is less than 0`      ).
    ENDIF.

* Example 3: CASE ... ENDCASE

    out->write(  `---------------------------` ).
    out->write(  `Example 3: CASE ... ENDCASE` ).
    out->write(  `---------------------------` ).

    CASE c_number3.
      WHEN 0.
        out->write( `The value of C_NUMBER equals 0`             ).
      WHEN 1.
        out->write( `The value of C_NUMBER equals 1`              ).
      WHEN 2.
        out->write( `The value of C_NUMBER equals 2`              ).
      WHEN OTHERS.
        out->write( `The value of C_NUMBER equals none of the above` ).
    ENDCASE.

    CASE c_number4.
      WHEN 0.
        out->write( `The value of C_NUMBER equals 0` ).
      WHEN -1.
        out->write( `The value of C_NUMBER equals -1` ).
      WHEN -2.
        out->write( `The value of C_NUMBER equals -2` ).
      WHEN OTHERS.
        out->write( `The value of C_NUMBER equals none of the above` ).
    ENDCASE.

       CASE c_number5.
      WHEN 0.
        out->write( `The value of C_NUMBER equals 0` ).
      WHEN -1.
        out->write( `The value of C_NUMBER equals -1` ).
      WHEN 1.
        out->write( `The value of C_NUMBER equals 1` ).
      WHEN OTHERS.
        out->write( `The value of C_NUMBER equals none of the above` ).
    ENDCASE.


  ENDMETHOD.
ENDCLASS.
