# consulta a través de una tabla intermedia (pivot)

-- traer nombre de producto (productos)
-- nombre de proveedor (proveedores)

SELECT prdNombre AS Producto, prvNombre AS Proveedor
    FROM productos
    JOIN productos_proveedores
      ON productos.idProducto = productos_proveedores.idProducto
    JOIN proveedores
      ON productos_proveedores.idProveedor = proveedores.idProveedor;

/*
    Agregar el nombre de la marca (de la tabla marcas)
    y el nombre de la categoría (de la tabla categorías)
*/

SELECT
        prdNombre AS Producto,
        mkNombre AS Marca,
        catNombre AS Categoría,
        prvNombre AS Proveedor
    FROM productos
         JOIN productos_proveedores
              ON productos.idProducto = productos_proveedores.idProducto
         JOIN proveedores
              ON productos_proveedores.idProveedor = proveedores.idProveedor
         JOIN marcas
              ON productos.idMarca = marcas.idMarca
         JOIN categorias
              ON productos.idCategoria = categorias.idCategoria;