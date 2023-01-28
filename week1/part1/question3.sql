SELECT 
CAST(lpep_dropoff_datetime AS DATE) as "dia-fim",
COUNT(1) as "count"

FROM 
	green_taxi_data t
WHERE
CAST(lpep_dropoff_datetime AS DATE)=CAST(lpep_pickup_datetime AS DATE)
GROUP BY
	CAST(lpep_dropoff_datetime AS DATE)

ORDER BY "count" DESC;