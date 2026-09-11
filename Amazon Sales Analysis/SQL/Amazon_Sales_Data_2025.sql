/* USE amazon_sales_analysis; */

/* SELECT * FROM AmazonSales; */

-- SELECT COUNT(*) AS TotalRows FROM AmazonSales; 

/* SELECT TOP 10 * FROM AmazonSales; */

SELECT 
    SUM(Total_Sales) AS TotalRevenue,
    SUM(Quantity) AS TotalQuantity,
    COUNT(DISTINCT Order_ID) AS TotalOrders,
    COUNT(DISTINCT Product) AS UniqueProducts
FROM AmazonSales;

/* Which products generate the most revenue? */
SELECT
    Product,
    SUM(Total_Sales) AS TotalRevenue
FROM AmazonSales
GROUP BY Product
ORDER BY TotalRevenue DESC;

/* Revenue by product category */

SELECT
    Category,
    SUM(Total_Sales) AS TotalRevenue
FROM AmazonSales
GROUP BY Category
ORDER BY TotalRevenue DESC;

/* How much revenue did we generate in each month? */
SELECT
    Year,
    Month,
    SUM(Total_Sales) AS TotalRevenue
FROM dbo.AmazonSales
GROUP BY Year, Month
ORDER BY Year, Month;

/* Which customers generate the most revenue? */
SELECT
    Customer_Name,
    SUM(Total_Sales) AS TotalRevenue
FROM dbo.AmazonSales
GROUP BY Customer_Name
ORDER BY TotalRevenue DESC;

/* Which customer locations generate the most revenue? */
SELECT
    Customer_Location,
    SUM(Total_Sales) AS TotalRevenue
FROM dbo.AmazonSales
GROUP BY Customer_Location
ORDER BY TotalRevenue DESC;

/* Which payment methods generate the most sales, and how many orders use each method? */
SELECT
    Payment_Method,
    COUNT(DISTINCT Order_ID) AS TotalOrders,
    SUM(Quantity) AS TotalQuantity,
    SUM(Total_Sales) AS TotalRevenue
FROM dbo.AmazonSales
GROUP BY Payment_Method
ORDER BY TotalRevenue DESC;

/* How many orders are Completed, Pending, and Cancelled, and how much revenue is associated with each status? */
SELECT
    Status,
    COUNT(DISTINCT Order_ID) AS TotalOrders,
    SUM(Quantity) AS TotalQuantity,
    SUM(Total_Sales) AS TotalRevenue
FROM dbo.AmazonSales
GROUP BY Status
ORDER BY TotalOrders DESC;

/* What percentage of total orders were cancelled? */
/* Cancellation Rate */

SELECT
    COUNT(DISTINCT CASE
        WHEN Status = 'Cancelled' THEN Order_ID
    END) AS CancelledOrders,

    COUNT(DISTINCT Order_ID) AS TotalOrders,

    CAST(
        COUNT(DISTINCT CASE
            WHEN Status = 'Cancelled' THEN Order_ID
        END) * 100.0
        / COUNT(DISTINCT Order_ID)
        AS DECIMAL(5,2)
    ) AS CancellationRate
FROM dbo.AmazonSales;

/* Which customers generate the most revenue, how many orders do they place, and what is their average order value? */
SELECT
    Customer_Name,
    COUNT(DISTINCT Order_ID) AS TotalOrders,
    SUM(Quantity) AS TotalQuantity,
    SUM(Total_Sales) AS TotalRevenue,
    CAST(
        SUM(Total_Sales) * 1.0
        / COUNT(DISTINCT Order_ID)
        AS DECIMAL(10,2)
    ) AS AverageOrderValue
FROM dbo.AmazonSales
GROUP BY Customer_Name
ORDER BY TotalRevenue DESC;

/* How much revenue and quantity were generated in each month? */
SELECT
    Year,
    Month,
    COUNT(DISTINCT Order_ID) AS TotalOrders,
    SUM(Quantity) AS TotalQuantity,
    SUM(Total_Sales) AS TotalRevenue
FROM dbo.AmazonSales
GROUP BY Year, Month
ORDER BY Year, Month;

/* Which are the top 5 products by revenue? */
SELECT TOP 5
    Product,
    SUM(Total_Sales) AS TotalRevenue,
    SUM(Quantity) AS TotalQuantity,
    COUNT(DISTINCT Order_ID) AS TotalOrders
FROM dbo.AmazonSales
GROUP BY Product
ORDER BY TotalRevenue DESC;

/* Who are the top 5 customers by revenue? */
SELECT TOP 5
    Customer_Name,
    COUNT(DISTINCT Order_ID) AS TotalOrders,
    SUM(Quantity) AS TotalQuantity,
    SUM(Total_Sales) AS TotalRevenue
FROM dbo.AmazonSales
GROUP BY Customer_Name
ORDER BY TotalRevenue DESC;

/* Which payment method has the highest average order value? */
SELECT
    Payment_Method,
    COUNT(DISTINCT Order_ID) AS TotalOrders,
    SUM(Total_Sales) AS TotalRevenue,
    CAST(
        SUM(Total_Sales) * 1.0
        / COUNT(DISTINCT Order_ID)
        AS DECIMAL(10,2)
    ) AS AverageOrderValue
FROM dbo.AmazonSales
GROUP BY Payment_Method
ORDER BY AverageOrderValue DESC;