SELECT
zpu."Zone" AS "pick_up_loc", 
zdo."Zone" AS "dropoff_loc",
t.total_amount,
t.tip_amount
FROM 
	green_taxi_data t 
	JOIN zones zpu ON t."PULocationID" = zpu."LocationID"
	JOIN zones zdo ON t."DOLocationID" = zdo."LocationID"

where zpu."Zone"='Astoria'
ORDER BY tip_amount DESC
LIMIT 100;