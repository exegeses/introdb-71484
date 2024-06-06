# Alias en SQL
/*
    En SQL podemos renombrar el enunciado de una columna cuando hacemos una consulta.
    Esto se logra mediante un alias
    Nota: No se cambia realmente el nombre de la columna sino que se renombre a sólo para el reporte resultante de la consulta.
    Implementamos un alias con la palabra AS (se puede omitir)
*/

SELECT 	prdNombre AS Producto,
          prdPrecio AS 'Precio contado',
          prdPrecio * 1.05 AS 'Precio Lista',
          mkNombre AS Marca,
          catNombre AS Categoría
    FROM productos
     JOIN marcas
          ON productos.idMarca = marcas.idMarca
     JOIN categorias
          ON productos.idCategoria = categorias.idCategoria;
