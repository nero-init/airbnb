{% macro bigquery_partitioned_table() %}
DISTSTYLE EVEN
DISTKEY (id)
SORTKEY (created_at)
PARTITION BY RANGE(created_at)
  INTERVAL 1 DAY
  (
    START (DATE '2020-01-01')
    END (DATE '2030-01-01')
    EVERY (INTERVAL 1 DAY)
  )
{% endmacro %}