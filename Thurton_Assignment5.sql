USE sakila;

#Task 1

SELECT first_name, last_name, SUM(amount) AS totalSpent
FROM customer cust JOIN payment paid
ON paid.customer_id = cust.customer_id
WHERE paid.rental_id 
IN (SELECT rental_id FROM rental WHERE rental_date BETWEEN '2005-05-25' AND '2005-05-26')
GROUP BY first_name, last_name;

#Task 2
SELECT *
FROM actor
WHERE actor_id
IN (SELECT actor_id FROM film_actor WHERE film_id IN (SELECT film_id FROM film WHERE rating = "PG"));

#Task 3

SELECT first_name, last_name, SUM(amount) AS totalSpent 
FROM sakila.customer AS c JOIN sakila.payment p ON c.customer_id = p.customer_id
IN (SELECT SUM(amount) FROM payment AS p WHERE p.customer_id = c.customer_id)
GROUP BY first_name, last_name;




#Task 4
#A subquery is a query nested in another query and embedded within the WHERE clause. 
#It is used to return data that will be used in the main query as a condition to further
#restrict the data to be retrieved. Taske 2 is an example

#Task 5
# In a correlated subquery, the nested query depends on the entity of the outer query.Task 3 is an example.

