--1. List all customers who live in Texas (use JOINs)
SELECT first_name, last_name
FROM customer
JOIN address
ON customer.address_id = address.address_id
WHERE district = 'Texas';
--Output: 5 people- Jennifer Davis, Kim Cruz, Richard Mccrary, Bryan Hardison, Ian Still

--2. Get all payments above $6.99 with the Customer's Full Name
SELECT first_name, last_name, amount
FROM customer
JOIN payment
ON customer.customer_id = payment.customer_id
WHERE amount > 6.99;
--Ouput: 1406 rows of full names and their amount paid.  Starting with Peter Menard.

--3. Show all customers names who have made at least 4 payments(use subqueries)
SELECT first_name, last_name
FROM customer
JOIN payment
ON customer.customer_id = payment.customer_id
WHERE payment.customer_id IN(
	SELECT COUNT(customer_id)
	FROM payment
	WHERE customer_id >= 4
);
--Output: 0 rows affected.

--4. List all customers that live in Nepal (use the city table)
SELECT first_name, last_name
FROM customer
JOIN address
ON customer.address_id = address.address_id
JOIN city
ON address.city_id = city.city_id
JOIN country
ON city.country_id = country.country_id
WHERE country = 'Nepal';
--Output: 1. Kevin Schuler.

--5. Which staff member (first/last name) had the most transactions?
SELECT first_name, last_name
FROM staff
JOIN rental
ON staff.staff_id = rental.staff_id
GROUP BY staff.staff_id
ORDER BY staff.staff_id DESC;
--Output: 1. Jon Stephens 2. Mike Hillyer

--6. Which movie title(s) has been rented the most?
--Can't find anything that says the amount of times something has been rented?

--7.Show all customers who have made a single payment above $6.99 (Use Subqueries)
SELECT first_name, last_name
FROM customer
WHERE customer_id IN(
	SELECT customer_id
	FROM payment
	WHERE amount > 6.99
	GROUP BY customer_id
);
--Output: 539 rows affected, starting with Jared Ely

--8. Which employee gave out the most free rentals?
--Having same problem as number 6?
