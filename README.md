# SuperstoreSample
Superstore Sales & Shipping Performance Project

Power Dashboard Link: 

This project takes the Superstore dataset and builds a full analytical model using SQL and Power BI. The aim was to create a clean, scalable star schema, load it with properly prepared data, and then build a dashboard that gives clear insight into sales performance, profit, and shipping behaviour across different regions, products, and customer segments.

Data Modelling (Star Schema)
I started by designing the star schema in SQL. The descriptive fields were separated into Dimension tables, and all numerical measures were stored in the central FactSales table. This structure makes the model easier to understand and significantly improves query performance compared to using one large table.

Once the schema was created in SQL, Power BI was able to ingest the tables and automatically detect the relationships between them. The FactSales table sits in the centre and links to DimProduct, DimRegion, DimCustomer, and DimDate through surrogate keys. These keys ensure stable joins and avoid relying on business keys that may change or contain duplicates.

The star schema also keeps the model scalable — new fields or measures can be added without disrupting the structure.

SQL Work
The SQL scripts cover:

Creating Dimension tables

Creating the FactSales table

Cleaning and preparing the staging data

Assigning surrogate keys

Loading the Fact table

Basic analysis queries

Here’s an example of the surrogate key assignment used during the ETL process:

sql
UPDATE S
SET S.CustomerKey = C.CustomerKey
FROM Sample_Superstore_Staging S
JOIN DimCustomer C
    ON S.Customer_ID = C.Customer_ID;
This step ensures the staging data is ready to be loaded into the FactSales table with the correct relationships.

Power BI Dashboard
The dashboard brings together the key metrics from the model and presents them in a clear, easy‑to‑read layout. It includes:

Sales by category

Sales by region

Sales by product

Daily sales trends

Shipping duration distribution

Regional performance map

KPI cards for Total Sales, Total Quantity, Total Profit, Profit Margin, and Average Shipping Duration

The visuals make it easy to spot trends, compare performance across regions and products, and understand how long orders typically take to ship.


<img width="722" height="408" alt="image" src="https://github.com/user-attachments/assets/a20ab032-6b0b-4cc5-a23d-6c49ef0b23c3" />




DAX Measures
I created several DAX measures in the FactSales table to support the dashboard:

Code
Total Sales = SUM(FactSales[Sales])

Total Profit = SUM(FactSales[Profit])

Total Quantity = SUM(FactSales[Quantity])

Profit Margin = DIVIDE([Total Profit], [Total Sales])

Average Shipping Duration = AVERAGE(FactSales[ShippingDuration])

Slow Shipping Count = COUNTROWS(
    FILTER(FactSales, FactSales[ShippingDuration] > 5)
)
These measures allow flexible analysis across all Dimension tables and power the main KPIs in the report.

Summary
This project demonstrates:

Building a star schema from scratch in SQL

Cleaning and preparing data for analytical use

Assigning surrogate keys and loading a Fact table

Creating DAX measures for reporting

Designing a clear, insightful Power BI dashboard

The final model is clean, efficient, and scalable — and provides a solid foundation for further analysis or additional reporting.
