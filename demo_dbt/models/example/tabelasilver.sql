UPDATE (
    SELECT 
        ID,
        HOST_ID,
        NEIGHBOURHOOD,
        PRICE,
        CASE 
            WHEN minimum_nights > 365 THEN avg_minimum_nights
            ELSE minimum_nights
        END AS modified_minimum_nights,
        neighbourhood_count
    FROM (
        SELECT 
            T1.ID,
            T1.HOST_ID,
            T1.NEIGHBOURHOOD,
            T1.PRICE,
            T1.minimum_nights,
            (
                SELECT AVG(T2.minimum_nights)
                FROM TABELABRONZE AS T2
                WHERE T1.NEIGHBOURHOOD = T2.NEIGHBOURHOOD
            ) AS avg_minimum_nights,
            (
                SELECT COUNT(*)
                FROM TABELABRONZE AS T3
                WHERE T1.NEIGHBOURHOOD = T3.NEIGHBOURHOOD
            ) AS neighbourhood_count
        FROM 
            TABELABRONZE AS T1
    ) AS subquery
) AS update_subquery
SET PRICE = modified_minimum_nights;


UPDATE (
    SELECT *,
           (SELECT AVG(price)
            FROM tabelabronze AS t2
            WHERE t1.neighbourhood = t2.neighbourhood) AS mean_neighbourhood_price
    FROM tabelabronze AS t1
    WHERE price IS NULL
) AS subquery
SET price = mean_neighbourhood_price;

