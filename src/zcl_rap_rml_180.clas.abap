CLASS zcl_rap_rml_180 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_rap_rml_180 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

*    "Step 1 - READ
*    READ ENTITIES OF zi_rap_travel_180
*    ENTITY Travel
*    FROM VALUE #( ( TravelUUID = '3AF010A1EAD3022619008FA2BE55DFA6' ) )
*    RESULT DATA(travels).
*
*    out->write( travels ).

    "Step 2 - READ with fields
*    READ ENTITIES OF zi_rap_travel_180
*    ENTITY Travel
*    FIELDS ( AgencyID CustomerID )
*    WITH VALUE #( ( TravelUUID = '3AF010A1EAD3022619008FA2BE55DFA6' ) )
*    RESULT DATA(travels).
*
*    out->write( travels ).

*    "Step 3 - READ with ALL fields
*    READ ENTITIES OF zi_rap_travel_180
*    ENTITY Travel
*    ALL FIELDS
*    WITH VALUE #( ( TravelUUID = '3AF010A1EAD3022619008FA2BE55DFA6' ) )
*    RESULT DATA(travels).
*
*    out->write( travels ).

*    "Step 4 - READ By Association
*    READ ENTITIES OF zi_rap_travel_180
*    ENTITY Travel by \_Booking
*    ALL FIELDS
*    WITH VALUE #( ( TravelUUID = '3AF010A1EAD3022619008FA2BE55DFA6' ) )
*    RESULT DATA(travels).
*
*    out->write( travels ).

    "Step 5 - Unsuccessful READ
*    READ ENTITIES OF zi_rap_travel_180
*    ENTITY Travel BY \_Booking
*    ALL FIELDS
*    WITH VALUE #( ( TravelUUID = '111111111111111111111111111111111' ) )
*    RESULT DATA(travels)
*    FAILED DATA(failed)
*    REPORTED DATA(reported).
*
*    out->write( travels ).
*    out->write( failed ).
*    out->write( reported ).

    "Stepe 6 - MODIFY Update
*    MODIFY ENTITIES OF zi_rap_travel_180
*    ENTITY Travel
*    UPDATE
*    SET FIELDS WITH VALUE
*        #( ( TravelUUID = '3AF010A1EAD3022619008FA2BE55DFA6'
*         Description = 'I like RAP@opneSAP') )
*         FAILED DATA(failed)
*         REPORTED DATA(reported).
*
*    out->write( failed ).
*    out->write( reported ).
*
*    out->write( 'Update done' ).
*
*    COMMIT ENTITIES
*    RESPONSE OF zi_rap_travel_180
*    FAILED DATA(faile_commit)
*    REPORTED DATA(reported_commit).
*
*    out->write( faile_commit ).
*    out->write( reported_commit ).


**    Step 7 - MODIFY Create
*    MODIFY ENTITIES OF zi_rap_travel_180
*    ENTITY Travel
*    CREATE
*    SET FIELDS WITH VALUE
*        #( ( %cid       = 'MyContentID_180'
*            AgencyID    = '70012'
*            CustomerID  = '14'
*            BeginDate   = cl_abap_context_info=>get_system_date(  )
*            EndDate     = cl_abap_context_info=>get_system_date(  ) + 10
*            Description = 'I like RAP@opneSAP') )
*        MAPPED DATA(mapped)
*        FAILED DATA(failed)
*        REPORTED DATA(reported).
*
*    out->write( mapped-travel ).
*
*
*    COMMIT ENTITIES
*    RESPONSE OF zi_rap_travel_180
*    FAILED   DATA(failed_commit)
*    REPORTED DATA(reported_commit).
*
*    out->write( 'Create done' ).

*    Step 8 - MODIFY Delete
    MODIFY ENTITIES OF zi_rap_travel_180
    ENTITY Travel
    DELETE FROM
        VALUE #( ( TravelUUID = '3AF010A1EAD3022619008FA2BE55DFA6' ) )
         FAILED DATA(failed)
         REPORTED DATA(reported).


    COMMIT ENTITIES
    RESPONSE OF zi_rap_travel_180
    FAILED DATA(faile_commit)
    REPORTED DATA(reported_commit).

    out->write( 'Delete done' ).



  ENDMETHOD.

ENDCLASS.
