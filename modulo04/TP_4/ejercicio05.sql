CREATE TABLE departamentos (
departamento_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(100) NOT NULL,
presupuesto DOUBLE UNSIGNED NOT NULL,
estado boolean NOT NULL
);
CREATE TABLE empleados (
emplaedo_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
cuil_cuit VARCHAR(15) NOT NULL UNIQUE,
nombre VARCHAR(100) NOT NULL,
apellido VARCHAR(100) NOT NULL,
departamento INT UNSIGNED,
estado BOOLEAN,
FOREIGN KEY (departamento) REFERENCES departamentos(departamento_id));

-------------------------------------------------------------------------------

INSERT INTO departamentos VALUES(1, 'Desarrollo', 120000, true);
INSERT INTO departamentos VALUES(2, 'Sistemas', 150000, true);
INSERT INTO departamentos VALUES(3, 'Recursos Humanos', 280000, true);
INSERT INTO departamentos VALUES(4, 'Contabilidad', 110000, true);
INSERT INTO departamentos VALUES(5, 'I+D', 375000, true);
INSERT INTO departamentos VALUES(6, 'Proyectos', 0,true );
INSERT INTO departamentos VALUES(7, 'Publicidad', 0, true);
INSERT INTO departamentos VALUES(8, 'Comercial', 0, false);
INSERT INTO empleados VALUES(1, '27-32481596-3', 'Aarón', 'Rivero', 1, true);
INSERT INTO empleados VALUES(2, '27-29557532-1', 'Adela', 'Salas', 2, true);
INSERT INTO empleados VALUES(3, '20-36970642-1', 'Adolfo', 'Rubio', 3, true);
INSERT INTO empleados VALUES(4, '20-41705545-1', 'Adrián', 'Suárez', 4, true);
INSERT INTO empleados VALUES(5, '20-17087203-3', 'Marcos', 'Loyola', 5, true);
INSERT INTO empleados VALUES(6, '27-38382980-3', 'María', 'Santana', 1, true);
INSERT INTO empleados VALUES(7, '23-80576669-1', 'Pilar', 'Ruiz', 2, true);
INSERT INTO empleados VALUES(8, '24-71651431-3', 'Pepe', 'Ruiz', 3, true);
INSERT INTO empleados VALUES(9, '25-36399183-3', 'Juan', 'Gómez', 2, true);
INSERT INTO empleados VALUES(10, '20-34638446-3', 'Diego','Flores', 5, true);
INSERT INTO empleados VALUES(11, '27-36738983-3', 'Marta','Herrera', 1, true);
INSERT INTO empleados VALUES(12, '27-44123836-1', 'Irene','Salas', NULL,
false);

--------------------------------------------------------------------------------------------------------------

-- A)           SELECT apellido from empleados;
-- B)           SELECT DISTINCT apellido from empleados;
-- C)           SELECT * from empleados;
-- D)           SELECT nombre, apellido from empleados;
-- E)           SELECT empleado_id, cuil_cuit   
-- F)           SELECT nombre as nombre_y_apellidos from empleados union SELECT apellido from empleados;
-- G)       	SELECT UPPER(nombre) as nombres_y_apellidos from empleados UNION SELECT UPPER(apellido) from empleados; 
-- H)           SELECT LOWER(nombre) as nombres_y_apellidos from empleados UNION SELECT LOWER(apellido) from empleados; 
-- I)           SELECT nombre, presupuesto from departamentos order by nombre asc;         
-- J)           SELECT nombre from departamentos order by nombre asc;          
-- K)           SELECT nombre from departamentos order by nombre desc; 
-- L)           SELECT apellido, nombre from empleados order by apellido, nombre asc;          
-- M)           SELECT departamentos.nombre, departamentos.presupuesto from departamentos WHERE presupuesto BETWEEN 150000 AND 375000 order by presupuesto desc ; 
-- N)           SELECT departamentos.nombre, departamentos.presupuesto from departamentos WHERE presupuesto BETWEEN 110000 AND 150000 order by presupuesto desc ; 
-- O)           SELECT departamentos.nombre, departamentos.presupuesto from departamentos WHERE presupuesto BETWEEN 150000 and 1000000000000  order by presupuesto desc ; 
-- P)           SELECT departamentos.nombre, departamentos.presupuesto from departamentos WHERE presupuesto in (110000,  120000, 150000) order by presupuesto desc ;
-- Q)           SELECT departamentos.nombre from departamentos WHERE presupuesto not in (110000,  120000, 150000);
-- R)           SELECT departamentos.nombre from departamentos WHERE presupuesto BETWEEN 100000 and 200000 order by desc;
-- S)           SELECT e.nombre AS empleado_nombre, e.apellido AS empleado_apellido, d.nombre AS departamento_nombre, d.presupuesto, d.estado FROM empleados e JOIN departamentos d ON e.departamento = d.departamento_id;
-- T)           SELECT e.nombre AS empleado_nombre, e.apellido AS empleado_apellido, d.nombre AS departamento_nombre, d.presupuesto, d.estado FROM empleados e JOIN departamentos d ON e.departamento = d.departamento_id ORDER BY d.nombre ASC, e.apellido ASC, e.nombre ASC;
-- U)           SELECT d.departamento_id, d.nombre AS departamento_nombre FROM departamentos d INNER JOIN empleados e ON d.departamento_id = e.departamento GROUP BY d.departamento_id, d.nombre;
-- V)           SELECT departamentos.nombre as nombre_del_deartamento from empleados inner join departamentos on empleados.departamento = departamentos.departamento_id and empleados.cuil_cuit = "27-38382980-3";
-- W)           SELECT departamentos.nombre as nombre_del_deartamento from empleados inner join departamentos on empleados.departamento = departamentos.departamento_id and empleados.nombre = "Pepe" and empleados.apellido = "Ruiz";
-- X)           SELECT empleados.*, departamentos.nombre from empleados inner join departamentos on empleados.departamento = departamentos.departamento_id and departamentos.nombre = "I+D" order by empleados.nombre, apellido asc; 
-- Y)           SELECT empleados.*, departamentos.nombre from empleados inner join departamentos on empleados.departamento = "Sistemas" order by empleados.nombre, apellido asc;         
-- Z)           SELECT e.nombre, e.apellido FROM empleados e JOIN departamentos d ON e.departamento = d.departamento_id WHERE d.presupuesto < 100000 OR d.presupuesto > 200000;
