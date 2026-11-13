\# AdventureWorks Sales Analysis | SQL, Excel \& Power BI



\## Project Overview



This project is an end-to-end sales analysis of the \*\*AdventureWorksDW2022\*\* dataset using \*\*SQL Server, Excel, Power Query and Power BI\*\*.



The objective was to analyse internet sales performance, identify the main drivers of revenue and profit, understand customer and geographic performance, and communicate the findings through an interactive Power BI dashboard.



The project follows an end-to-end data analyst workflow:



\*\*SQL Server → SQL Analysis → Excel \& Power Query → Power BI → Business Insights \& Recommendations\*\*



Rather than treating each tool as a separate exercise, the same business questions were investigated, validated and communicated throughout the project.



\---



\## Business Question



The main question guiding the analysis was:



> \*\*How is Adventure Works' internet sales business performing, what are the key drivers of revenue and profit, and where are the strongest opportunities for growth?\*\*



The analysis focused on four areas:



\- Product performance

\- Sales trends over time

\- Geographic performance

\- Customer performance



\---



\## Tools Used



| Tool | How it was used |

|---|---|

| \*\*SQL Server / SSMS\*\* | Queried the AdventureWorks data warehouse, joined fact and dimension tables, calculated KPIs and investigated business questions |

| \*\*Excel\*\* | Validated SQL results, created PivotTables, performed supporting analysis and produced visualisations |

| \*\*Power Query\*\* | Connected Excel directly to SQL Server, cleaned data, merged tables and prepared an analysis-ready dataset |

| \*\*Power BI\*\* | Built the data model, created DAX measures and developed an interactive management dashboard |

| \*\*Git / GitHub\*\* | Version controlled and documented the complete project |



\---



\## Project Workflow



\### 1. SQL Analysis



SQL was used to investigate the underlying sales data and answer the main business questions.



Analysis included:



\- Revenue, profit, units sold and profit margin by product category

\- Yearly and monthly revenue trends

\- Revenue and profit by country and sales territory

\- Top customers by revenue and order frequency

\- Average order value

\- Customer revenue concentration



SQL results were also used as a benchmark to validate the results later produced in Excel and Power BI.



\### 2. Excel \& Power Query



Excel was used as the supporting analysis and validation layer.



Power Query connected directly to the SQL Server database and combined the required fact and dimension data into a clean analysis table.



Excel analysis included:



\- Product category performance

\- Monthly and yearly sales trends

\- Geographic performance

\- Customer revenue, order frequency and average order value

\- PivotTables and supporting visualisations



\### 3. Power BI Dashboard



Power BI was used to create the final interactive management dashboard.



The model uses a fact-and-dimension structure with `FactInternetSales` connected to the relevant date, product, customer and sales territory dimensions.



Key DAX measures include:



\- \*\*Total Revenue\*\*

\- \*\*Total Profit\*\*

\- \*\*Total Orders\*\*

\- \*\*Average Order Value\*\*



The dashboard also includes interactive slicers for:



\- \*\*Calendar Year\*\*

\- \*\*Sales Territory Country\*\*



\---



\## Power BI Dashboard



!\[AdventureWorks Power BI Dashboard](images/Power%20bi%20Dashboard.png)



The dashboard provides an interactive overview of sales performance across time, products, countries and customers.



Users can filter the report by \*\*year\*\* and \*\*country\*\*, with all KPI cards and visuals updating dynamically.





\## Key Business Insights



\### Product Performance



\- \*\*Bikes are the main revenue and profit driver\*\*, generating approximately \*\*£28.32M in revenue\*\* and \*\*£11.51M in profit\*\*.

\- Bikes account for the majority of financial performance despite selling fewer units than Accessories, showing that \*\*higher product value is a major revenue driver\*\*.

\- \*\*Accessories recorded the highest sales volume\*\*, with \*\*36,092 units sold\*\*, compared with 15,205 Bikes.

\- Accessories also achieved the \*\*highest profit margin at approximately 62.6%\*\*, showing that the category performs strongly from a margin and volume perspective even though its total revenue is much lower than Bikes.

\- Clothing generated the lowest revenue and profit of the three product categories.



\### Sales Trend



\- The dataset covers orders from late 2010 to early 2014, meaning \*\*2010 and 2014 are partial years\*\* and should not be used for direct annual performance comparisons.

\- Across the complete years, \*\*2013 was the strongest year\*\*, generating approximately \*\*£16.35M in revenue\*\*.

\- Revenue increased significantly throughout 2013, with particularly strong performance toward the end of the year.

\- \*\*December 2013 was the strongest month\*\*, generating approximately \*\*£1.87M in revenue\*\*.

\- 2012 performed below 2011 across much of the year before the substantial growth seen in 2013.



\### Geographic Performance



\- The \*\*United States was the highest-revenue country\*\*, generating approximately \*\*£9.39M\*\*, followed closely by \*\*Australia at £9.06M\*\*.

\- The United States also generated the highest total profit.

\- Australia was the strongest individual sales territory but ranked second when results were aggregated at country level.

\- Profit margins were relatively consistent across countries, suggesting that \*\*geographic differences are driven more by sales scale than major differences in profitability\*\*.

\- Canada recorded the highest profit margin, although the difference between countries was relatively small.



\### Customer Performance



\- \*\*Nichole Nara was the highest-revenue individual customer\*\*, generating approximately \*\*£13.30K\*\* from only \*\*5 orders\*\*.

\- Her average order value was approximately \*\*£2,659\*\*, showing that her high customer value came from \*\*large order values rather than frequent purchases\*\*.

\- The most frequent customers placed up to \*\*28 distinct orders\*\*, but many generated considerably less revenue because their average order values were much lower.

\- This highlights two different customer behaviours: \*\*high-frequency, lower-value customers\*\* and \*\*lower-frequency, high-value customers\*\*.

\- The Top 10 customers contributed only approximately \*\*0.44% of total revenue\*\*, indicating that overall revenue is \*\*widely distributed across the customer base rather than being dependent on a small number of customers\*\*.



\---



\## Business Recommendations



Based on the analysis, the following actions could be considered:



\- \*\*Protect and strengthen the Bikes category\*\*, as it is the primary driver of both revenue and profit. Product availability, pricing and demand should be closely monitored because overall financial performance is heavily influenced by this category.

\- \*\*Explore further growth opportunities in Accessories\*\*, which combine high unit sales with the strongest profit margin. Cross-selling Accessories alongside Bike purchases could increase customer value.

\- \*\*Investigate Clothing performance\*\* to understand why the category produces comparatively low revenue and profit before making decisions about repositioning, promotion or product range changes.

\- \*\*Investigate the drivers behind the strong 2013 growth\*\*, particularly the significant improvement from mid-year onward and the strong year-end performance. Understanding whether growth was driven by products, customers, territories or commercial activity could help replicate successful patterns.

\- \*\*Maintain focus on the United States and Australia\*\*, which are the two strongest revenue markets, while investigating whether lower-performing countries have opportunities for expansion.

\- \*\*Segment customers by purchasing behaviour\*\*, distinguishing frequent lower-value purchasers from less frequent high-value purchasers. Different marketing and retention strategies could then be developed for each group.

\- Because revenue is spread across a broad customer base, continue supporting \*\*customer acquisition and retention across multiple segments\*\* rather than relying heavily on a small group of high-value customers.





\---



\## Repository Structure



```text

AdventureWorks-Data-Analysis/

│

├── README.md

│

├── sql/

│   ├── 01\_product\_category\_analysis.sql

│   ├── 02\_sales\_trend\_analysis.sql

│   ├── 03\_geography\_analysis.sql

│   └── 04\_customer\_analysis.sql

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



\### Folder Guide



\- \*\*sql/\*\* — SQL queries used to investigate product, time, geographic and customer performance.

\- \*\*excel/\*\* — Supporting Excel analysis using Power Query, PivotTables, formulas and visualisations.

\- \*\*power-bi/\*\* — Interactive Power BI dashboard and data model.

\- \*\*images/\*\* — Dashboard screenshot used in the README.

\- \*\*documentation/\*\* — Business insights captured during the analysis.



\---



\## Skills Demonstrated



\### SQL



\- Querying a relational data warehouse

\- Fact and dimension table joins

\- Aggregations using `SUM`, `AVG` and `COUNT`

\- Distinct order counting

\- CTEs

\- Window functions and customer ranking

\- Conditional aggregation

\- Profit and profit margin calculations

\- Business-focused data validation



\### Excel \& Power Query



\- Connecting Excel directly to SQL Server

\- Data cleaning and transformation

\- Merging fact and dimension tables

\- Creating calculated columns

\- PivotTables and PivotCharts

\- Distinct counts

\- Average order value calculations

\- Supporting charts and geographic analysis

\- Cross-checking results against SQL outputs



\### Power BI



\- Dimensional data modelling

\- One-to-many relationships

\- Active and inactive date relationships

\- Date table configuration

\- DAX measures

\- KPI cards

\- Interactive slicers

\- Time-series visualisation

\- Geographic analysis

\- Product and customer performance analysis

\- Top N filtering

\- Interactive cross-filtering across report visuals



\### Analytical \& Business Skills



\- Translating a broad business problem into analytical questions

\- Selecting appropriate KPIs

\- Validating results across multiple tools

\- Identifying revenue and profit drivers

\- Distinguishing sales volume from financial value

\- Identifying different customer purchasing behaviours

\- Turning findings into evidence-based business recommendations

\- Communicating results through an interactive dashboard



\---



\## Project Summary



This project demonstrates an end-to-end data analyst workflow using a realistic data warehouse environment.



SQL was used to investigate the data and establish the core findings. Excel and Power Query were then used to prepare, validate and explore the results further. Power BI was used to model the data and communicate the final analysis through an interactive dashboard.



The analysis identified several important business findings, including:



\- \*\*£29.36M total internet sales revenue\*\*

\- \*\*£12.08M total profit\*\*

\- Bikes as the dominant revenue and profit category

\- Accessories as the highest-volume and highest-margin product category

\- Significant sales growth during 2013

\- The United States and Australia as the strongest revenue markets

\- Different customer value patterns based on purchase frequency and average order value

\- Low reliance on individual high-value customers



The project demonstrates not only technical skills across \*\*SQL, Excel, Power Query and Power BI\*\*, but also the ability to connect analysis to business decisions and communicate findings clearly.

