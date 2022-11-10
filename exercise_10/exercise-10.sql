-- find the category name of all inventory items that have never been rented
-- Similar to exercise 9 with an additonal join
SELECT
	category.name
FROM
	inventory
    LEFT JOIN rental on rental.inventory_id = inventory.inventory_id
    LEFT JOIN film on film.film_id = inventory.film_id
    LEFT JOIN film_category on film_category.film_id = film.film_id
    LEFT JOIN category on category.category_id = film_category.category_id
WHERE
	rental.rental_id IS NULL
