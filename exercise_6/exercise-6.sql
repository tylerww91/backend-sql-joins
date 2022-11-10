-- find all film titles rented out by customers with the first_name Roberta
-- Similar to exercise 5
SELECT
	film.title
FROM
	film
    LEFT JOIN inventory on inventory.film_id = film.film_id
    LEFT JOIN rental on rental.inventory_id = inventory.inventory_id
    LEFT JOIN customer on customer.customer_id = rental.customer_id
WHERE
	customer.first_name = 'Roberta'