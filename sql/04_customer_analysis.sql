  
--Revenue by customer

SELECT c.CustomerKey, c.FirstName, c.LastName, SUM(f.SalesAmount) AS total_revenue
FROM FactInternetSales AS f
JOIN DimCustomer AS c
    ON f.CustomerKey = c.CustomerKey
GROUP BY c.CustomerKey, c.FirstName, c.LastName
ORDER BY total_revenue DESC 

--Orders by customer
SELECT c.CustomerKey, c.FirstName, c.LastName, COUNT(DISTINCT f.SalesOrderNumber) AS total_orders
FROM FactInternetSales AS f
JOIN DimCustomer AS c
    ON f.CustomerKey = c.CustomerKey
GROUP BY c.CustomerKey, c.FirstName, c.LastName
ORDER BY total_orders DESC 

--Average order value by customer 
SELECT c.CustomerKey, c.FirstName, c.LastName, SUM(f.SalesAmount)/COUNT(DISTINCT f.SalesOrderNumber) AS average_order_value
FROM FactInternetSales AS f
JOIN DimCustomer AS c
    ON f.CustomerKey = c.CustomerKey
GROUP BY c.CustomerKey, c.FirstName, c.LastName
ORDER BY average_order_value DESC 

--Customer summary: revenue + orders + AOV 
SELECT c.CustomerKey, c.FirstName, c.LastName, SUM(f.SalesAmount) AS total_revenue,
COUNT(DISTINCT f.SalesOrderNumber) AS total_orders,
SUM(f.SalesAmount) / COUNT(DISTINCT f.SalesOrderNumber) AS average_order_value
FROM FactInternetSales AS f
JOIN DimCustomer AS c
    ON f.CustomerKey = c.CustomerKey
GROUP BY c.CustomerKey, c.FirstName, c.LastName
ORDER BY total_revenue DESC 

--Customer ranking using CTE + window function 
WITH CustomerSummary AS
(
    SELECT
        c.CustomerKey,
        c.FirstName,
        c.LastName,
        SUM(f.SalesAmount) AS total_revenue,
        COUNT(DISTINCT f.SalesOrderNumber) AS total_orders,
        SUM(f.SalesAmount)
            / COUNT(DISTINCT f.SalesOrderNumber) AS average_order_value
    FROM FactInternetSales AS f
    JOIN DimCustomer AS c
        ON f.CustomerKey = c.CustomerKey
    GROUP BY
        c.CustomerKey,
        c.FirstName,
        c.LastName
)
SELECT
    CustomerKey,
    FirstName,
    LastName,
    total_revenue,
    total_orders,
    average_order_value,
    RANK() OVER (ORDER BY total_revenue DESC) AS revenue_rank
FROM CustomerSummary
ORDER BY revenue_rank;

--Top-10 revenue concentration
WITH CustomerRevenue AS
(
    SELECT
        c.CustomerKey,
        SUM(f.SalesAmount) AS total_revenue
    FROM FactInternetSales AS f
    JOIN DimCustomer AS c
        ON f.CustomerKey = c.CustomerKey
    GROUP BY
        c.CustomerKey
),
RankedCustomers AS
(
    SELECT
        CustomerKey,
        total_revenue,
        RANK() OVER (ORDER BY total_revenue DESC) AS revenue_rank
    FROM CustomerRevenue
)

SELECT
    SUM(CASE WHEN revenue_rank <= 10 THEN total_revenue ELSE 0 END) AS top_10_revenue,
    SUM(total_revenue) AS total_revenue,
    SUM(CASE WHEN revenue_rank <= 10 THEN total_revenue ELSE 0 END)
        / NULLIF(SUM(total_revenue), 0) * 100 AS top_10_revenue_percentage
FROM RankedCustomers;






