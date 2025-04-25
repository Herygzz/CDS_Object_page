CLASS zcl_ins_rec_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
    METHODS: m_insert.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_ins_rec_data IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    m_insert( ).
    out->write( 'Registros Ingresados Correctamente' ).
  ENDMETHOD.

  METHOD m_insert.
    DATA: lwa_salescust   TYPE zta_salescust.
    DATA: lwa_salesdoc    TYPE zta_salesdoc2.
    DATA: lwa_salesitms   TYPE zta_salesitms2.
    DATA: lwa_products    TYPE zta_product.
    DATA: lwa_producttext TYPE zta_producttext.
    DATA: lwa_parent TYPE zta_parent.
    DATA: lwa_child TYPE zta_child.

    DATA: lt_salescust   TYPE STANDARD TABLE OF zta_salescust.
    DATA: lt_salesdoc    TYPE STANDARD TABLE OF zta_salesdoc2.
    DATA: lt_salesitms   TYPE STANDARD TABLE OF zta_salesitms2.
    DATA: lt_products    TYPE STANDARD TABLE OF zta_product.
    DATA: lt_producttext TYPE STANDARD TABLE OF zta_producttext.
    DATA: lt_parent TYPE STANDARD TABLE OF zta_parent.
    DATA: lt_child TYPE STANDARD TABLE OF zta_child.

    FREE: lt_salescust[],
          lt_salesdoc[],
          lt_salesitms[],
          lt_products[],
          lt_producttext[],
          lt_parent[],
          lt_child[].

    lt_salescust = VALUE #( ( kunnr = '2000008381' land1 = 'MX' name1 = 'VIDRIERA MONTERREY, S.A. DE C.V.' name2 = '' ort01 = 'MONTERREY' regio = 'NL' stras = 'KERAMOS PONIENTE 225' stcd1 = 'VMO091206CMA' )
                            ( kunnr = '2000008507' land1 = 'MX' name1 = 'CX-VITRO COSMOS, S.A. DE C.V.' name2 = '' ort01 = 'DELEGACION MIGUEL HIDALGO,D.F.' regio = 'NL' stras = 'LAGO ZURICH 243' stcd1 = 'VCO340523IV4' )
                          ).

    lt_salesdoc = VALUE #( ( vbeln = '8814' erdat = '20080726' erzet = '02:12:58' vkorg = '11' vtweg = '10' spart = '20' kunnr = '2000008381' )
                           ( vbeln = '8815' erdat = '20080726' erzet = '02:15:27' vkorg = '11' vtweg = '10' spart = '20' kunnr = '2000008381' )
                           ( vbeln = '8830' erdat = '20080731' erzet = '05:12:09' vkorg = '11' vtweg = '10' spart = '20' kunnr = '2000008507' )
                          ).

    lt_salesitms = VALUE #( ( vbeln = '8814' posnr = '10' matnr = '10062' arktx = 'EXHIBIDORES CIRCULO K' meins = 'EA' netwr = '49600' waerk = 'MXN' kwmeng = '1' vrkme = 'EA' werks = '5010' netpr = '49600' )
                            ( vbeln = '8815' posnr = '10' matnr = '10026' arktx = 'COPETE CENEFAS STOPPERS CASA LEY' meins = 'EA' netwr = '6250' waerk = 'MXN' kwmeng = '1' vrkme = 'EA' werks = '5010' netpr = '6250' )
                            ( vbeln = '8815' posnr = '20' matnr = '10026' arktx = 'COPETE CENEFAS STOPPERS CASA LEY' meins = 'EA' netwr = '13230' waerk = 'MXN' kwmeng = '1' vrkme = 'EA' werks = '5010' netpr = '13230' )
                            ( vbeln = '8830' posnr = '10' matnr = '10062' arktx = 'EXHIBIDORES CIRCULO K' meins = 'EA' netwr = '96101.25' waerk = 'MXN' kwmeng = '1' vrkme = 'EA' werks = '5010' netpr = '96101.25' )
                          ).

    lt_products    = VALUE #( ( product_id = '1002623' prod_type = 'FERT' )
                              ( product_id = '1022990' prod_type = 'KMAT' )
                              ( product_id = '1243092' prod_type = 'DIEN' )
                            ).

    lt_producttext = VALUE #( ( language = 'S' product = '1002623' product_name = 'Arena #5' )
                              ( language = 'E' product = '1002623' product_name = 'Sand #5' )
                              ( language = 'S' product = '1022990' product_name = 'Computadora' )
                              ( language = 'E' product = '1022990' product_name = 'Computer' )
                              ( language = 'S' product = '1243092' product_name = 'Desarrollo de Software' )
                              ( language = 'E' product = '1243092' product_name = 'Software Development' ) ).

    lt_parent = VALUE #( ( id = 1 name = 'Heriberto' age = 43 )
                         ( id = 2 name = 'Cihntia Sagrario' age = 43 )
                         ( id = 3 name = 'Ana Melissa' age = 12 )
                         ( id = 4 name = 'Jerry Lee' age = 11 )
                         ( id = 5 name = 'Lolita' age = 5 )
                         ( id = 6 name = 'Benny Lee' age = 43 ) ).

    lt_child = VALUE #( ( addid = 10 refempid = 1 address = 'Santa Cruz 111' zipcode = 66604 country = 'México' )
                        ( addid = 20 refempid = 1 address = 'Sicomoro 510' zipcode = 66440 country = 'México' )
                        ( addid = 10 refempid = 2 address = 'Santa Cruz 111' zipcode = 66604 country = 'México' )
                        ( addid = 20 refempid = 2 address = 'Damasco 408' zipcode = 66600 country = 'México' )
                        ( addid = 10 refempid = 3 address = 'Santa Cruz 111' zipcode = 66604 country = 'México' )
                        ( addid = 10 refempid = 4 address = 'Santa Cruz 111' zipcode = 66604 country = 'México' )
                        ( addid = 20 refempid = 4 address = 'Sicomoro 510' zipcode = 66440 country = 'México' )
                        ( addid = 30 refempid = 4 address = 'Damasco 408' zipcode = 66600 country = 'México' )
                        ( addid = 10 refempid = 5 address = 'Santa Cruz 111' zipcode = 66604 country = 'México' )
                        ( addid = 10 refempid = 6 address = 'Santa Cruz 111' zipcode = 66604 country = 'México' ) ).

*    INSERT zta_salescust FROM TABLE @lt_salescust.
    INSERT zta_salesdoc2  FROM TABLE @lt_salesdoc.
    INSERT zta_salesitms2 FROM TABLE @lt_salesitms.
*    INSERT zta_product    FROM TABLE @lt_products.
*    INSERT zta_producttext FROM TABLE @lt_producttext.
*    INSERT zta_parent FROM TABLE @lt_parent.
*    INSERT zta_child FROM TABLE @lt_child.
*    DELETE FROM  zta_salesdoc2.
*    DELETE FROM  zta_salesitms2.

  ENDMETHOD.
ENDCLASS.
