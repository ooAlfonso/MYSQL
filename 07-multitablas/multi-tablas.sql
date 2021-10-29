/* JOINS */


/* consultar informacion de dos tablas */
SELECT * FROM actor, film_text;
SELECT * FROM actor, film_actor;

SELECT city_id, city, country FROM city, country
INNER JOIN country ON city.country_id = country.country_id;

SELECT city_id, city, country FROM city, country WHERE city.country_id = country.country_id;

SELECT film.film_id, first_name, last_name, title FROM film 
INNER JOIN film_actor ON film.film_id = film_actor.film_id 
INNER JOIN actor ON actor.actor_id = film_actor.actor_id WHERE film.film_id IN(SELECT film_id FROM film_actor WHERE actor_id=1); 

SELECT film.film_id, first_name, last_name, title FROM film 
INNER JOIN film_actor ON film.film_id = film_actor.film_id 
INNER JOIN actor ON film_actor.actor_id = actor.actor_id WHERE actor.actor_id = 160; 

SELECT film_id, first_name, last_name, title FROM film 
INNER JOIN actor ON actor_id = 5 WHERE film_id IN (SELECT film_id FROM film_actor WHERE actor_id = 5);

SELECT film.film_id, actor.first_name, actor.last_name, title FROM film 
INNER JOIN film_actor ON film.film_id = film_actor.film_id 
INNER JOIN actor ON actor.actor_id = film_actor.actor_id ORDER BY actor.first_name ASC; 