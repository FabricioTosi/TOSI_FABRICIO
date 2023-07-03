
-- A)     INSERT INTO `clinica`.`paciente` (`nss`, `nombre`, `apellido`, `domicilio`, `codigo_postal`, `nro_historial_clinico`) VALUES ('3640', 'Antonio', 'Magallanes', 'Dos Pindo 260', '3640', '1932');

-- B)     UPDATE `clinica`.`paciente` SET `telefono` = '3745-589174' WHERE (`nro_historial_clinico` = '1932');

-- C)     SELECT CONCAT(p.apellido, ', ', p.nombre) AS paciente, i.observaciones AS observacion_registrada FROM clinica.paciente p JOIN clinica.ingreso i ON p.nro_historial_clinico = i.paciente_nro_historial_clinico WHERE i.observaciones IS NOT NULL;

-- D)     SELECT CONCAT(p.apellido, ', ', p.nombre) AS paciente, m.especialidad FROM clinica.paciente p JOIN clinica.ingreso i ON p.nro_historial_clinico = i.paciente_nro_historial_clinico JOIN clinica.medico m ON i.medico_matricula = m.matricula;

-- E)     DELETE from medico where matricula not in (select medico_matricula from ingreso);

-- F)     SELECT nro_cama AS numero_cama, COUNT(*) AS usos FROM clinica.ingreso GROUP BY nro_cama ORDER BY usos DESC;

-- G)     SELECT CONCAT(p.apellido, ', ', p.nombre) AS paciente, COUNT(*) AS cantidad_ingresos FROM clinica.paciente p JOIN clinica.ingreso i ON p.nro_historial_clinico = i.paciente_nro_historial_clinico GROUP BY p.nro_historial_clinico HAVING COUNT(*) >= 4 ORDER BY cantidad_ingresos DESC;
   

