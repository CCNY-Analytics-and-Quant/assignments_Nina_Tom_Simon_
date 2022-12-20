SELECT MIN(latitude) AS min_latitude, MAX(latitude) AS max_latitude, MIN(longitude) AS min_longitude, MAX(longitude) AS max_longitude
FROM restaurant_data
WHERE longitude != 0 AND latitude != 0
AND boro LIKE 'Bronx'