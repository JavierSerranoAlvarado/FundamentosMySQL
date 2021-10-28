/* Renombrar tabla */

ALTER TABLE usuarios RENAME TO users;

/* Cambiar nombre de una columna */

ALTER TABLE usuarios CHANGE direccion dir VARCHAR(50);

/* Agregar columnas */

ALTER TABLE usuarios ADD edad INT NOT NULL;

/* Borrar columnas */

ALTER TABLE usuarios DROP edad;