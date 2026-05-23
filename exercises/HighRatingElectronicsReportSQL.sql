SELECT 
    name,
    CAST(price AS DECIMAL(10,2)) AS price,
    CAST(rating AS DECIMAL(2,1)) AS rating
FROM products
WHERE category_id = 1
  AND rating >= 4.5
ORDER BY rating DESC;