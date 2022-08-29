--Count missing values
SELECT count(*) as total_rows,
	count(i.description) as count_description,
	count(f.listing_price) as count_listing_price,
	count(t.last_visited) as count_last_visited
FROM info as i
INNER JOIN finance as f
	on f.product_id = i.product_id
INNER JOIN traffic as t
	on t.product_id = i.product_id;           
	
	
	
	
	