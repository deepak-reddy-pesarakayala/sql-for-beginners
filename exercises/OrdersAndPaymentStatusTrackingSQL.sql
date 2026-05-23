SELECT 
    orders.id AS order_id,
    customers.email,
    ROUND(orders.total_amount, 2) AS total_amount,
    payments.payment_method
FROM orders
JOIN customers
ON orders.customer_id = customers.id
JOIN payments
ON orders.id = payments.order_id
WHERE MONTH(orders.ordered_at) = 10
AND YEAR(orders.ordered_at) = 2023
ORDER BY orders.id ASC;