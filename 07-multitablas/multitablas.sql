/*JOINS*/

/*Consultar informacion de 2 tablas*/
SELECT * FROM actor, film_text;
SELECT COUNT(actor.actor_id) FROM actor, film_actor;

/*Usar inner join para juntar dos tablas con un ON para darle la condicion-*/
SELECT city_id, city, country FROM city INNER JOIN country ON city.country_id = country.country_id;
SELECT * FROM city INNER JOIN country ON city.country_id = country.country_id;
SELECT * FROM city,country WHERE city.country_id = country.country_id;

/*film_id first_name last_name, titulo*/
/*actor*/

SELECT film_actor.film_id, first_name, last_name,title FROM film_actor 
INNER JOIN actor ON film_actor.actor_id = actor.actor_id
INNER JOIN film ON film.film_id = film_actor.film_id WHERE film_actor.actor_id = 1;

SELECT film_id, first_name, last_name,title FROM actor,film WHERE film_id = film_id
IN (SELECT actor_id FROM film_actor WHERE film_id = film_id); 


SELECT film_id, first_name, last_name, title FROM film INNER JOIN actor ON actor_id = actor_id
WHERE film_id IN (SELECT film_id FROM film_actor WHERE actor_id = actor_id);

