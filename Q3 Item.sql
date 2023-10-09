-- What is the most and least popular Item

SELECT 
`Item Purchased` , Count('Customer ID') as item_count 
From shopping_trends_updated
group by  1
order by 2 desc;