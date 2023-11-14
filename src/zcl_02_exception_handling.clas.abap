CLASS zcl_02_exception_handling DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_02_exception_handling IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

* Declarations

    DATA result TYPE i.

    DATA numbers TYPE TABLE OF i.

* Preparation

    APPEND 123 TO numbers.

* Example 1: Conversion Error (no Number)

    CONSTANTS c_text1 TYPE string VALUE 'ABC'.
    CONSTANTS c_text2 TYPE string VALUE '123'.

    out->write(  `---------------------------` ).
    out->write(  `Example 1: Conversion Error` ).
    out->write(  `---------------------------` ).

    TRY.
        result = c_text1.
        out->write( |Converted content is { result }|  ).
      CATCH cx_sy_conversion_no_number.
        out->write( |Error: { c_text1 } is not a number!| ).
    ENDTRY.

    TRY.
        result = c_text2.
        out->write( |Converted content is { result }|  ).
      CATCH cx_sy_conversion_no_number.
        out->write( |Error: { c_text2 } is not a number!| ).
    ENDTRY.

* Example 2: Division by Zero

    CONSTANTS c_number1 TYPE i VALUE 0.
    CONSTANTS c_number2 TYPE i VALUE 7.

    out->write(  `---------------------------` ).
    out->write(  `Example 2: Division by Zero` ).
    out->write(  `---------------------------` ).

    TRY.
        result = 100 / c_number1.
        out->write( |100 divided by { c_number1 } equals { result }| ).
      CATCH cx_sy_zerodivide.
        out->write(  `Error: Division by zero is not defined!` ).
    ENDTRY.

    TRY.
        result = 100 / c_number2.
        out->write( |100 divided by { c_number2 } equals { result }| ).
      CATCH cx_sy_zerodivide.
        out->write(  `Error: Division by zero is not defined!` ).
    ENDTRY.

* Example 3: Itab Error (Line Not Found)

    CONSTANTS c_index1 TYPE i VALUE 2.
    CONSTANTS c_index2 TYPE i VALUE 1.

    out->write(  `-------------------------` ).
    out->write(  `Example 3: Line Not Found` ).
    out->write(  `-------------------------` ).

    TRY.
        result = numbers[ c_index1 ].
        out->write( |Content of row { c_index1 } equals { result }| ).
      CATCH cx_sy_itab_line_not_found.
        out->write(  `Error: Itab has less than { c_index } rows!` ).
    ENDTRY.

    TRY.
        result = numbers[ c_index2 ].
        out->write( |Content of row { c_index2 } equals { result }| ).
      CATCH cx_sy_itab_line_not_found.
        out->write(  `Error: Itab has less than { c_index } rows!` ).
    ENDTRY.

* Example 4: Combination of Different Exceptions

    out->write(  `----------------------` ).
    out->write(  `Example 4: Combination` ).
    out->write(  `----------------------` ).

    CONSTANTS c_char1 TYPE c LENGTH 1 VALUE 'X'.
    CONSTANTS c_char2 TYPE c LENGTH 1 VALUE '0'.
    CONSTANTS c_char3 TYPE c LENGTH 1 VALUE '1'.
    CONSTANTS c_char4 TYPE c LENGTH 1 VALUE '2'.

    DATA chars TYPE TABLE OF c.

    APPEND c_char1 TO chars.
    APPEND c_char2 TO chars.
    APPEND c_char3 TO chars.
    APPEND c_char4 TO chars.

    LOOP AT chars INTO DATA(chars_inline).

      TRY.
          result = numbers[ 2 / chars_inline ].
          out->write( |Result: { result } | ).
        CATCH cx_sy_zerodivide.
          out->write( `Error: Division by zero is not defined`  ).
        CATCH cx_sy_conversion_no_number.
          out->write( |Error: { chars_inline } is not a number! | ).
        CATCH cx_sy_itab_line_not_found.
          out->write( |Error: Itab contains less than { 2 / chars_inline } rows| ).
      ENDTRY.
    ENDLOOP.

  ENDMETHOD.
ENDCLASS.
