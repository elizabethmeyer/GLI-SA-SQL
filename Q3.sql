SELECT  a.product_category as 'Product Category',
			SUM(a.cost) as 'Total Sales',
			COUNT(a.product_id) as 'Number of items sold'
FROM    products a
GROUP BY
		a.product_category;

#Provide the SQL query to find 
#the total sales for each product_category, 
#and the number of items sold in that category.