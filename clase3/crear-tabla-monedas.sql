# creación de tablas monedas

create table monedas
(
    id tinyint unsigned primary key auto_increment not null,
    aproximado float unsigned not null,
    exacto decimal(10,2) unsigned not null
);

-- Inserción de datos en tablas monedas
insert into monedas
    values
        ( DEFAULT, 15.5, 15.5 ),
        ( DEFAULT, 18.76, 18.76 ),
        ( DEFAULT, 33.33, 33.33 ),
        ( DEFAULT, 40.61, 40.61 ),
        ( DEFAULT, 55.24, 55.24 ),
        ( DEFAULT, 66.6, 66.6 );

-- Sumar todos los valores de la columna aproximado
-- y además sumar todos los valores de la columna exacto
SELECT SUM(aproximado), SUM(exacto)
FROM monedas;