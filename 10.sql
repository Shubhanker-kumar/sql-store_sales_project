-- Region-wise Sales Contribution


SELECT
    Region,
    ROUND(SUM(Sales), 2) AS Region_Sales,
    ROUND(
        (SUM(Sales) * 100) /
        (SELECT SUM(Sales) FROM superstore),
        2
    ) AS Sales_Percentage
FROM superstore
GROUP BY Region
ORDER BY Region_Sales DESC;