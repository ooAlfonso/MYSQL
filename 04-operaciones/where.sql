/*seleccionar por id*/
SELECT * FROM tabla WHERE id = 5;


/* 
 DE COMPARACION: 
Igual =
Distinto != 
Menor < 
Mayor > 
Menor o igual <= 
Mayor o igual >= 
Entre between A and B 
En in 
Es nulo is null 
No nulo is not null 
Como like 
No es como not like 
*/ 

/*seleccionar campos*/
SELECT * FROM actor WHERE actor_id > 62;

/*seleccionar campos*/
SELECT actor_id, first_name, last_name FROM actor WHERE actor_id > 63;

/* seleccionar elementos con id pares */
SELECT * FROM actor WHERE actor_id % 2 = 0;

/*
OPERADORES LOGICOS:
O   OR
Y   AND
NO  NOT
*/

/*operadores AND*/
SELECT * FROM actor WHERE first_name = "CHRIS" AND actor_id > 50;

/* 
COMODINES: 
Cualquier cantidad de caracteres: % 
Un caracter desconocido: _ 
*/ 
/*comodines*/
SELECT * FROM actor WHERE first_name LIKE "%a";

/*comodines contenga u en el nombre y una e el principo del apellido*/
SELECT * FROM actor WHERE first_name LIKE "%u%" or last_name LIKE "e%";