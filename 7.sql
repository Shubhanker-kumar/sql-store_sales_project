-- Top 5 Customers by Total Sales


SELECT
    Customer_ID,
    Customer_Name,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM superstore
GROUP BY Customer_ID, Customer_Name
ORDER BY Total_Sales DESC
LIMIT 5;