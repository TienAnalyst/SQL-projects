-- Calculate description_length
-- Convert rating to a numeric data type and calculate average_rating
-- Join info to reviews on product_id and group the results by description_length
-- Filter for products without missing values for description, and sort results by description_length
select trunc(length(i.description),-2) as description_length,
	round(avg(r.rating::numeric),2) as average_rating
from info as i
inner join reviews as r
	on r.product_id = i.product_id
where i.description is not null
group by description_length
order by description_length;           
	
	
	
	
		