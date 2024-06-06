# Vistas en SQL
/*
    Una vista es una consulta que podemos almacenar dentro de nuestra base de datos
    Si tenemos una consulta que ejecutamos de manera frecuente, una vista nos simplificará el trabajo
*/
## !! Parece una tabla independiente pero en realidad no lo es

CREATE VIEW lista_precios
    AS
    SELECT
              idProducto AS id,
              prdNombre AS Producto,
              prdPrecio AS Precio,
              mkNombre AS Marca,
              catNombre AS Categoría
        FROM productos
         JOIN marcas
              ON productos.idMarca = marcas.idMarca
         JOIN categorias
              ON productos.idCategoria = categorias.idCategoria;

/* Llamado a una vista */
SELECT * FROM lista_precios;

-- Obtener listado de todas las vistas deentro de una base de datos

SHOW FULL TABLES
    IN introdb71484
    WHERE Table_type = 'VIEW';