-- • Crear las tablas con los campos.
-- • Crear las relaciones entre las tablas. Tener en cuenta que las relaciones se dan por que existe al menos una PK y una FK
-- • Almacenar como mínimo 3 valores por cada tabla conservando las sentencias realizadas.

CREATE TABLE PAIS_
(
  pais_id INT NOT NULL,
  nombre_pais VARCHAR(60) NOT NULL,
  PRIMARY KEY (pais_id)
);

CREATE TABLE PROVINCIA
(
  provincia_id INT NOT NULL,
  nombre_provincia VARCHAR(60) NOT NULL,
  pais_id INT NOT NULL,
  PRIMARY KEY (provincia_id),
  FOREIGN KEY (pais_id) REFERENCES PAIS_(pais_id)
);

CREATE TABLE LOCALIDAD
(
  codigo_postal INT NOT NULL,
  nombre VARCHAR(50) NOT NULL,
  codigo_localidad VARCHAR(70) NOT NULL,
  provincia_id INT NOT NULL,
  PRIMARY KEY (codigo_postal),
  FOREIGN KEY (provincia_id) REFERENCES PROVINCIA(provincia_id)
);

CREATE TABLE EMPLEADO
(
  empleado_id INT NOT NULL,
  dni INT NOT NULL,
  nombre VARCHAR(50) NOT NULL,
  telefono INT NOT NULL,
  email VARCHAR(70) NOT NULL,
  fecha_alta DATE NOT NULL,
  codigo_postal INT NOT NULL,
  PRIMARY KEY (empleado_id),
  FOREIGN KEY (codigo_postal) REFERENCES LOCALIDAD(codigo_postal),
  UNIQUE (dni)
);

INSERT INTO `pais_` (`pais_id`, `nombre_pais`) VALUES ('1', 'argentina');
INSERT INTO `pais_` (`pais_id`, `nombre_pais`) VALUES ('2', 'brasil');
INSERT INTO `pais_` (`pais_id`, `nombre_pais`) VALUES ('3', 'españa');


INSERT INTO `provincia` (`provincia_id`, `nombre_provincia`, `pais_id`) VALUES ('40', 'buenos_aires', 1);
INSERT INTO `provincia` (`provincia_id`, `nombre_provincia`, `pais_id`) VALUES ('41', 'rio', 2);
INSERT INTO `provincia` (`provincia_id`, `nombre_provincia`, `pais_id`) VALUES ('12', 'madrid', 3);


INSERT INTO `localidad` (`codigo_postal`, `nombre`, `codigo_localidad`, `provincia_id`) VALUES ('1763', 'virrey_del_pino', '7', '40');
INSERT INTO `localidad` (`codigo_postal`, `nombre`, `codigo_localidad`, `provincia_id`) VALUES ('1764', 'janeiro', '8', '41');
INSERT INTO `localidad` (`codigo_postal`, `nombre`, `codigo_localidad`, `provincia_id`) VALUES ('1765', 'tablones', '9', '12');


INSERT INTO `empleado` (`empleado_id`, `dni`, `nombre`, `telefono`, `email`, `fecha_alta`, `codigo_postal`) VALUES ('1', '55667788', 'lucas', '11223344', 'lucas@gmail.com', '2021-09-12', '1763');
INSERT INTO `empleado` (`empleado_id`, `dni`, `nombre`, `telefono`, `email`, `fecha_alta`, `codigo_postal`) VALUES ('2', '66778899', 'mateo', '11223345', 'mateo@gmail.com', '2022-04-03', '1764');
INSERT INTO `empleado` (`empleado_id`, `dni`, `nombre`, `telefono`, `email`, `fecha_alta`, `codigo_postal`) VALUES ('3', '44556677', 'tomas', '11223346', 'tomas@gmail.com', '2023-10-11', '1765');
