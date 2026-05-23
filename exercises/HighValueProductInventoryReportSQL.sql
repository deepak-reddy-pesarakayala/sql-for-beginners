SELECT 
    name,
    CAST(price AS DECIMAL(10,2)) AS price,
    stock
FROM products
WHERE category_id = 4
  AND price > 50.00
  AND stock > 0
ORDER BY price DESC;