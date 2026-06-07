-- Most Profitable Sub-Categories


SELECT
    Sub_Category,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore
GROUP BY Sub_Category
ORDER BY Total_Profit DESC;