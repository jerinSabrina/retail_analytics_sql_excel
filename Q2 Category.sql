-- What is the most and least popular category

SELECT 
Category , Count('Customer ID') as client_count 
From shopping_trends_updated
group by  1
order by 2 desc;