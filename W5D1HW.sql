--1. How many actors are there with the last name ‘Wahlberg’?
--Answer: 2 actors with last name 'Wahlberg'

SELECT count(last_name)
FROM actor
WHERE last_name = 'Wahlberg';

--2. How many payments were made between $3.99 and $5.99?
--Answer: 5607 payments

SELECT count(amount)
FROM payment
WHERE amount between 3.99 and 5.99

--3. What films have exactly 7 copies? (search in inventory)
--Answer: Please see query

SELECT film_id, count(film_id)
FROM inventory
GROUP BY film_id 
HAVING count(film_id) = 7

--4. How many customers have the first name ‘Willie’?
--Answer: 2 customers with first name 'Willie'

SELECT *
FROM customer
WHERE first_name = 'Willie'

--5. What store employee (get the id) sold the most rentals (use the rental table)?
--Answer: Staff ID #1 sold 8040 rentals

SELECT staff_id , COUNT(staff_id)
FROM rental
GROUP BY staff_id 
ORDER BY staff_id 

--6. How many unique district names are there?
--Answer: 378 unique districts

SELECT DISTINCT district
FROM address

--7. What film has the most actors in it? (use film_actor table and get film_id)
--Answer: Film ID #508 has 15 actors

SELECT film_id, COUNT(actor_id) 
FROM film_actor
GROUP BY film_id
ORDER BY count desc

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
--Answer: 13 customers with last name 'es'

SELECT *
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es'

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)
--Answer: 3 payment amounts (2.99, 4.99, 0.99)

SELECT amount, count(amount)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING count(amount) > 250

--10. Within the film table, how many rating categories are there? And what rating has the most
--movies total?
--Answer: 5 rating categories; PG-13 has the most movies with 223 total

SELECT DISTINCT rating, count (rating)
FROM film
GROUP BY rating
ORDER BY count DESC

