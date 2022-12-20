SELECT 
    restaurant_data.cuisine_description, 
    count(restaurant_data.cuisine_description) AS num_of_violations, 
    count(DISTINCT(restaurant_data.camis)) as number_of_restaurants, 
    count(restaurant_data.cuisine_description ) / count(DISTINCT(restaurant_data.camis)) AS avg_num_of_vio_per_rest,
    MIN(violation_data.inspection_date) AS first_inspection
FROM restaurant_data, violation_data
WHERE restaurant_data.camis = violation_data.camis
AND violation_data.inspection_date < '2018-01-01'
GROUP BY restaurant_data.cuisine_description
ORDER BY avg_num_of_vio_per_rest ASC, number_of_restaurants DESC