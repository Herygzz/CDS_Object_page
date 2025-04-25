CLASS lhc_zdd_salesdoc DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR zdd_salesdoc RESULT result.
*    METHODS get_instance_features FOR INSTANCE FEATURES
*      IMPORTING keys REQUEST requested_features FOR zdd_salesdoc RESULT result.

*    METHODS call_bapi FOR MODIFY
*      IMPORTING keys FOR ACTION zdd_salesdoc~call_bapi.

ENDCLASS.

CLASS lhc_zdd_salesdoc IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

*  METHOD get_instance_features.
*  ENDMETHOD.

*  METHOD call_bapi.
*  ENDMETHOD.

ENDCLASS.
