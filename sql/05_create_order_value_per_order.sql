-- Aggregates order value and item count from order items
CREATE OR REPLACE VIEW `bigquery-sql-ops.ops_data.order_value_per_order` AS
SELECT
  order_id,
  SUM(price + freight_value) AS order_value,
  SUM(freight_value) AS freight_value,
  COUNT(*) AS item_count
FROM `bigquery-sql-ops.raw_data.order_items_raw`
GROUP BY order_id;

