SELECT 
CAST(lpep_dropoff_datetime AS DATE) as "dia-fim",-- casts the data to DATE, showing only date
CAST(lpep_pickup_datetime AS DATE) as "dia inicio",
trip_distance

FROM 
	green_taxi_data t
--WHERE
--CAST(lpep_dropoff_datetime AS DATE)=CAST(lpep_pickup_datetime AS DATE)


ORDER BY trip_distance DESC
limit 5;