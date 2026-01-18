CREATE TABLE campaign_performance (
    campaign_id INT PRIMARY KEY,
    campaign_name TEXT,
    channel TEXT,
    objective TEXT,
    start_date DATE,
    end_date DATE,
    impressions INT,
    clicks INT,
    conversions INT,
    cost NUMERIC(10,2),
    revenue NUMERIC(10,2)
);
