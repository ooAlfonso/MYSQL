/*count*/
SELECT * FROM film WHERE rental_duration = 3;

SELECT count(film_id) FROM film WHERE rental_duration = 3;

/*dar orden a la seleccion de peliculas mediante una seleccion*/
SELECT rental_duration, count(film_id) AS "Total" FROM film WHERE rental_duration = 3;

SELECT rental_duration, count(rental_duration) AS "Total" FROM film WHERE rental_duration = 3;

/* Group */
SELECT rental_duration, COUNT(film_id) AS "Total" FROM film GROUP BY rental_duration;

/* consulta y prden de forma desendiente DESC*/
SELECT rental_duration, COUNT(film_id) AS "Total" FROM film GROUP BY rental_duration ORDER BY rental_duration DESC;

/* consulta y prden de forma desendiente ASc*/
SELECT rental_duration, COUNT(film_id) AS "Total" FROM film GROUP BY rental_duration ORDER BY rental_duration ASC;

/* promedio de elementos AVG */
SELECT AVG(replacement_cost) AS "costo promedio" FROM film;

/* sumar datos en este caso el total del costo*/
SELECT SUM(replacement_cost) AS "costo total de inventario" FROM film;

/* maximo */
SELECT MAX(replacement_cost) AS "max_replacement" FROM film;

/*SELECT *, MIN(replacement_cost) FROM film;*/

SELECT * FROM film ORDER BY replacement_cost DESC LIMIT 1;