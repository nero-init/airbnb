-- tests/airbnb_listings.sql


-- Testa se o modelo customers retorna pelo menos 1000 linhas
SELECT
  COUNT(*)
FROM
  {{ ref('airbnb_listings') }}
WHERE
  host_name IS NOT NULL
HAVING
  COUNT(*) >= 1000