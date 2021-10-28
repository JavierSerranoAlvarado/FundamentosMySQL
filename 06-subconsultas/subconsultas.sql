/*Subconsultas*/

/*BETWEEN*/
/*Seleccionar entre un rango de elementos*/
SELECT * FROM film WHERE film_id BETWEEN 5 AND 10;

/*Filtrar peliculas que sean de una categoria*/

SELECT * FROM film WHERE film_id IN(1,2,3);

SELECT * FROM film WHERE film_id IN(SELECT film_id FROM film_category WHERE category_id = 5);

/*IN nos permite meter una seria de valores*/
SELECT * FROM film WHERE film_id = 1 OR film_id = 2 OR film_id = 3;
SELECT * FROM film WHERE film_id IN (1,2,3);

SELECT * FROM film WHERE film_id IN (SELECT film_id FROM film_category WHERE category_id = 1);

/*Filtras peliculas por actores*/

SELECT * FROM film WHERE film_id IN (SELECT film_id from film_actor WHERE actor_id = 200);
SELECT * from film_actor WHERE actor_id = 200;
SELECT * FROM actor WHERE actor_id = 200;
