SELECT product_id, year AS first_year, quantity, price
FROM(SELECT product_id, year, quantity, price, RANK() OVER (PARTITION BY product_id ORDER BY year) AS year_order
FROM Sales)
WHERE year_order=1;