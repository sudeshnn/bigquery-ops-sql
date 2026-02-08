-- City and state level SLA performance benchmarking
SELECT
  customer_state,
  customer_city,
  COUNT(*) AS total_orders,
  COUNTIF(order_status = 'delivered') AS delivered_orders,
  SAFE_DIVIDE(
    COUNTIF(is_on_time = 1),
    COUNTIF(order_status = 'delivered')
  ) AS on_time_rate,
  AVG(delivery_delay_days) AS avg_delay_days,
  APPROX_QUANTILES(delivery_delay_days, 100)[OFFSET(90)] AS p90_delay_days
FROM `bigquery-sql-ops.ops_data.cleaned_orders_geo`
GROUP BY customer_state, customer_city
HAVING delivered_orders >= 100
ORDER BY on_time_rate ASC;

