-- Which season has the most purchases;

SELECT
Season,Count('Customer ID') as season
FROM shopping_trends_updated
group by 1
order by 2 desc;

