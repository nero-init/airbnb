-- models/airbnb_listings.sql

{{ config(materialized='view') }}

SELECT
  id,
  name,
  host_id,
  host_name,
  neighbourhood,
  latitude,
  longitude,
  room_type,
  price,
  minimum_nights,
  number_of_reviews,
  last_review,
  reviews_per_month,
  calculated_host_listings_count,
  availability_365,
  number_of_reviews_ltm
FROM
  airbnb_listings.public.airbnb_listings

