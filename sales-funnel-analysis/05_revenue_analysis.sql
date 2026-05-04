--- revenue funnel analysis

WITH funnel_revenue AS (
  SELECT
    COUNT(DISTINCT CASE WHEN event_type = 'page_view' THEN user_id END) AS total_visitors,
    COUNT(DISTINCT CASE WHEN event_type = 'purchase' THEN user_id END) AS total_buyers,
    ROUND(SUM(CASE WHEN event_type = 'purchase' THEN amount END)) AS total_revenue,
    COUNT(CASE WHEN event_type = 'purchase' THEN 1 END) AS total_orders,

  FROM `applied-dialect-493808-h0.Sql_practice.user_event`

  WHERE event_date >= TIMESTAMP('2025-12-30')
)


SELECT
  total_visitors,
  total_buyers,
  total_orders,
  total_revenue,
  ROUND (total_revenue / total_orders) AS avg_order_value,
  ROUND(total_revenue / total_buyers) AS revenue_per_buyer,
  ROUND(total_revenue / total_visitors) AS revenue_per_visitor

FROM funnel_revenue
