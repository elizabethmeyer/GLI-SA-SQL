SELECT  a.purchase_date,
        COUNT(a.product_id) as 'Total Purchases',
        SUM(b.cost) as 'Total Spent',
        MAX(a.product_id) as 'Maximum Count',
        MIN(a.product_id) as 'Minimum Count'
FROM    customer_products a
			LEFT JOIN products b
            ON a.product_id = b.product_id
GROUP   BY a.purchase_date;


#Provide the SQL query to find:
# the total number of purchases made per day
# the total amount spent per day, 
# and the maximum count and minimum count of purchases per day per product.