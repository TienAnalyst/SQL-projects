-- Select brand and average_discount as a percentage
-- Join brands to finance on product_id
-- Aggregate by brand
-- Filter for products without missing values for brand
SELECT b.brand,
	avg(f.discount)*100 as average_discount
from brands as b
inner join finance as f
	on f.product_id = b.product_id
group by brand
having brand is not null;           
	
	
	
	
		