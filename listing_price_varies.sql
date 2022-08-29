--Find out how listing_price varies between Adidas and Nike products

SELECT b.brand,
	f.listing_price::integer,
	count(f.product_id) as count
FROM brands as b
INNER JOIN finance as f
	ON f.product_id = b.product_id
WHERE listing_price > 0
GROUP BY brand, listing_price
ORDER BY listing_price desc;           
	
	
	
	
	