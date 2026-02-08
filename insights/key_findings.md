# Key Findings – Brazilian E-Commerce Operations Analysis

## 1. Strong Average Performance Masks Tail Risk
Weekly SLA analysis shows consistently high on-time delivery rates, generally above 90%.  
However, the 90th percentile (p90) lead time reaches up to **30–37 days** in certain weeks, indicating that a subset of customers experiences significantly longer delivery times as operational load increases.

This demonstrates that **average-based metrics alone are insufficient** for monitoring operational risk, and tail behavior must be tracked explicitly.

---

## 2. Conservative SLA Promises with High Variability
Average delivery delay is negative across most cities, meaning that orders are frequently delivered **earlier than the estimated delivery date**.

While this reflects conservative SLA promises, on-time delivery rates vary widely across cities (approximately **72%–96%**), suggesting that **delivery time estimation accuracy** differs significantly by location rather than delivery speed alone.

---

## 3. Significant Regional Differences in Delivery Performance
Delivery performance differs substantially by state and city, even within the same region.

Some cities consistently underperform in both on-time delivery rate and p90 delay metrics, pointing to **localized operational constraints** such as carrier capacity, distance, or infrastructure limitations.

This highlights the importance of **region-level performance monitoring**, as national averages can mask local bottlenecks.

---

## 4. Order Value Is Not the Primary Driver of Delays
High-value orders do not exhibit significantly worse average delivery delays compared to lower-value orders.

Delay variability appears to be driven more by **regional logistics factors** than by order value or basket size alone.

This suggests that logistics optimization efforts should prioritize **regional bottlenecks** over value-based customer segmentation.
