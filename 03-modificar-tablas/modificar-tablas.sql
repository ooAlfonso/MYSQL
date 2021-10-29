/*renombrar*/
ALTER TABLE usuarios RENAME TO users;

/*cambiar el nombre de una columna */
ALTER TABLE users CHANGE direccion dir VARCHAR(50);

/*agregar columnas*/
ALTER TABLE users ADD edad INT NOT NULL;

/*borrar columna*/
ALTER TABLE users  DROP edad;

