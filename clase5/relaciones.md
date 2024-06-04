# Relaciones entre tablas

> Si queremos realizar consultas para traer datos de dos o más tablas vamos a necesitar relacionar las tablas necesarias.
> Tenemos dos t´´écnicas

## 1.- Table relation

> La técnica **table relation** se logra mencionando en el listado de tablas (después del **FROM**) 
> todas las tablas necesarias separadas por comas.
> Y luego mediante un filtro (**WHERE**) 
> igualamos la columna en común
> Nota: La clave foránea de la primera tabla se iguala a la clave primaria de la segunda tabla.

> Sintáxis

    SELECT colTabla1, colTabla1, colTabla2  
      FROM tabla1, tabla2  
      WHERE tabla1.fk = tabla2.pk;  

> Ejemplo práctico: 

    SELECT aeropuerto, precio, nombre  
      FROM destinos, regiones  
      WHERE destinos.idRegion = regiones.idRegion;   

    SELECT prdNombre, prdPrecio, mkNombre  
      FROM productos, marcas  
      WHERE productos.idMarca = marcas.idMarca;  

    SELECT prdNombre, prdPrecio, mkNombre, catNombre  
      FROM productos, marcas, categorias  
      WHERE productos.idMarca = marcas.idMarca  
        AND productos.idCategoria = categorias.idCategoria;  


## 2.- Join

> En la técnica **JOIN** no se mencionan las tablas necesarias 
> en el listado de tablas (después del **FROM**).
> Sólo se menciona la tabla principal.
> Y luego utilizamos la palabra reservada **JOIN** para mencionar la tabla secundaria
> Y finalizamos la consulta igualando la columna en común después de la palabra **ON**  

> Sintáxis: 

    SELECT colTabla1, colTabla1, colTabla2  
      FROM tabla1  
      JOIN tabla2  
        ON tabla1.fk = tabla2.pk

> Ejemplo pr´´actico: 

    SELECT aeropuerto, precio, nombre  
      FROM destinos  
      JOIN regiones  
        ON destinos.idRegion = regiones.idRegion;  

    SELECT prdNombre, prdPrecio, mkNombre  
      FROM productos  
      JOIN marcas  
        ON productos.idMarca = marcas.idMarca;  

    SELECT prdNombre, prdPrecio, mkNombre, catNombre  
      FROM productos  
      JOIN marcas  
        ON productos.idMarca = marcas.idMarca  
      JOIN categorias  
        ON productos.idCategoria = categorias.idCategoria;  

