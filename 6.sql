-- Monthly Sales Trend


SELECT
    YEAR(Order_Date) AS Year,
    MONTH(Order_Date) AS Month,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM superstore
GROUP BY YEAR(Order_Date), MONTH(Order_Date)
ORDER BY Year, Month;