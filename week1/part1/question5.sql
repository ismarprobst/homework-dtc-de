SELECT 
-- casts the data to DATE, showing only date
CAST(lpep_pickup_datetime AS DATE) as "dia inicio",
passenger_count,
COUNT(1)

FROM 
	green_taxi_data t
WHERE
CAST(lpep_pickup_datetime AS DATE)='2019-01-01' AND passenger_count=2
--also passenger_count=3
GROUP BY 
CAST(lpep_pickup_datetime AS DATE), passenger_count

limit 5;