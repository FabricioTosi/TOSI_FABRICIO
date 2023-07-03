
CREATE SCHEMA `clinica` ;
USE `clinica` ;

-- -----------------------------------------------------
-- Table `clinica`.`medico`
-- -----------------------------------------------------
CREATE TABLE `clinica`.`medico` (
  `matricula` INT(11) NOT NULL,
  `nombre` VARCHAR(30) NULL,
  `apellido` VARCHAR(30) NULL,
  `especialidad` VARCHAR(20) NULL,
  `observaciones` TEXT NULL,
  PRIMARY KEY (`matricula`));


-- -----------------------------------------------------
-- Table `clinica`.`paciente`
-- -----------------------------------------------------
CREATE TABLE `clinica`.`paciente` (
  `nss` BIGINT(20) NOT NULL,
  `nombre` VARCHAR(30) NOT NULL,
  `apellido` VARCHAR(30) NOT NULL,
  `domicilio` VARCHAR(50) NULL,
  `codigo_postal` SMALLINT(6) NULL,
  `telefono` VARCHAR(16) NULL,
  `nro_historial_clinico` INT(11) NOT NULL,
  `observaciones` TEXT NULL,
  PRIMARY KEY (`nro_historial_clinico`));


-- -----------------------------------------------------
-- Table `clinica`.`ingreso`
-- -----------------------------------------------------
CREATE TABLE `clinica`.`ingreso` (
  `id_ingreso` INT(11) NOT NULL,
  `fecha_ingreso` DATE NOT NULL,
  `nro_habitacion` SMALLINT(6) NULL,
  `nro_cama` SMALLINT(6) NULL,
  `observaciones` TEXT NULL,
  `medico_matricula` INT(11) NOT NULL,
  `paciente_nro_historial_clinico` INT(11) NOT NULL,
  PRIMARY KEY (`id_ingreso`, `medico_matricula`, `paciente_nro_historial_clinico`),
  INDEX `fk_ingreso_medico_idx` (`medico_matricula` ASC) ,
  INDEX `fk_ingreso_paciente1_idx` (`paciente_nro_historial_clinico` ASC) ,
  CONSTRAINT `fk_ingreso_medico`
    FOREIGN KEY (`medico_matricula`)
    REFERENCES `clinca`.`medico` (`matricula`),
  CONSTRAINT `fk_ingreso_paciente1`
    FOREIGN KEY (`paciente_nro_historial_clinico`)
    REFERENCES `clinica`.`paciente` (`nro_historial_clinico`));
