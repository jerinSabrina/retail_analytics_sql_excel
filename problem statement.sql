-- The ratio of male to female customers is about 68.32.using the data the store has on female customers.
-- what strategy do you recommend the store puts in place to attract more female customers.

with total as (
SELECT Gender,count('Customer ID') as gender_count 
from shopping_trends_updated
group by 1
order by 2 desc
)
Select 
	sum(case when Gender = 'Male' then gender_count else 0 end) count_male,
    sum(case when Gender = 'Female' then gender_count else 0 end) count_female,
    
    round(sum(case when Gender = 'Male' then gender_count else 0 end) /
	(sum(case when Gender = 'Male' then gender_count else 0 end)+
    sum(case when Gender = 'Female' then gender_count else 0 end))*100,2) ratio_maletofemale,
    
    round(sum(case when Gender= 'Female' then gender_count else 0 end)/
    (sum(case when Gender = 'Female' then gender_count else 0 end)+
    sum(case when Gender = 'Male' then gender_count else 0 end))*100,2) ratio_female2male
from total;
