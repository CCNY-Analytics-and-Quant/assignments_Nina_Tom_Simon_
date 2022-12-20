SELECT count(DISTINCT(restaurant_data.camis)), boro
FROM violation_data, restaurant_data 
WHERE violation_data.camis = restaurant_data.camis 
AND inspection_type LIKE '%Initial%' 
AND inspection_date < '2018-01-01'
AND boro != '0'
GROUP BY restaurant_data.boro