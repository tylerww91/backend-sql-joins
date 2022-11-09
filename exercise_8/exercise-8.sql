-- find all film titles rented out by customers who live in the country of Peru
-- Similar to exercise 7 with an additional join to get country name
SELECT
	film.title
FROM
	film
    LEFT JOIN inventory on inventory.film_id = film.film_id
    LEFT JOIN rental on rental.inventory_id = inventory.inventory_id
    LEFT JOIN customer on customer.customer_id = rental.customer_id
    LEFT JOIN address on address.address_id = customer.address_id
    LEFT JOIN city on city.city_id = address.city_id
    LEFT JOIN country on country.country_id = city.country_id
WHERE
	country.country = 'Peru'