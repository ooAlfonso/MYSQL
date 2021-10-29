/* subconsultas */
/*filtrar peliculas de una categiria */

SELECT * FROM film WHERE film_id IN (1, 2, 3);

SELECT * FROM film WHERE film_id IN (SELECT film_id FROM film_category WHERE category_id = 12);

/* BETWEEN SIRVE PARA SELECCIONAR DATOS MEDIANTE UN RANGO*/
SELECT * FROM film WHERE film_id BETWEEN 1 AND 10;

/*IN sirve para seleccionar datos especificos */
SELECT * FROM film WHERE film_id IN (10, 2, 3);
SELECT film_id FROM film_category WHERE category_id = 5;


/*filtrar peliculas por actores*/
SELECT * FROM actor WHERE actor_id = 40;
SELECT * FROM film_actor WHERE actor_id = 40; 
SELECT film_id, title, release_year FROM film  WHERE film_id IN(SELECT film_id FROM film_actor WHERE actor_id = 40);


