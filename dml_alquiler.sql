-- inserción de línea
INSERT INTO ciudades(ciu_desc) VALUES('ÑEMBY');

-- inserción múltiple
INSERT INTO ciudades(ciu_desc) VALUES('LIMPIO'), ('SAN ANTONIO'), ('VILLA ELISA');

-- inserción manual
INSERT INTO ciudades(ciu_cod, ciu_desc) VALUES(2, 'FERNANDO DE LA MORA');

-- inserciones a empleado
/*
emp_cod SERIAL PRIMARY KEY
	, emp_nombre VARCHAR(60) NOT NULL
	, emp_apellido VARCHAR(60) NOT NULL
	, emp_tel VARCHAR(40)
	, emp_direc TEXT
	, ciu_cod INTEGER NOT NULL
*/
-- crear registros
INSERT INTO empleados(emp_nombre, emp_apellido, emp_tel, emp_direc, ciu_cod)
VALUES('Juan', 'González', '565656', 'algún lugar', 5);

INSERT INTO empleados(emp_nombre, emp_apellido, emp_tel, emp_direc, ciu_cod)
VALUES('Iker', 'García', '52516', 'algún lugar', 1);

/*
	Trae todos los empleados y la descripcion de la ciudad
*/
SELECT
	e.emp_nombre, e.emp_apellido, e.ciu_cod, c.ciu_desc
FROM
	empleados AS e
JOIN
	ciudades AS c ON e.ciu_cod = c.ciu_cod

-- traer todos los registros de empleados
SELECT * FROM empleados;

-- modificar registros
UPDATE empleados SET emp_nombre='Juan José' WHERE emp_cod=1;
UPDATE empleados SET emp_apellido='González Ramírez' WHERE emp_cod=1;

UPDATE empleados SET 
	emp_nombre='Juan José', emp_apellido='González Ramírez', emp_tel='985214', emp_direc='Puerto Montt'
WHERE emp_cod=1;

-- eliminar registros
DELETE FROM empleados WHERE emp_cod=1;