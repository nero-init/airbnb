SELECT 
    init.id AS init_id,
    init.name AS init_name,
    init.host_id AS init_host_id,
    init.host_name AS init_host_name,
    init.neighbourhood AS init_neighbourhood,
    init.latitude AS init_latitude,
    init.longitude AS init_longitude,
    init.room_type AS init_room_type,
    init.mean_neighbourhood_price AS mean_neighbourhood_price,
    mid.modified_minimum_nights AS modified_minimum_nights,
    init.number_of_reviews AS number_of_reviews,
    init.last_review AS last_review,
    init.reviews_per_month AS reviews_per_month,
    init.calculated_host_listings_count AS calculated_host_listings_count,
    init.availability_365 AS availability_365,
    init.number_of_reviews_ltm AS number_of_reviews_ltm
FROM tabelasilvermid AS mid
JOIN tabelasilverinit AS init ON init.id = mid.id