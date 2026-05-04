--- conversion rates through the funnel

WITH funnel_stages AS (
  SELECT
    COUNT(DISTINCT CASE WHEN event_type = 'page_view' THEN user_id END) AS stage_1_views,
    COUNT(DISTINCT CASE WHEN event_type = 'add_to_cart' THEN user_id END) AS stage_2_carts,
    COUNT(DISTINCT CASE WHEN event_type = 'checkout_start' THEN user_id END) AS stage_3_checkout,
    COUNT(DISTINCT CASE WHEN event_type = 'payment_info' THEN user_id END) AS stage_4_payment,
    COUNT(DISTINCT CASE WHEN event_type = 'purchase' THEN user_id END) AS stage_5_purchase

  FROM `applied-dialect-493808-h0.Sql_practice.user_event`

  WHERE event_date >= TIMESTAMP('2025-12-30')
)

SELECT 

    stage_1_views,
    stage_2_carts,
    ROUND(stage_2_carts * 100 / stage_1_views) AS view_of_cart_rate,

    stage_3_checkout,
    ROUND(stage_3_checkout * 100 / stage_2_carts) AS cart_of_checkout_rate,

    stage_4_payment,
    ROUND(stage_4_payment * 100 / stage_3_checkout) AS checkout_of_payment_rate,

    stage_5_purchase,
    ROUND(stage_5_purchase * 100 / stage_4_payment) AS payment_of_purchase_rate,

    ROUND(stage_5_purchase * 100 / stage_1_views) AS overall_conversion_rate
  
FROM funnel_stages
