
-- Copy the footwear CTE from the previous task
-- Calculate the number of products in info and median revenue from finance
-- Inner join info with finance on product_id
-- Filter the selection for products with a description not in footwear
with footwear as 
( 
	select i.description, f.revenue
	from info as i
	inner join finance as f
		on i.product_id = f.product_id
	where i.description ilike '%shoe%'
	or i.description ilike '%trainer%'
	or i.description ilike '%foot%'
	and i.description is not null
)
select count(*) as num_clothing_products,
	percentile_disc(0.5) within group(order by f.revenue) as median_clothing_revenue
from info as i
inner join finance as f
	on i.product_id = f.product_id
where i.description not in (select description from footwear);