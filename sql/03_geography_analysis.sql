-- 1. Revenue by sales territory

SELECT s.SalesTerritoryKey, SalesTerritoryRegion, SalesTerritoryCountry,SUM(f.SalesAmount) AS total_revenue
FROM FactInternetSales AS f 
JOIN DimSalesTerritory AS s
    ON f.SalesTerritoryKey = s.SalesTerritoryKey
GROUP BY s.SalesTerritoryKey, SalesTerritoryRegion, SalesTerritoryCountry
ORDER BY total_revenue DESC;

-- 2. Revenue by country

SELECT s.SalesTerritoryCountry,SUM(f.SalesAmount) AS total_revenue
FROM FactInternetSales AS f 
JOIN DimSalesTerritory AS s
    ON f.SalesTerritoryKey = s.SalesTerritoryKey
GROUP BY s.SalesTerritoryCountry
ORDER BY total_revenue DESC;

-- 3. Profit by country

SELECT s.SalesTerritoryCountry,SUM(f.SalesAmount - f.TotalProductCost) AS total_profit
FROM FactInternetSales AS f 
JOIN DimSalesTerritory AS s
    ON f.SalesTerritoryKey = s.SalesTerritoryKey
GROUP BY s.SalesTerritoryCountry
ORDER BY total_profit DESC;

-- 4. Revenue, profit and profit margin by country

SELECT
    s.SalesTerritoryCountry,
    SUM(f.SalesAmount) AS total_revenue,
    SUM(f.SalesAmount - f.TotalProductCost) AS total_profit,
    SUM(f.SalesAmount - f.TotalProductCost)
        / NULLIF(SUM(f.SalesAmount), 0) * 100 AS profit_margin_percentage
FROM FactInternetSales AS f 
JOIN DimSalesTerritory AS s
    ON f.SalesTerritoryKey = s.SalesTerritoryKey
GROUP BY s.SalesTerritoryCountry
ORDER BY profit_margin_percentage DESC

