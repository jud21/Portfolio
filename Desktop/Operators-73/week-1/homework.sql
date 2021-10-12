-- 1. How many actors are there with the last name ‘Wahlberg’?
SELECT COUNT(last_name)
FROM actor
WHERE last_name = 'Wahlberg';
--Output: 2


--2. How many payments were made between $3.99 and $5.99?
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;
--Output: 5607


--3. What film does the store have the most of? (search in inventory)
SELECT DISTINCT title, COUNT(title)
FROM film
GROUP BY title
ORDER BY count DESC;
--Output: Ordered by title desc. because all titles only have one copy


--4. How many customers have the last name 'William'? (maybe williams?)
SELECT last_name
FROM customer
GROUP BY last_name
HAVING last_name = 'Williams';
--Output: 1


--5. What employee (get the id) sold the most rentals?
 SELECT staff_id, COUNT(staff_id)
 FROM rental
 GROUP BY staff_id
 ORDER BY count DESC;
--Ouput: Employee 1 (8040 rentals), Employee 2 (8004 rentals)


--6. How many different district names are there?
--  SELECT SUM COUNT(district)
--  FROM address
--  GROUP BY district;
--Output: syntax error near "("


--7. What film has the most actors in it? (use film_actor table and get film_id)
--  SELECT actor_id, film_id
--  FROM film_actor
--  GROUP BY film_id
--  WHERE MAX(actor_id);

--Output: 


--8. From store_id 1, how many customers have a last name ending in "es"? (use customer table)
 SELECT store_id, last_name
 FROM customer
 WHERE last_name LIKE "%es";
--Output: "column %es doesn't exist, haven't gotten to store_id 1 part because can't get this to work."


--9. How many payment amounts (4.99 ,5.99, ect.) had a number of rentals above 250 for customers with ids between 380 and 430
	--(use group by and having > 250)
-- SELECT customer_id, amount
-- FROM payment;

--Output: 


--10. Within the film table, how many rating categories are there? And what rating has the most movies total?


--Output: 