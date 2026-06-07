-- Top 5 States by Sales


SELECT
    State,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM superstore
GROUP BY State
ORDER BY Total_Sales DESC
LIMIT 5;