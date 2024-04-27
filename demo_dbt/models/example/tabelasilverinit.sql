
{{ config(materialized='view') }}

SELECT *,
       (SELECT AVG(price)
        FROM tabelabronze AS t2
        WHERE t1.neighbourhood = t2.neighbourhood) AS mean_neighbourhood_price
FROM tabelabronze AS t1
WHERE price IS NULL
