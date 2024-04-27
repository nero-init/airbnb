
{{ config(materialized='view') }}

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
