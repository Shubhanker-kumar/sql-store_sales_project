-- Find Loss-Making Products

SELECT
    Product_Name,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore
GROUP BY Product_Name
HAVING SUM(Profit) < 0
ORDER BY Total_Profit;