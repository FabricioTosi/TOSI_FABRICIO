-- • Crear las tablas con los campos.
-- • Crear las relaciones entre las tablas. Tener en cuenta que las relaciones se dan por que existe al menos una PK y una FK
-- • Almacenar como mínimo 3 valores por cada tabla conservando las sentencias realizadas.
-- (EN ESTE EJERCICIO EL PROGRAMA ERDplus CREO UNA TABLA SQL PARA LAS RELACIONES NOSE A QUE SE DEBE ESE ERROR )
CREATE TABLE CURSO
(
  nombre VARCHAR(70) NOT NULL,
  cod_curso INT NOT NULL,
  PRIMARY KEY (cod_curso)
);

CREATE TABLE PROFESORES
(
  profesor_id INT NOT NULL,
  nombre VARCHAR(50) NOT NULL,
  especialidad VARCHAR(70) NOT NULL,
  email VARCHAR(70) NOT NULL,
  PRIMARY KEY (profesor_id)
);

CREATE TABLE ALUMNOS
(
  dni INT NOT NULL,
  nombre VARCHAR(50) NOT NULL,
  cod_matricula VARCHAR(15) NOT NULL,
  email VARCHAR(70) NOT NULL,
  fecha_nacimiento DATE NOT NULL,
  PRIMARY KEY (dni),
  UNIQUE (cod_matricula)
);

CREATE TABLE del
(
  profesor_id INT NOT NULL,
  cod_curso INT NOT NULL,
  PRIMARY KEY (profesor_id, cod_curso),
  FOREIGN KEY (profesor_id) REFERENCES PROFESORES(profesor_id),
  FOREIGN KEY (cod_curso) REFERENCES CURSO(cod_curso)
);

CREATE TABLE de
(
  dni INT NOT NULL,
  cod_curso INT NOT NULL,
  PRIMARY KEY (dni, cod_curso),
  FOREIGN KEY (dni) REFERENCES ALUMNOS(dni),
  FOREIGN KEY (cod_curso) REFERENCES CURSO(cod_curso)
);


INSERT INTO `alumnos` (`dni`, `nombre`, `cod_matricula`, `email`, `fecha_nacimiento`) VALUES ('11111111', 'lucas', '1234', 'lucas@gmail.com', '2000-05-04');
INSERT INTO `alumnos` (`dni`, `nombre`, `cod_matricula`, `email`, `fecha_nacimiento`) VALUES ('22222222', 'matias', '1235', 'matias@gmail.com', '2000-06-12');
INSERT INTO `alumnos` (`dni`, `nombre`, `cod_matricula`, `email`, `fecha_nacimiento`) VALUES ('33333333', 'german', '1236', 'german@gmail.com', '2000-09-04');

INSERT INTO `curso` (`nombre`, `cod_curso`) VALUES ('lucas', '555');
INSERT INTO `curso` (`nombre`, `cod_curso`) VALUES ('german', '556');
INSERT INTO `curso` (`nombre`, `cod_curso`) VALUES ('matias', '557');

INSERT INTO `de` (`dni`, `cod_curso`) VALUES ('11111111', '555');
INSERT INTO `de` (`dni`, `cod_curso`) VALUES ('22222222', '556');
INSERT INTO `de` (`dni`, `cod_curso`) VALUES ('33333333', '557');

INSERT INTO `profesores` (`profesor_id`, `nombre`, `especialidad`, `email`) VALUES ('1111', 'julian', 'ingles', 'julian@gmail.com');
INSERT INTO `profesores` (`profesor_id`, `nombre`, `especialidad`, `email`) VALUES ('1112', 'andres', 'matematicas', 'andres@gmail.com');
INSERT INTO `profesores` (`profesor_id`, `nombre`, `especialidad`, `email`) VALUES ('1113', 'ramon', 'fisica', 'ramon@gmail.com');

INSERT INTO `del` (`profesor_id`, `cod_curso`) VALUES ('1111', '555');
INSERT INTO `del` (`profesor_id`, `cod_curso`) VALUES ('1112', '556');
INSERT INTO `del` (`profesor_id`, `cod_curso`) VALUES ('1113', '557');
