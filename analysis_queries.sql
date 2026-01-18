-- Question 1: Which channels generate more revenue and which consume budget with lower return?

SELECT
    channel,
    SUM(revenue) AS total_revenue,
    SUM(cost) AS total_cost,
    (SUM(revenue) - SUM(cost)) / SUM(cost) AS roi
FROM campaign_performance
GROUP BY channel
ORDER BY roi DESC;


-- Question 2: Among sales campaigns, which ones are more efficient?

SELECT
    campaign_id,
    campaign_name,
    clicks,
    conversions,
    cost,
    conversions::float / clicks AS conversion_rate,
    cost / conversions AS cpa
FROM campaign_performance
WHERE objective = 'Sales'
ORDER BY conversion_rate DESC;


-- Question 3: Which campaigns should be scaled?

-- Based on ROI, conversion efficiency and business objectives
