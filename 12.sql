-- Top 3 Products in Each Category


WITH ProductSales AS (
    SELECT
        Category,
        Product_Name,
        ROUND(SUM(Sales), 2) AS Total_Sales,
        ROW_NUMBER() OVER (
            PARTITION BY Category
            ORDER BY SUM(Sales) DESC
        ) AS rn
    FROM superstore
    GROUP BY Category, Product_Name
)
SELECT
    Category,
    Product_Name,
    Total_Sales
FROM ProductSales
WHERE rn <= 3;