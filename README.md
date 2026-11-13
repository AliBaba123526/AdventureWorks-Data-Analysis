# AdventureWorks Sales Analysis | SQL, Excel & Power BI

## Project Overview

This project is an end-to-end sales analysis of the **AdventureWorksDW2022** data warehouse using **SQL Server, Excel, Power Query and Power BI**.

The objective was to analyse internet sales performance, identify the main drivers of revenue and profit, understand customer and geographic performance, and communicate the findings through an interactive Power BI dashboard.

The project follows an end-to-end data analyst workflow:

**SQL Server → SQL Analysis → Excel & Power Query → Power BI → Business Insights & Recommendations**

Rather than treating each tool as a separate exercise, the same business questions were investigated, validated and communicated throughout the project.

---

## Business Question

The main question guiding the analysis was:

> **How is Adventure Works' internet sales business performing, what are the key drivers of revenue and profit, and where are the strongest opportunities for growth?**

The analysis focused on four key areas:

- Product performance
- Sales trends over time
- Geographic performance
- Customer performance

---

## Tools Used

| Tool | How it was used |
|---|---|
| **SQL Server / SSMS** | Queried the AdventureWorks data warehouse, joined fact and dimension tables, calculated KPIs and investigated business questions |
| **Excel** | Validated SQL results, created PivotTables, performed supporting analysis and produced visualisations |
| **Power Query** | Connected Excel directly to SQL Server, cleaned data, merged tables and prepared an analysis-ready dataset |
| **Power BI** | Built the data model, created DAX measures and developed an interactive management dashboard |
| **Git / GitHub** | Version controlled and documented the complete project |

---

## Project Workflow

### 1. SQL Analysis

SQL was used to investigate the underlying sales data and answer the main business questions.

The analysis included:

- Revenue, profit, units sold and profit margin by product category
- Yearly and monthly revenue trends
- Revenue and profit by country and sales territory
- Top customers by revenue
- Customer order frequency
- Average order value
- Customer revenue concentration
- CTEs and window functions for customer ranking

SQL results were also used as a benchmark to validate the results later produced in Excel and Power BI.

### 2. Excel & Power Query

Excel was used as the supporting analysis and validation layer.

Power Query connected directly to SQL Server and combined the required fact and dimension data into a clean analysis table.

The Excel stage included:

- Data cleaning and preparation
- Product category analysis
- Monthly and yearly sales trends
- Geographic analysis
- Customer revenue and order frequency
- Average order value calculations
- PivotTables
- PivotCharts
- Geographic visualisation
- Cross-checking results against SQL outputs

### 3. Power BI

Power BI was used to build the final interactive management dashboard.

The model uses a fact-and-dimension structure centred around `FactInternetSales`, with relationships to the relevant date, product, customer and sales territory dimensions.

The main DAX measures created were:

- **Total Revenue**
- **Total Profit**
- **Total Orders**
- **Average Order Value**

The dashboard includes interactive slicers for:

- **Calendar Year**
- **Sales Territory Country**

All KPI cards and visuals update dynamically when filters are applied.

---

## Power BI Dashboard

![AdventureWorks Power BI Dashboard](images/Power%20bi%20Dashboard.png)

The dashboard provides an interactive overview of sales performance across **time, products, countries and customers**.

### Dashboard KPIs

- **Total Revenue:** £29.36M
- **Total Profit:** £12.08M
- **Total Orders:** approximately 28K
- **Average Order Value:** £1,061.45

The dashboard also includes:

- Monthly revenue trends
- Revenue by country
- Revenue and profit by product category
- Top 10 customers by revenue
- Interactive year and country filters

---

## Key Business Insights

### Product Performance

- **Bikes are the main revenue and profit driver**, generating approximately **£28.32M in revenue** and **£11.51M in profit**.
- Bikes generate the majority of financial performance despite selling fewer units than Accessories, showing that **higher product value is a major revenue driver**.
- **Accessories recorded the highest sales volume**, with **36,092 units sold**, compared with 15,205 Bikes.
- Accessories also achieved the **highest profit margin at approximately 62.6%**.
- This shows that Accessories perform strongly from a volume and margin perspective even though total revenue is much lower than Bikes.
- Clothing generated the lowest revenue and profit of the three product categories.

### Sales Trends

- The sales data covers late 2010 to early 2014, meaning **2010 and 2014 are partial years** and were excluded from direct full-year comparisons.
- Across the complete years, **2013 was the strongest year**, generating approximately **£16.35M in revenue**.
- Revenue increased significantly throughout 2013, with particularly strong performance toward the end of the year.
- **December 2013 was the strongest month**, generating approximately **£1.87M in revenue**.
- 2012 generally performed below 2011 before the substantial growth seen during 2013.

### Geographic Performance

- The **United States was the highest-revenue country**, generating approximately **£9.39M**.
- **Australia ranked second**, generating approximately **£9.06M**.
- The United States also generated the highest overall profit.
- Australia was the strongest individual sales territory but ranked second when performance was aggregated at country level.
- Profit margins were relatively similar between countries, suggesting that **geographic performance differences are driven mainly by sales scale rather than major differences in profitability**.
- Canada recorded the highest profit margin, although the difference between countries was relatively small.

### Customer Performance

- **Nichole Nara was the highest-revenue individual customer**, generating approximately **£13.30K**.
- She placed only **5 orders**, producing an average order value of approximately **£2,659**.
- This shows that her high customer value came from **large purchases rather than high purchase frequency**.
- The most frequent customers placed up to **28 distinct orders**, but many generated considerably less revenue because their average order values were much lower.
- This highlights two different customer behaviours:
  - **High-frequency, lower-value customers**
  - **Lower-frequency, high-value customers**
- The Top 10 customers contributed only approximately **0.44% of total revenue**.
- This indicates that overall revenue is **widely distributed across the customer base rather than being dependent on a small group of customers**.

---

## Business Recommendations

Based on the analysis, the following actions could be considered:

- **Protect and strengthen the Bikes category**, as it is the primary driver of both revenue and profit. Product availability, pricing and demand should be closely monitored because overall financial performance is heavily influenced by this category.
- **Explore further growth opportunities in Accessories**, which combine high sales volume with the strongest profit margin. Cross-selling Accessories alongside Bike purchases could increase customer value.
- **Investigate Clothing performance** to understand the reasons behind comparatively low revenue and profit before making decisions around promotion, repositioning or product range changes.
- **Investigate the drivers behind the strong 2013 growth**, particularly the significant improvement from mid-year onward and the strong year-end performance.
- **Maintain focus on the United States and Australia**, the two strongest revenue markets, while investigating whether lower-performing markets offer opportunities for expansion.
- **Segment customers by purchasing behaviour**, distinguishing frequent lower-value purchasers from less frequent high-value purchasers.
- Develop different marketing and retention strategies for these customer groups.
- Because revenue is distributed across a broad customer base, continue supporting **customer acquisition and retention across multiple segments** rather than relying heavily on a small group of high-value customers.

---

## Repository Structure

```text
AdventureWorks-Data-Analysis/
│
├── README.md
│
├── sql/
│   ├── 01_product_category_analysis.sql
│   ├── 02_sales_trend_analysis.sql
│   ├── 03_geography_analysis.sql
│   └── 04_customer_analysis.sql
│
├── excel/
│   └── AdventureWorks-Supporting-Analysis.xlsx
│
├── power-bi/
│   └── AdventureWorks-Data-Analysis.pbix
│
├── images/
│   └── Power bi Dashboard.png
│
├── documentation/
│   └── insights.txt
│
└── .gitattributes
```

### Folder Guide

- **sql/** — SQL queries covering product, time, geographic and customer analysis.
- **excel/** — Supporting Excel analysis using Power Query, PivotTables, formulas and visualisations.
- **power-bi/** — Interactive Power BI dashboard and data model.
- **images/** — Dashboard screenshot used within this README.
- **documentation/** — Business insights captured during the analysis.

---

## Skills Demonstrated

### SQL

- Querying a relational data warehouse
- Fact and dimension table joins
- Aggregations using `SUM`, `AVG` and `COUNT`
- Distinct order counting
- Common Table Expressions (CTEs)
- Window functions
- Customer ranking
- Conditional aggregation
- Profit calculations
- Profit margin calculations

### Excel & Power Query

- SQL Server connectivity
- Data cleaning and transformation
- Merging fact and dimension tables
- Calculated columns
- PivotTables and PivotCharts
- Distinct counts
- Average order value analysis
- Supporting business visualisations
- Data validation across multiple tools

### Power BI

- Dimensional data modelling
- One-to-many relationships
- Active and inactive date relationships
- Date table configuration
- DAX measures
- KPI cards
- Interactive slicers
- Time-series visualisation
- Geographic analysis
- Product performance analysis
- Customer performance analysis
- Top N filtering
- Interactive cross-filtering

### Analytical & Business Skills

- Translating a broad business problem into analytical questions
- Selecting appropriate business KPIs
- Validating results across SQL, Excel and Power BI
- Identifying revenue and profit drivers
- Distinguishing sales volume from financial value
- Identifying different customer purchasing behaviours
- Turning analytical findings into evidence-based recommendations
- Communicating results through an interactive dashboard

---

## Project Summary

This project demonstrates an end-to-end data analyst workflow using a realistic data warehouse environment.

SQL was used to investigate the data and establish the core findings. Excel and Power Query were then used to prepare, validate and explore the results further. Power BI was used to model the data and communicate the final analysis through an interactive dashboard.

The analysis identified several important findings, including:

- **£29.36M total internet sales revenue**
- **£12.08M total profit**
- Bikes as the dominant revenue and profit category
- Accessories as the highest-volume and highest-margin product category
- Significant sales growth during 2013
- The United States and Australia as the strongest revenue markets
- Different customer value patterns based on purchase frequency and average order value
- Low reliance on individual high-value customers

Overall, the project demonstrates technical capability across **SQL, Excel, Power Query and Power BI**, alongside the ability to connect analysis to business decisions and communicate findings clearly.
