--- funnel by source

WITH source_funnel AS (
  SELECT
  traffic_source,
    COUNT(DISTINCT CASE WHEN event_type = 'page_view' THEN user_id END) AS views,
    COUNT(DISTINCT CASE WHEN event_type = 'add_to_cart' THEN user_id END) AS carts,
    COUNT(DISTINCT CASE WHEN event_type = 'purchase' THEN user_id END) AS purchase

  FROM `applied-dialect-493808-h0.Sql_practice.user_event`

  WHERE event_date >= TIMESTAMP('2025-12-30')
  GROUP BY traffic_source

)

SELECT 
  traffic_source,
  views,
  carts,
  purchase,
  ROUND(carts * 100 / purchase) AS cart_conversion_rate,
  ROUND(purchase * 100 / views) AS purchase_conversion_rate,
  ROUND(purchase * 100 / carts) AS cart_to_purchase_conversion_rate,

FROM source_funnel
ORDER BY purchase DESC
