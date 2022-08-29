-- Create the footwear CTE, containing description and revenue
-- Filter footwear for products with a description containing %shoe%, %trainer, or %foot%
-- Also filter for products that are not missing values for description
-- Calculate the number of products and median revenue for footwear products
with footwear as 
(
select i.description, f.revenue
from info as i
inner join finance as f
	on f.product_id = i.product_id
where i.description ilike '%shoe%'
	or i.description ilike '%trainer%'
	or i.description ilike '%foot%'
	and i.description is not null
)
select count(*) as num_of_products,
	percentile_disc(0.5) within group (order by revenue) as median_footwear_revenue
from footwear;