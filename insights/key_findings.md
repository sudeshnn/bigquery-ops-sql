# Key Findings – Brazilian E-Commerce Operations Analysis

## 1. Strong Average Performance Masks Tail Risk
Weekly SLA analysis shows consistently high on-time delivery rates, generally above 90%.  
However, the 90th percentile (p90) lead time reaches up to **30–37 days** in certain weeks, indicating that a subset of customers experiences significantly longer delivery times as operational load increases.

This demonstrates that **average-based metrics alone are insufficient** for monitoring operational risk, and tail behavior must be tracked explicitly.

Weekly analysis indicates that average lead time remains within a relatively narrow band,
typically between 10 and 18 days across the observed period, suggesting stable overall
delivery performance.

However, the 90th percentile (p90) lead time — representing the delivery duration within
which 90% of orders are completed — shows substantial spikes during periods of operational
stress. In several high-volume weeks (e.g., late February and early March 2018),
p90 lead time increases sharply to the 32–37 day range, while average lead time remains
below 20 days.

This divergence between average and tail performance reveals that while most orders are
delivered within expected timeframes, a meaningful subset of customers experiences severe
delays during peak demand. As a result, average-based metrics summarize typical performance
but fail to capture operational risk, which is driven by tail outcomes and is more accurately
reflected through percentile-based metrics such as p90.

---

## 2. Conservative SLA Promises with High Variability

City level analysis shows that average delivery delay is negative across most locations,
indicating that orders are generally delivered earlier than the estimated delivery date.
This suggests that delivery promises are conservative and that the system does not suffer
from widespread execution delays.

However, on-time delivery performance varies substantially across cities, with on-time
rates ranging approximately between 72% and 99%. This wide dispersion indicates that,
despite early deliveries on average, the ability to meet promised delivery dates is not
consistent across regions.

Taken together, these results show that while the system generally delivers early,
this behavior is not uniform across locations. The variation in on-time rates across cities
points to regional inconsistencies in SLA estimation accuracy, suggesting that the primary
issue lies not in delivery speed but in how delivery promises are set at the local level.

---

## 3. Significant Regional Differences in Delivery Performance
Delivery performance differs substantially across states and cities, even within the same
region. To assess these differences, on time delivery rate and p90 delay metrics are
examined together, since they capture complementary aspects of performance. While on time
rate reflects how consistently promised delivery dates are met, p90 delay captures the
severity of delays experienced by the worst affected orders.

The analysis shows that some cities consistently perform poorly on both metrics, with low
on time delivery rates and high p90 delays observed over time. The fact that these two
metrics deteriorate simultaneously and persistently in the same locations suggests that
the issue is not driven by temporary fluctuations, but by localized operational constraints
such as carrier capacity limitations, geographic distance, or last mile infrastructure
challenges.

This finding underscores the importance of monitoring delivery performance at the regional
and city level, as national level averages can conceal local bottlenecks and prevent timely,
targeted operational interventions.


---

## 4. Order Value Is Not the Primary Driver of Delays

State level analysis comparing high value and non high value orders shows no consistent
pattern indicating that higher order value leads to worse delivery performance. Across
most states, average delivery delays for orders with value above 500 are very similar to
those observed for lower value orders, with differences remaining small and directionally
inconsistent.

While delivery performance varies substantially across states in terms of average delay,
on time rate, and p90 delay, these differences do not systematically align with order value.
Instead, both high value and lower value orders tend to experience similar delay behavior
within the same state.

City level analysis is used to identify where delivery performance diverges locally, while
the order value comparison is intentionally aggregated at the state level to ensure
sufficient sample size and stable comparisons. These two analyses serve different purposes
and are methodologically complementary.

Taken together, the results suggest that delivery delays are not primarily driven by order
value or basket size, but by state specific logistics conditions. As a result, operational
improvement efforts are likely to be more effective when focused on regional bottlenecks
rather than value based customer segmentation.

