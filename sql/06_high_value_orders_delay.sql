-- Compares delivery delay between high-value and non-high-value orders
WITH enriched AS (
  SELECT
    g.order_id,
    g.customer_state,
    g.delivery_delay_days,
    g.is_on_time,
    v.order_value
  FROM `bigquery-sql-ops.ops_data.cleaned_orders_geo` g
  LEFT JOIN `bigquery-sql-ops.ops_data.order_value_per_order` v
  USING (order_id)
)
SELECT
  customer_state,
  COUNT(*) AS delivered_orders,
  AVG(order_value) AS avg_order_value,
  AVG(delivery_delay_days) AS avg_delay_days,
  SAFE_DIVIDE(COUNTIF(is_on_time = 1), COUNT(*)) AS on_time_rate,
  APPROX_QUANTILES(delivery_delay_days, 100)[OFFSET(90)] AS p90_delay_days,
  AVG(CASE WHEN order_value >= 500 THEN delivery_delay_days END) AS avg_delay_high_value,
  AVG(CASE WHEN order_value < 500 THEN delivery_delay_days END) AS avg_delay_non_high_value
FROM enriched
GROUP BY customer_state
ORDER BY delivered_orders DESC;
