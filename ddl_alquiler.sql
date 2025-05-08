CREATE TABLE ciudades(
	ciu_cod SERIAL PRIMARY KEY
	, ciu_desc VARCHAR(60) UNIQUE NOT NULL
);
--DROP TABLE ciudades;

CREATE TABLE empleados(
	emp_cod SERIAL PRIMARY KEY
	, emp_nombre VARCHAR(60) NOT NULL
	, emp_apellido VARCHAR(60) NOT NULL
	, emp_tel VARCHAR(40)
	, emp_direc TEXT
	, ciu_cod INTEGER NOT NULL
	, FOREIGN KEY(ciu_cod) REFERENCES ciudades(ciu_cod) ON UPDATE CASCADE ON DELETE RESTRICT
);