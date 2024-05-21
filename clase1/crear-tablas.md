# crear tablas dentro de una base de datos

> Para crear una tabla dentro de una base de datos 
> utilizamos **CREATE TABLE**

> Sintáxis: 

    CREATE TABLE nombreTabla  
    (  
        nombreColumna1 tipoDato característcas,
        nombreColumna2 tipoDato característcas,
        nombreColumna3 tipoDato característcas,
        nombreColumna4 tipoDato característcas
    );


> Ejemplo práctico: 

    CREATE TABLE personas  
    ( 
        id tinyint unsigned auto_increment primary key not null,
        apellido varchar(45) not null,
        nombre varchar(45) not null,
        dni int unsigned unique not null,
        alta date not null
    );

