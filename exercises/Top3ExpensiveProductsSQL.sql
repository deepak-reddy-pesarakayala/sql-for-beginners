SELECT
name,
Round(price, 2) As price
From 
Products
Order By
price Desc
Limit 3;