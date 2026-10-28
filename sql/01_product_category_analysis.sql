/*
    PRODUCT CATEGORY ANALYSIS

    1. Revenue by product category
    2. Units sold by product category
    3. Average unit price by product category
    4. Total profit by product category
    5. Profit margin by product category
*/


-- 1. Revenue by product category

SELECT
    c.ProductCategoryKey,
    c.EnglishProductCategoryName,
    SUM(f.SalesAmount) AS total_revenue
FROM FactInternetSales AS f
JOIN DimProduct AS p
    ON f.ProductKey = p.ProductKey
JOIN DimProductSubcategory AS s
    ON p.ProductSubcategoryKey = s.ProductSubcategoryKey
JOIN DimProductCategory AS c
    ON s.ProductCategoryKey = c.ProductCategoryKey
GROUP BY
    c.ProductCategoryKey,
    c.EnglishProductCategoryName
ORDER BY
    total_revenue DESC;


-- 2. Units sold by product category

SELECT
    c.ProductCategoryKey,
    c.EnglishProductCategoryName,
    SUM(f.OrderQuantity) AS total_units
FROM FactInternetSales AS f
JOIN DimProduct AS p
    ON f.ProductKey = p.ProductKey
JOIN DimProductSubcategory AS s
    ON p.ProductSubcategoryKey = s.ProductSubcategoryKey
JOIN DimProductCategory AS c
    ON s.ProductCategoryKey = c.ProductCategoryKey
GROUP BY
    c.ProductCategoryKey,
    c.EnglishProductCategoryName
ORDER BY
    total_units DESC;


-- 3. Average unit price by product category

SELECT
    c.ProductCategoryKey,
    c.EnglishProductCategoryName,
    AVG(f.UnitPrice) AS average_unit_price
FROM FactInternetSales AS f
JOIN DimProduct AS p
    ON f.ProductKey = p.ProductKey
JOIN DimProductSubcategory AS s
    ON p.ProductSubcategoryKey = s.ProductSubcategoryKey
JOIN DimProductCategory AS c
    ON s.ProductCategoryKey = c.ProductCategoryKey
GROUP BY
    c.ProductCategoryKey,
    c.EnglishProductCategoryName
ORDER BY
    average_unit_price DESC;


-- 4. Total profit by product category

SELECT
    c.ProductCategoryKey,
    c.EnglishProductCategoryName,
    SUM(f.SalesAmount - f.TotalProductCost) AS total_profit
FROM FactInternetSales AS f
JOIN DimProduct AS p
    ON f.ProductKey = p.ProductKey
JOIN DimProductSubcategory AS s
    ON p.ProductSubcategoryKey = s.ProductSubcategoryKey
JOIN DimProductCategory AS c
    ON s.ProductCategoryKey = c.ProductCategoryKey
GROUP BY
    c.ProductCategoryKey,
    c.EnglishProductCategoryName
ORDER BY
    total_profit DESC;


-- 5. Profit margin by product category

SELECT
    c.ProductCategoryKey,
    c.EnglishProductCategoryName,
    SUM(f.SalesAmount) AS total_revenue,
    SUM(f.SalesAmount - f.TotalProductCost) AS total_profit,
    SUM(f.SalesAmount - f.TotalProductCost)
        / NULLIF(SUM(f.SalesAmount), 0) * 100 AS profit_margin_percentage
FROM FactInternetSales AS f
JOIN DimProduct AS p
    ON f.ProductKey = p.ProductKey
JOIN DimProductSubcategory AS s
    ON p.ProductSubcategoryKey = s.ProductSubcategoryKey
JOIN DimProductCategory AS c
    ON s.ProductCategoryKey = c.ProductCategoryKey
GROUP BY
    c.ProductCategoryKey,
    c.EnglishProductCategoryName
ORDER BY
    profit_margin_percentage DESC;