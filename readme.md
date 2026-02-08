# BigQuery E-Commerce Operations Analytics

## Project Overview
This project analyzes e-commerce delivery performance using BigQuery and advanced SQL.  
The main objective is to evaluate operational efficiency, delivery SLA performance, and regional differences across markets, using real-world transactional data.

The project follows a production-style data architecture with raw ingestion and analytical views, similar to what is used in large-scale e-commerce operations teams.

---

## Dataset
The analysis is based on the Brazilian E-Commerce (OLIST) Dataset, a publicly available dataset containing over 100,000 real orders.

Source: Kaggle – Brazilian E-Commerce Public Dataset  
The dataset includes:
- Order lifecycle timestamps
- Customer location (city/state)
- Order items, prices, and freight (delivery) costs

---

## Data Architecture
A two-layer BigQuery architecture was designed:

### Raw Layer (`raw_data`)
Stores source data in its original form:
- `orders_raw` – order status and delivery timestamps  
- `customers_raw` – customer city and state  
- `order_items_raw` – item prices and freight (logistics) costs  

### Analytical Layer (`ops_data`)
Contains SQL views with business logic applied:
- `cleaned_orders` – SLA flags and delivery delay calculations  
- `cleaned_orders_geo` – orders enriched with regional information  
- `order_value_per_order` – aggregated order-level value and item counts  

Using views instead of physical tables ensures data consistency and avoids duplication.

---

## Key Metrics
- On-time delivery rate (SLA)
- Average delivery delay (days)
- 90th percentile (p90) delivery delay
- Lead time (purchase → delivery)
- Regional (state/city) SLA performance
- High-value order delivery performance

---

## SQL Analysis
All analyses were implemented using BigQuery Standard SQL, including:
- Date and timestamp transformations
- Conditional logic for SLA classification
- Aggregations and joins across multiple tables
- Percentile-based metrics (`APPROX_QUANTILES`)
- Region-level benchmarking

---

## Key Findings
- Weekly SLA is generally high, but **p90 lead time can reach ~30–37 days**, indicating tail-risk in certain weeks.
- **Average delay is negative in many cities**, suggesting conservative estimated delivery dates, while on-time rate varies by city.
- Delivery performance differs significantly by state/city, highlighting region-specific constraints.
- High-value orders do not consistently show worse average delays; regional logistics factors appear more influential.

For a detailed interpretation, see [insights/key_findings.md](insights/key_findings.md).

---

## Repository Structure
```text
sql/
├── 01_create_cleaned_orders.sql
├── 02_weekly_sla_kpi.sql
├── 03_create_cleaned_orders_geo.sql
├── 04_city_state_sla_performance.sql
├── 05_create_order_value_per_order.sql
└── 06_high_value_orders_delay.sql
