

INSERT INTO `clinica`.`medico` (`matricula`, `nombre`, `apellido`, `especialidad`, `observaciones`) VALUES ('155', 'Alfredo', 'Gutierrez', 'Medicina Familiar', 'No atiende PAMI');
INSERT INTO `clinica`.`medico` (`matricula`, `nombre`, `apellido`, `especialidad`) VALUES ('221', 'Luisa', 'Foseca', 'Cardiología');
INSERT INTO `clinica`.`medico` (`matricula`, `nombre`, `apellido`, `especialidad`, `observaciones`) VALUES ('226', 'Frodo', 'Bolson', 'Pediatría', 'Solamente turno tarde');
INSERT INTO `clinica`.`medico` (`matricula`, `nombre`, `apellido`, `especialidad`, `observaciones`) VALUES ('332', 'Jesus Maria', 'Prates', 'Cirugía', '');
INSERT INTO `clinica`.`medico` (`matricula`, `nombre`, `apellido`, `especialidad`) VALUES ('334', 'Gandalf', 'Meriadoc', 'Infectología');
INSERT INTO `clinica`.`medico` (`matricula`, `nombre`, `apellido`, `especialidad`, `observaciones`) VALUES ('449', 'Ricardo', 'Puchini', 'Medicina Familiar ', 'medico clinico general');
INSERT INTO `clinica`.`medico` (`matricula`, `nombre`, `apellido`, `especialidad`) VALUES ('645', 'Cacho', 'Villa', 'Oftalmología');
INSERT INTO `clinica`.`medico` (`matricula`, `nombre`, `apellido`, `especialidad`) VALUES ('733', 'Tatiana', 'Brandigamo', 'Pediatría');
INSERT INTO `clinica`.`medico` (`matricula`, `nombre`, `apellido`, `especialidad`) VALUES ('774', 'Alfonso', 'Chamorro', 'Cardiología');
INSERT INTO `clinica`.`medico` (`matricula`, `nombre`, `apellido`, `especialidad`, `observaciones`) VALUES ('888', 'Pedro Pablo', 'Cichanowski', 'Urología', 'actualmente con licencia por covid');


INSERT INTO `clinica`.`paciente` (`nss`, `nombre`, `apellido`, `domicilio`, `codigo_postal`, `telefono`, `nro_historial_clinico`) VALUES ('32197', 'Aewin', 'Rohan', 'Valinor 1001 ', '2366', '3274-232336', '675');
INSERT INTO `clinica`.`paciente` (`nss`, `nombre`, `apellido`, `domicilio`, `codigo_postal`, `telefono`, `nro_historial_clinico`, `observaciones`) VALUES ('971649', 'Glorfindel', 'Arda', 'Terminal esquina Avenida ', '3360', '3755-447031 ', '778', 'realizar PCR');
INSERT INTO `clinica`.`paciente` (`nss`, `nombre`, `apellido`, `domicilio`, `codigo_postal`, `telefono`, `nro_historial_clinico`) VALUES ('316619', 'Karen Sophia', 'Burgin', 'Primeros Colonos y Junin ', '3640', '3745-998877 ', '1236');
INSERT INTO `clinica`.`paciente` (`nss`, `nombre`, `apellido`, `domicilio`, `codigo_postal`, `telefono`, `nro_historial_clinico`) VALUES ('3648', 'Gimli', 'Moria', 'Juan Manuel de Orquideas 335', '3363', '3755-866545', '1488');
INSERT INTO `clinica`.`paciente` (`nss`, `nombre`, `apellido`, `domicilio`, `codigo_postal`, `telefono`, `nro_historial_clinico`, `observaciones`) VALUES ('87164', 'Legolas', 'Bosque Negro', 'Krause y Villavieja ', '3514', '3971-544444', '1498', 'historial de cardiopatias');
INSERT INTO `clinica`.`paciente` (`nss`, `nombre`, `apellido`, `domicilio`, `codigo_postal`, `telefono`, `nro_historial_clinico`) VALUES ('254651', 'Elrond', 'Rivendell', 'Balneario Campo Grande', '3350', '3764-421479 ', '1884');
INSERT INTO `clinica`.`paciente` (`nss`, `nombre`, `apellido`, `domicilio`, `codigo_postal`, `telefono`, `nro_historial_clinico`) VALUES ('369844', 'Galadriel', 'Lorien', 'Bareiro 170', '2207', '3943-425561', '3212');
INSERT INTO `clinica`.`paciente` (`nss`, `nombre`, `apellido`, `domicilio`, `codigo_postal`, `telefono`, `nro_historial_clinico`) VALUES ('44946', 'Josefina', 'Pereira Dias ', 'Calle primera 201', '3363', '3755-587912 ', '4112');
INSERT INTO `clinica`.`paciente` (`nss`, `nombre`, `apellido`, `domicilio`, `codigo_postal`, `telefono`, `nro_historial_clinico`) VALUES ('654165', 'Jose', 'Villagran', 'Arrayanes 1205 ', '3360', '3755-589478', '4551');


INSERT INTO `clinica`.`ingreso` (`id_ingreso`, `fecha_ingreso`, `nro_habitacion`, `nro_cama`, `medico_matricula`, `paciente_nro_historial_clinico`) VALUES ('1', '2021-11-01', '1', '2', '449', '1884');
INSERT INTO `clinica`.`ingreso` (`id_ingreso`, `fecha_ingreso`, `nro_habitacion`, `nro_cama`, `medico_matricula`, `paciente_nro_historial_clinico`) VALUES ('2', '2021-11-02', '1', '1', '226', '1488');
INSERT INTO `clinica`.`ingreso` (`id_ingreso`, `fecha_ingreso`, `nro_habitacion`, `nro_cama`, `observaciones`, `medico_matricula`, `paciente_nro_historial_clinico`) VALUES ('3', '2021-11-02', '2', '4', 'Falta completar carnet de vacunacion', '733', '1498');
INSERT INTO `clinica`.`ingreso` (`id_ingreso`, `fecha_ingreso`, `nro_habitacion`, `nro_cama`, `medico_matricula`, `paciente_nro_historial_clinico`) VALUES ('4', '2021-11-03', '1', '2', '774', '4551');
INSERT INTO `clinica`.`ingreso` (`id_ingreso`, `fecha_ingreso`, `nro_habitacion`, `nro_cama`, `medico_matricula`, `paciente_nro_historial_clinico`) VALUES ('5', '2021-11-05', '4', '7', '645', '4112');
INSERT INTO `clinica`.`ingreso` (`id_ingreso`, `fecha_ingreso`, `nro_habitacion`, `nro_cama`, `medico_matricula`, `paciente_nro_historial_clinico`) VALUES ('6', '2021-11-15', '5', '9', '226', '1236');
INSERT INTO `clinica`.`ingreso` (`id_ingreso`, `fecha_ingreso`, `nro_habitacion`, `nro_cama`, `medico_matricula`, `paciente_nro_historial_clinico`) VALUES ('7', '2021-11-17', '5', '10', '774', '675');
INSERT INTO `clinica`.`ingreso` (`id_ingreso`, `fecha_ingreso`, `nro_habitacion`, `nro_cama`, `medico_matricula`, `paciente_nro_historial_clinico`) VALUES ('8', '2021-12-09', '3', '6', '888', '778');
INSERT INTO `clinica`.`ingreso` (`id_ingreso`, `fecha_ingreso`, `nro_habitacion`, `nro_cama`, `observaciones`, `medico_matricula`, `paciente_nro_historial_clinico`) VALUES ('9', '2021-12-11', '4', '8', 'Solicitar electrocardiograma', '332', '4112');
INSERT INTO `clinica`.`ingreso` (`id_ingreso`, `fecha_ingreso`, `nro_habitacion`, `nro_cama`, `medico_matricula`, `paciente_nro_historial_clinico`) VALUES ('10', '2021-12-11', '2', '3', '774', '3212');
INSERT INTO `clinica`.`ingreso` (`id_ingreso`, `fecha_ingreso`, `nro_habitacion`, `nro_cama`, `medico_matricula`, `paciente_nro_historial_clinico`) VALUES ('11', '2021-12-18', '2', '4', '334', '778');
INSERT INTO `clinica`.`ingreso` (`id_ingreso`, `fecha_ingreso`, `nro_habitacion`, `nro_cama`, `medico_matricula`, `paciente_nro_historial_clinico`) VALUES ('12', '2021-12-22', '1', '1', '155', '1488');
INSERT INTO `clinica`.`ingreso` (`id_ingreso`, `fecha_ingreso`, `nro_habitacion`, `nro_cama`, `medico_matricula`, `paciente_nro_historial_clinico`) VALUES ('13', '2022-01-04', '9', '17', '645', '1236');
INSERT INTO `clinica`.`ingreso` (`id_ingreso`, `fecha_ingreso`, `nro_habitacion`, `nro_cama`, `medico_matricula`, `paciente_nro_historial_clinico`) VALUES ('14', '2022-01-11', '5', '9', '226', '675');
INSERT INTO `clinica`.`ingreso` (`id_ingreso`, `fecha_ingreso`, `nro_habitacion`, `nro_cama`, `medico_matricula`, `paciente_nro_historial_clinico`) VALUES ('15', '2022-01-22', '4', '8', '155', '3212');
INSERT INTO `clinica`.`ingreso` (`id_ingreso`, `fecha_ingreso`, `nro_habitacion`, `nro_cama`, `medico_matricula`, `paciente_nro_historial_clinico`) VALUES ('16', '2022-01-16', '8', '16', '226 ', '1236');
INSERT INTO `clinica`.`ingreso` (`id_ingreso`, `fecha_ingreso`, `nro_habitacion`, `nro_cama`, `medico_matricula`, `paciente_nro_historial_clinico`) VALUES ('17', '2022-01-24', '2', '3', '888', '1488');
INSERT INTO `clinica`.`ingreso` (`id_ingreso`, `fecha_ingreso`, `nro_habitacion`, `nro_cama`, `medico_matricula`, `paciente_nro_historial_clinico`) VALUES ('18', '2022-02-01', '8', '15', '334', '3212');
INSERT INTO `clinica`.`ingreso` (`id_ingreso`, `fecha_ingreso`, `nro_habitacion`, `nro_cama`, `medico_matricula`, `paciente_nro_historial_clinico`) VALUES ('19', '2022-02-14', '1', '2', '449', '1884');
INSERT INTO `clinica`.`ingreso` (`id_ingreso`, `fecha_ingreso`, `nro_habitacion`, `nro_cama`, `medico_matricula`, `paciente_nro_historial_clinico`) VALUES ('20', '2022-02-15', '7', '13', '888', '4112');
INSERT INTO `clinica`.`ingreso` (`id_ingreso`, `fecha_ingreso`, `nro_habitacion`, `nro_cama`, `medico_matricula`, `paciente_nro_historial_clinico`) VALUES ('21', '2022-03-02', '3', '5', '155', '675');
INSERT INTO `clinica`.`ingreso` (`id_ingreso`, `fecha_ingreso`, `nro_habitacion`, `nro_cama`, `medico_matricula`, `paciente_nro_historial_clinico`) VALUES ('22', '2022-03-07', '8', '12', '334', '4551');
INSERT INTO `clinica`.`ingreso` (`id_ingreso`, `fecha_ingreso`, `nro_habitacion`, `nro_cama`, `medico_matricula`, `paciente_nro_historial_clinico`) VALUES ('23', '2022-03-13', '3', '6', '645', '1498');
INSERT INTO `clinica`.`ingreso` (`id_ingreso`, `fecha_ingreso`, `nro_habitacion`, `nro_cama`, `medico_matricula`, `paciente_nro_historial_clinico`) VALUES ('24', '2022-03-16', '9', '18', '155', '675');
INSERT INTO `clinica`.`ingreso` (`id_ingreso`, `fecha_ingreso`, `nro_habitacion`, `nro_cama`, `medico_matricula`, `paciente_nro_historial_clinico`) VALUES ('25', '2022-03-19', '5', '9', '774', '4112');
INSERT INTO `clinica`.`ingreso` (`id_ingreso`, `fecha_ingreso`, `nro_habitacion`, `nro_cama`, `observaciones`, `medico_matricula`, `paciente_nro_historial_clinico`) VALUES ('26', '2022-03-22', '6', '11', 'Cuenta con servicio integral de reabilitacion', '332', '1498');
INSERT INTO `clinica`.`ingreso` (`id_ingreso`, `fecha_ingreso`, `nro_habitacion`, `nro_cama`, `medico_matricula`, `paciente_nro_historial_clinico`) VALUES ('27', '2022-03-22', '3', '6', '332', '1884');
INSERT INTO `clinica`.`ingreso` (`id_ingreso`, `fecha_ingreso`, `nro_habitacion`, `nro_cama`, `medico_matricula`, `paciente_nro_historial_clinico`) VALUES ('28', '2022-03-22', '5', '10', '449', '778');
INSERT INTO `clinica`.`ingreso` (`id_ingreso`, `fecha_ingreso`, `nro_habitacion`, `nro_cama`, `medico_matricula`, `paciente_nro_historial_clinico`) VALUES ('29', '2022-03-23', '1', '1', '155', '4112');
INSERT INTO `clinica`.`ingreso` (`id_ingreso`, `fecha_ingreso`, `nro_habitacion`, `nro_cama`, `medico_matricula`, `paciente_nro_historial_clinico`) VALUES ('30', '2022-03-25', '3', '6', '226', '1236');
INSERT INTO `clinica`.`ingreso` (`id_ingreso`, `fecha_ingreso`, `nro_habitacion`, `nro_cama`, `medico_matricula`, `paciente_nro_historial_clinico`) VALUES ('31', '2022-03-29', '2', '4', '645', '3212');
INSERT INTO `clinica`.`ingreso` (`id_ingreso`, `fecha_ingreso`, `nro_habitacion`, `nro_cama`, `medico_matricula`, `paciente_nro_historial_clinico`) VALUES ('32', '2022-03-30', '9', '17', '155', '4112');
INSERT INTO `clinica`.`ingreso` (`id_ingreso`, `fecha_ingreso`, `nro_habitacion`, `nro_cama`, `observaciones`, `medico_matricula`, `paciente_nro_historial_clinico`) VALUES ('33', '2022-04-05', '6', '11', 'Internacion por deshidratacion', '733', '1488');
INSERT INTO `clinica`.`ingreso` (`id_ingreso`, `fecha_ingreso`, `nro_habitacion`, `nro_cama`, `medico_matricula`, `paciente_nro_historial_clinico`) VALUES ('34', '2022-04-07', '7', '13', '774', '4551');

