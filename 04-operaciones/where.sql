/* Seleccionar por id */

SELECT * FROM tabla WHERE id=5;

/*
OPERADORES DE COMPARACION:
Igual           =
Distinto        !=
Menor           <
Mayor           >
Menor o igual   <=
Mayor o igual   >=
Entre           between A and B
En              in
Es nulo         is null
No nulo         is not null
Como            like
No es como      not like
*/

/*
OPERADORES LOGICOS:
O       OR
Y       AND
NO      NOT
*/
/*
COMODINES:
Cualquier cantidad de caracteres: %
Un caracter desconocido: _
*/



/* Selecciona por id mayor a un numero */
SELECT * FROM actor WHERE actor_id > 135;

/* Seleccionar campos */
SELECT actor_id, first_name, last_name FROM actor WHERE actor_id > 63;
SELECT last_name, first_name, actor_id FROM actor WHERE actor_id > 63;

/*Seleccionar elementos con id pares*/
SELECT * FROM actor WHERE actor_id % 2 = 0;
SELECT * FROM actor WHERE first_name = "chris";

/*Operador AND*/
SELECT * FROM actor WHERE first_name = 'CHRIS' AND actor_id > 50;

/*Comodines */
SELECT * FROM actor WHERE first_name LIKE '%a'; /*Todos que terminen con "a" */
SELECT * FROM actor WHERE first_name LIKE 'a%'; /*Todos que comiencen con "a" */
SELECT * FROM actor WHERE first_name LIKE '%u%'; /*Todos que tengan una "u" en su nombre */
SELECT * FROM actor WHERE first_name LIKE '%u%' OR last_name like "e%"; /*Se puede seguir concatenando*/
