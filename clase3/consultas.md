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

### Filtrado de resultados

> Filtrar resultados de una consulta significa traer solamente los registros que cumplan con una condición dada.
> Para implementar un filtro utilizamos la palabra reservada
> **WHERE** seguida de la condición

    SELECT colunma2, columna4  
      FROM nombreTabla  
      WHERE condicion;  

> Traer datos de los destinos con un precio hasta 8400

    SELECT aeropuerto, precio   
      FROM destinos  
      WHERE precio <= 8400;  

> Traer datos de los destinos con un precio entre 6600 y 8400

    SELECT aeropuerto, precio  
      FROM destinos  
      WHERE precio BETWEEN 6600 AND 8400;  

    SELECT aeropuerto, precio  
      FROM destinos  
      WHERE precio >= 6600  
      AND precio <= 8400;  

> Traer datos de personas con fecha de alta de los años 2005 y 2006

    select * from personas   
      where alta >= "2005-01-01"  
      and alta <= "2006-12-31";  

    select * from personas 
      where alta BETWEEN '2005-01-01' and '2006-12-31';

    select * from personas 
      where YEAR(alta) BETWEEN 2005 and 2006;

    select * from personas
      where YEAR(alta) IN(2005, 2006);
