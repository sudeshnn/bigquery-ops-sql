-- Weekly SLA KPI analysis (on-time rate, lead time, p90 delay)
SELECT
  DATE_TRUNC(DATE(purchase_ts), WEEK(MONDAY)) AS week,
  COUNT(*) AS total_orders,
  COUNTIF(order_status = 'delivered') AS delivered_orders,
  SAFE_DIVIDE(
    COUNTIF(is_on_time = 1),
    COUNTIF(order_status = 'delivered')
  ) AS on_time_rate,
  AVG(lead_time_days) AS avg_lead_time_days,
  APPROX_QUANTILES(lead_time_days, 100)[OFFSET(90)] AS p90_lead_time_days
FROM `bigquery-sql-ops.ops_data.cleaned_orders`
WHERE purchase_ts >= TIMESTAMP('2018-01-01')
GROUP BY week
ORDER BY week;

