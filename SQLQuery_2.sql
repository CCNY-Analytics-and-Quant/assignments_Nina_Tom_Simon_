SELECT count(camis) AS num_of_restaurants, boro FROM restaurant_data
GROUP BY boro
ORDER BY count(camis) DESC