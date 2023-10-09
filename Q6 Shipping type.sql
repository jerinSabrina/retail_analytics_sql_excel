-- Which is the popular shipping type
SELECT 
`Shipping Type`,
Count(`Customer ID`) as purchase_count
FROM shopping_trends_updated
GROUP BY 1
ORDER BY 2 DESC;
