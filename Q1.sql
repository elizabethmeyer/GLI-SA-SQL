SELECT  a.Name as 'Customer',
        COUNT(b.customer_id) as 'Total Purchases',
        SUM(c.cost) as 'Total Spent',
        ROUND(AVG(c.cost), 2) as 'Average Spent'
FROM    Customers a
        LEFT JOIN customer_products b
            ON a.customer_id = b.customer_id
        LEFT JOIN products c
        		ON b.product_id = c.product_id
GROUP   BY a.customer_id;


#Provide the SQL query to find 
#the total number of purchases, 
#the total amount spent, 
#and the average amount spent 
#by each customer, 
#regardless of whether purchases were made.