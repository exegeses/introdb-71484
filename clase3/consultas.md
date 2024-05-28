# Consultas en SQL

## Consultas a Sever

    -- listar bases de datos  
    SHOW DATABASES;  

    -- listar tablas dentro de una base  
    SHOW TABLES;

> La palabra reservada más importante 
> o al menos la más utilizada es la palabra **SELECT**

    -- Mostrar la base de datos activa  
    SELECT DATABASE();

## Consultas a tablas

> Para realizar consultas a una tabla de una base de datos debemos utilizar la palabra reservada **SELECT** 
> acompañada de la palabra reservada **FROM** 

    SELECT * FROM nombreTabla;

    SELECT * FROM personas;  

    SELECT * FROM destinos;  

> En estos ejemplos traemos todos los datos 
> de todas las columnas de la tabla mencionada

> Si queremos traer los datos de **algunas** columnas de una tabla 
> debemos mencionar los nombres de las columnas separadas por comas ( antes del **FROM** )

    SELECT nombreCol, nombreCol  
        FROM nombreTabla;

> Traer nombre del aeropuerto y precio de la tabla destinos  

    SELECT aeropuerto, precio  
        FROM destinos;  

### Orden de los resultados de una consulta

> Para ordenar los resultados de una consulta 
> utilizamos la palabra **ORDER BY** 

    SELECT aeropuerto, precio  
      FROM destinos
      ORDER BY aeropuerto;

    SELECT aeropuerto, precio  
      FROM destinos
      ORDER BY precio;

    SELECT aeropuerto, precio, idDestino  
      FROM destinos  
      ORDER BY precio;  

    SELECT aeropuerto, precio  
      FROM destinos  
      ORDER BY idRegion, precio;

