-- Select the brand, a count of all products in the finance table, and total revenue
-- Create four labels for products based on their price range, aliasing as price_category
-- Join brands to finance on product_id and filter out products missing a value for brand
-- Group results by brand and price_category, sort by total_revenue

SELECT b.brand,
	count(f.product_id) as count,
	sum(f.revenue) as total_revenue,
	case when listing_price < 42 then 'Budget'
	when listing_price >= 42 and listing_price < 74 then 'Average'
	when listing_price >= 74 and listing_price < 129 then 'Expensive'
	else 'Elite' end as price_category
FROM brands as b
INNER JOIN finance as f
	ON f.product_id = b.product_id
WHERE brand is not null
GROUP BY brand, price_category
ORDER BY total_revenue desc;           
	
	
	
	
	