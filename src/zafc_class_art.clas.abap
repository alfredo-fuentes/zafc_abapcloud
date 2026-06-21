CLASS zafc_class_art DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zafc_class_art IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA: it_art TYPE STANDARD TABLE OF zafc_tab_art.

    it_art = VALUE #(
    ( client = sy-mandt id_art = 1 desc1 = 'Mini colores' desc2 = 'Un mini estuche con mini colores'
      color = 'varios' piezas = 12  stock = 10
      url = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-mini-colores-estuche-01_700x.jpg?v=1676577703' )
    ( client = sy-mandt id_art = 2 desc1 = 'Monthly planner' desc2 = 'Ideal para planificar tus metas y proyectos. Tiene un forro negro'
      color = 'negro' piezas = 1  stock = 100
      url = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-libreta-monthly-planner-1.jpg?v=1676577703' )
    ( client = sy-mandt id_art = 3 desc1 = 'Marcadores' desc2 = 'Zebra mildliner colores pasteles'
      color = 'varios' piezas = 5  stock = 20
      url = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-mini-colores-estuche-1.jpg?v=1676577703' )
    ( client = sy-mandt id_art = 4 desc1 = 'Lápiz' desc2 = 'Tombow 2558 #HB'
      color = 'negro' piezas = 1  stock = 1
      url = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-tombow-2558-1.jpg?v=1676577703' )

     ).

    INSERT zafc_tab_art FROM TABLE @it_art.

    IF sy-subrc = 0.
      out->write( 'Inserción existosa' ).
    ELSE.
      out->write( 'Inserción errónea' ).
    ENDIF.

  ENDMETHOD.
ENDCLASS.
