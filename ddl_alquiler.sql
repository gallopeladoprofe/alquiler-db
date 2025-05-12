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

CREATE TABLE generos(
	gen_cod SERIAL PRIMARY KEY
	, gen_desc VARCHAR(60) UNIQUE NOT NULL
);

CREATE TABLE peliculas(
	pel_cod SERIAL PRIMARY KEY
	, pel_nombre VARCHAR(60) NOT NULL
	, pel_duracion TIME NOT NULL
	, pel_precio INTEGER
	, pel_existencia INTEGER
	, gen_cod INTEGER NOT NULL
	, FOREIGN KEY(gen_cod) REFERENCES generos(gen_cod) ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE TABLE actores(
	act_cod SERIAL PRIMARY KEY
	, act_nombres VARCHAR(60) NOT NULL
	, act_apellidos VARCHAR(60) NOT NULL
);

-- relacion peliculas con el actor
CREATE TABLE actor_peliculas(
	act_cod INTEGER NOT NULL
	, pel_cod INTEGER NOT NULL
	, PRIMARY KEY(act_cod, pel_cod)
	, FOREIGN KEY(act_cod) REFERENCES actores(act_cod) ON UPDATE CASCADE ON DELETE RESTRICT
	, FOREIGN KEY(pel_cod) REFERENCES peliculas(pel_cod) ON UPDATE CASCADE ON DELETE RESTRICT
);