-- Calculate the correlation between reviews and revenue as review_revenue_corr
-- Join the reviews and finance tables on product_id
select corr(r.reviews,f.revenue)
from reviews as r
inner join finance as f
	on f.product_id = r.product_id;           
	
	
	
	
		