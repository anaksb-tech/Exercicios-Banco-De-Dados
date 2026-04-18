a) SELECT c.first name AS customer first name. c.last name AS customer last name, a.first name AS actor first name, a.last name AS actor last name FROM customer c LEFT JOIN actor a ON c.first name = a.first name AND c.last name = a.last name; 

b) SELECT a.first name AS actor first name, a.last name AS actor last name. c.first name AS customer first name. c.last name AS customer last name FROM actor a RIGHT JOIN customer c ON c.first name = a.first name AND c.last name = a.last_name;

c) SELECT a.first_name AS actor_first_name, a.last_name AS actor_last name, c.first name AS customer_first_name, c.last_name AS customer last name FROM actor a INNER JOIN customer c ON a.last name = c.last_name;

d) SELECT ci.city, co.country FROM city c LEFT JOIN country co ON ci.country_ id = co.country_id;

e) SELECT f.title, f.description f.release year, I.name AS language FROM film f LEFT JOIN language I ON f.language_id = l.language_id;

f) SELECT s.first name, s.last name, a.address, ci.citv. a.district, a.postal code FROM staff s INNER JOIN address a ON s.address id = a.address id INNER JOIN city ci ON a.city_id = ci.city_id
