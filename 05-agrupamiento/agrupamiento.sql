SELECT * FROM sakila.film;
SELECT * FROM sakila.film WHERE rental_duration = 3;

 /*count*/
 SELECT COUNT(film_id) FROM sakila.film WHERE rental_duration = 3;
SELECT rental_duration, COUNT(film_id) AS "Total" FROM sakila.film WHERE rental_duration = 3; /*Cambiar nombre columna con AS*/

/*GROUP permite agrupar elementos*/
SELECT rental_duration, COUNT(film_id) AS "Total" FROM sakila.film GROUP BY  rental_duration;

/*Ordenar de mayor a menor*/
SELECT rental_duration, COUNT(film_id) AS "Total" FROM sakila.film GROUP BY  rental_duration ORDER BY rental_duration DESC;

/*Ordenar de menor a mayor*/
SELECT rental_duration, COUNT(film_id) AS "Total" FROM sakila.film GROUP BY  rental_duration ORDER BY rental_duration ASC;
 
 /*Promedio*/
SELECT AVG(replacement_cost) AS "Costo Promedio" FROM film;

 /*Sumar*/
SELECT SUM(replacement_cost) AS "Costo Promedio" FROM film;

/*Maximo*/
SELECT MAX(replacement_cost) AS "Maximo" FROM film; /*Una forma*/
SELECT * FROM film ORDER BY replacement_cost DESC LIMIT 1; /*Otra forma*/

SELECT *  FROM film WHERE replacement_cost LIKE MAX(replacement_cost); 