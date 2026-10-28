


-- 1. Dataset date coverage

SELECT
    MIN(f.OrderDate) AS earliest_order_date,
    MAX(f.OrderDate) AS latest_order_date
FROM FactInternetSales AS f;


-- 2. Yearly revenue - all available years

SELECT
    d.CalendarYear,
    SUM(f.SalesAmount) AS total_revenue
FROM FactInternetSales AS f
JOIN DimDate AS d
    ON f.OrderDateKey = d.DateKey
GROUP BY
    d.CalendarYear
ORDER BY
    d.CalendarYear;


-- 3. Full-year revenue comparison - 2011 to 2013

SELECT
    d.CalendarYear,
    SUM(f.SalesAmount) AS total_revenue
FROM FactInternetSales AS f
JOIN DimDate AS d
    ON f.OrderDateKey = d.DateKey
WHERE d.CalendarYear BETWEEN 2011 AND 2013
GROUP BY
    d.CalendarYear
ORDER BY
    d.CalendarYear;


-- 4. Monthly revenue trend - 2011 to 2013

SELECT
    d.CalendarYear,
    d.MonthNumberOfYear,
    d.EnglishMonthName,
    SUM(f.SalesAmount) AS total_revenue
FROM FactInternetSales AS f
JOIN DimDate AS d
    ON f.OrderDateKey = d.DateKey
WHERE d.CalendarYear BETWEEN 2011 AND 2013
GROUP BY
    d.CalendarYear,
    d.MonthNumberOfYear,
    d.EnglishMonthName
ORDER BY
    d.CalendarYear,
    d.MonthNumberOfYear;