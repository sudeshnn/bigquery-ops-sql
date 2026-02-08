-- Enriches cleaned orders with customer city and state information
CREATE OR REPLACE VIEW `bigquery-sql-ops.ops_data.cleaned_orders_geo` AS
SELECT
  o.*,
  c.customer_city,
  c.customer_state
FROM `bigquery-sql-ops.ops_data.cleaned_orders` o
LEFT JOIN `bigquery-sql-ops.raw_data.customers_raw` c
USING (order_id);

