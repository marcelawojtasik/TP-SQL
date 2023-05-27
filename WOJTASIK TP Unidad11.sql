create table tpunidad11 (
id int(11) NOT NULL PRIMARY KEY auto_increment);

alter table tpunidad11
add (
nombre varchar(40) not null,
apellido varchar(40) not null,
edad tinyint(2) not null,
fecha timestamp not null default current_timestamp,
provincia varchar(30) not null
);

describe tpsql.tpunidad11;

INSERT INTO `tpsql`.`tpunidad11`
(`id`,
`nombre`,
`apellido`,
`edad`,
`fecha`,
`provincia`)
VALUES
(null,
'Marcela',
'Wojtasik',
38,
now(),
'CABA');

INSERT INTO `tpsql`.`tpunidad11`
(`id`,
`nombre`,
`apellido`,
`edad`,
`fecha`,
`provincia`)
VALUES 
(null,
'Laura',
'Mendizabal',
36,
now(),
'CABA'),
(null,
'Yamila',
'Norte',
35,
now(),
'Buenos Aires'),
(null,
'Natalia',
'Ursino',
43,
now(),
'CABA'),
(null,
'Pire',
'Meli',
35,
now(),
'Rio Negro')
;

update `tpsql`.`tpunidad11` -- Cambio datos de un registro porque por error ejecute dos veces la sentencia inicial de agregar registros
set 
`nombre`='Natalia', 
`edad`=34
where id=2;

