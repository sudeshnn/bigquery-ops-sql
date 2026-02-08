-- Creates cleaned orders view with SLA and delivery delay metrics
CREATE OR REPLACE VIEW `bigquery-sql-ops.ops_data.cleaned_orders` AS
SELECT
  order_id,
  order_status,
  purchase_ts,
  delivered_ts,
  estimated_delivery_ts,
  DATE_DIFF(DATE(delivered_ts), DATE(estimated_delivery_ts), DAY) AS delivery_delay_days,
  DATE_DIFF(DATE(delivered_ts), DATE(purchase_ts), DAY) AS lead_time_days,
  CASE
    WHEN delivered_ts <= estimated_delivery_ts THEN 1
    ELSE 0
  END AS is_on_time
FROM `bigquery-sql-ops.raw_data.orders_raw`
WHERE delivered_ts IS NOT NULL;

