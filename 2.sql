-- . Top 10 Products by Sales


SELECT
    Product_Name,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM superstore
GROUP BY Product_Name
ORDER BY Total_Sales DESC
LIMIT 10;