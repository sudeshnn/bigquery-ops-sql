{\rtf1\ansi\ansicpg1254\cocoartf2761
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;\f1\froman\fcharset0 Times-Roman;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 # BigQuery E-Commerce Operations Analytics\
\
## Project Overview\
This project analyzes **e-commerce delivery performance** using **BigQuery and advanced SQL**.  \
The main objective is to evaluate **operational efficiency**, **delivery SLA performance**, and **regional differences** across markets, using real-world transactional data.\
\
The project follows a **production-style data architecture** with raw ingestion and analytical views, similar to what is used in large-scale e-commerce operations teams.\
\
---\
\
## Dataset\
The analysis is based on the **Brazilian E-Commerce (OLIST) Dataset**, a publicly available dataset containing over **100,000 real orders**.\
\
**Source:** Kaggle \'96 Brazilian E-Commerce Public Dataset  \
The dataset includes:\
- Order lifecycle timestamps\
- Customer location (city/state)\
- Order items, prices, and freight (delivery) costs\
\
---\
\
## Data Architecture\
A two-layer BigQuery architecture was designed:\
\
### Raw Layer (`raw_data`)\
Stores source data in its original form:\
- `orders_raw` \'96 order status and delivery timestamps\
- `customers_raw` \'96 customer city and state\
- `order_items_raw` \'96 item prices and freight (logistics) costs\
\
### Analytical Layer (`ops_data`)\
Contains **SQL views** with business logic applied:\
- `cleaned_orders` \'96 SLA flags and delivery delay calculations\
- `cleaned_orders_geo` \'96 orders enriched with regional information\
- `order_value_per_order` \'96 aggregated order-level value and item counts\
\
Using **views instead of physical tables** ensures data consistency and avoids duplication.\
\
---\
\
## Key Metrics\
The following operational KPIs were defined and analyzed:\
\
- **On-time delivery rate (SLA)**\
- **Average delivery delay (days)**\
- **90th percentile (p90) delivery delay**\
- **Lead time (purchase \uc0\u8594  delivery)**\
- **Regional (state/city) SLA performance**\
- **High-value order delivery performance**\
\
---\
\
## SQL Analysis\
All analyses were implemented using **BigQuery Standard SQL**, including:\
\
- Date and timestamp transformations\
- Conditional logic for SLA classification\
- Aggregations and joins across multiple large tables\
- Percentile-based metrics (`APPROX_QUANTILES`)\
- Region-level benchmarking\
\
Each business question is implemented as a separate SQL query for clarity and reusability.\
\
---\
\
## Key Findings\
- **Average delivery delay is negative in many regions**, indicating deliveries often occur earlier than the estimated delivery date.\
- Despite early average delivery, **p90 delay remains positive**, showing that a small portion of customers experience significant delays.\
- **Delivery performance varies notably by state and city**, suggesting region-specific operational constraints.\
- **High-value orders exhibit higher delay variability**, likely due to increased logistical complexity.\
\
---\
\
## Business Implications\
- SLA promises may be conservative and could be optimized based on regional performance.\
- Regional benchmarking can help identify underperforming markets and prioritize process improvements.\
- High-value orders may benefit from differentiated logistics strategies or prioritization.\
\
---\
\
## Repository Structure\
\
bigquery-ops-sql/
├── README.md
├── sql/
│   ├── 01_create_cleaned_orders.sql
│   ├── 02_weekly_sla_kpi.sql
│   ├── 03_create_cleaned_orders_geo.sql
│   ├── 04_city_state_sla_performance.sql
│   ├── 05_create_order_value_per_order.sql
│   └── 06_high_value_orders_delay.sql
└── insights/
    └── key_findings.md

---\
\
## Tools & Technologies\
- **Google BigQuery**\
- **SQL (Standard SQL)**\
- Real-world e-commerce operational data\
\
---\
\
## Notes\
This project focuses on **operational analytics and decision support**, rather than predictive modeling, and is designed to reflect how data analytics teams support large-scale e-commerce operations.\
}