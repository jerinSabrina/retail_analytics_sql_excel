-- What is the most popular age group served?
-- find the most common Purchased item  used by that highest age group. 
#with age_date as(
select
case
	when Age between 18 and 31 then '18-31'
	when Age between 32 and 45 then '32-45'
	when Age between 46 and 59 then '46-59'
	when Age between 60 and 70 then '60-70'
    end as age_groups, 
    `Item Purchased`,
    count(`Customer ID`) as client_count
 from shopping_trends_updated
 group by 1,2
 having age_groups = '46-59'
 order by 3 desc;
 