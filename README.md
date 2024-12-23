# Swiss Housing Analysis

### Real-Estate Project Overview

This data analysis project aims to deliver insights on property performance,  to determine which Swiss city—Zurich, Geneva, Lucerne, Bern, or Basel—offers the best return on investment (ROI) for purchasing properties. Using data from Homegate.ch, the analysis will evaluate property prices, rental income potential, and market dynamics to guide investors toward the most profitable locations

#### Data Source

Real Estate Data - The primary dataset used for this analysis is the "Best_swiss_property_investment_city_data.csv" file, containing detailed information about each property purchase made by the five different cities 

#### Tools

- Excel - Data Cleaning [Download here](https://1drv.ms/x/c/9a514731f389d167/EV2kduroW1VHnZ1_CHvYi3EBN0QhYYHtvmuSwVZu3E5Org?e=8gLjjx)
- SQL Server - Data Analysis [Download here](https://1drv.ms/u/c/9a514731f389d167/EZb_Yfonrw1IuyEgIkgw-pgBEdc54WBpDIEonRPKWLoUbQ?e=wuUs4f)
- Power BI - Creating reports  [Download here](https://1drv.ms/u/c/9a514731f389d167/EZdcRua8b_VEuY9JlyrG3MgBxalNrQAlMxd-IZgGDArdIw?e=6Z2iKg)
 
#### Data Cleaning and Preperation 

During the initial phase of preparing the data, we undertook a series of essential tasks to ensure the dataset was ready for analysis. These tasks involved several key activities, including:

1. Extracting and importing data directly from a website using web scraping techniques.
2. Addressing and managing any missing or incomplete values in the dataset to maintain its integrity and reliability.
3. Conducting a thorough cleaning and reformatting process to standardize the data structure and improve its usability for subsequent analysis.

#### Exploratory Data Analysis

The EDA involved exploring the real estate data to answer key questions, such as:

- What is the overall  Gross Rental Yield for the five city
- Determine the Net Rental Yield after deducting taxes, maintenance costs, and other expenses.
- How does the Capital Appreciation Potential look for the next 5 years?
- What is the overall ROI for properties in key locations?

#### Data Analysis

My SQL Server query/code

```sql
-- Calculate Gross Rental Yield for properties in Basel
SELECT 
    Location,
    Property_Price,
    [Annual Rental Income],
    CAST(([Annual Rental Income] * 100.0 / Property_Price) AS DECIMAL(10,2)) AS Gross_Rental_Yield_Percent
FROM 
    [dbo].[Swiss_real-estate_property]
WHERE 
    Location LIKE '%Basel%';
```
```sql
SELECT
    SUM([Annual Rental Income]) * 100.0 / SUM(Property_Price) AS Overall_Gross_Rental_Yield_Percent
FROM 
    [dbo].[Swiss_real-estate_property]
WHERE 
    Location LIKE '%Basel%';
```

```sql
-- Calculate Gross Rental Yield for properties in Zürich
SELECT 
    Location,
    Property_Price,
    [Annual Rental Income],
    CAST(([Annual Rental Income] * 100.0 / Property_Price) AS DECIMAL(10,2)) AS Gross_Rental_Yield_Percent
FROM 
    [dbo].[Swiss_real-estate_property]
WHERE 
    Location LIKE '%Zürich%';
```

```sql
SELECT 
    SUM([Annual Rental Income]) * 100.0 / SUM(Property_Price) AS Overall_Gross_Rental_Yield_Percent
FROM 
    [dbo].[Swiss_real-estate_property]
WHERE 
    Location LIKE '%Zürich%';
    ```

```sql
-- Calculate Gross Rental Yield for properties in Genève
SELECT 
    Location,
    Property_Price,
    [Annual Rental Income],
    CAST(([Annual Rental Income] * 100.0 / Property_Price) AS DECIMAL(10,2)) AS Gross_Rental_Yield_Percent
FROM 
    [dbo].[Swiss_real-estate_property]
WHERE 
    Location LIKE '%Genève%';
```

```sql
SELECT 
    SUM([Annual Rental Income]) * 100.0 / SUM(Property_Price) AS Overall_Gross_Rental_Yield_Percent
FROM 
    [dbo].[Swiss_real-estate_property]
WHERE 
    Location LIKE '%Genève%';
```
```sql
-- Calculate Gross Rental Yield for properties in Luzern
SELECT 
    Location,
    Property_Price,
    [Annual Rental Income],
    CAST(([Annual Rental Income] * 100.0 / Property_Price) AS DECIMAL(10,2)) AS Gross_Rental_Yield_Percent
FROM 
    [dbo].[Swiss_real-estate_property]
WHERE 
    Location LIKE '%Luzern%';
```
```sql
SELECT 
    SUM([Annual Rental Income]) * 100.0 / SUM(Property_Price) AS Overall_Gross_Rental_Yield_Percent
FROM 
    [dbo].[Swiss_real-estate_property]
WHERE 
    Location LIKE '%Luzern%';
```

```sql
-- Calculate Gross Rental Yield for properties in Bern
SELECT 
    Location,
    Property_Price,
    [Annual Rental Income],
    CAST(([Annual Rental Income] * 100.0 / Property_Price) AS DECIMAL(10,2)) AS Gross_Rental_Yield_Percent
FROM 
    [dbo].[Swiss_real-estate_property]
WHERE 
    Location LIKE '%Bern%';
```

```sql
SELECT 
    SUM([Annual Rental Income]) * 100.0 / SUM(Property_Price) AS Overall_Gross_Rental_Yield_Percent
FROM 
    [dbo].[Swiss_real-estate_property]
WHERE 
    Location LIKE '%Bern%';
```

```sql
-- Calculate Net Rental Yield and Overall ROI
SELECT 
    Location,
    Property_Price,
    [Annual Rental Income],
    ([Annual Rental Income] - (Property_Price * 0.10)) AS Net_Income,
    CAST((([Annual Rental Income] - (Property_Price * 0.10)) * 100.0 / Property_Price) AS DECIMAL(10,2)) AS Net_Rental_Yield_Percent
FROM 
    [dbo].[Swiss_real-estate_property];
```

```sql
SELECT 
    Location,
    Property_Price,
    [Annual Rental Income],
    ([Annual Rental Income] - (Property_Price * 0.10)) AS Net_Income,
    CAST((( [Annual Rental Income] - (Property_Price * 0.10) + (Property_Price * 0.03)) * 100.0 / Property_Price) AS DECIMAL(10,2)) AS Overall_ROI_Percent
FROM 
    [dbo].[Swiss_real-estate_property];
```

```sql
-- Calculate Estimated Future Price and Capital Appreciation Potential
SELECT 
    Location,
    Property_Price,
    CAST(Property_Price * POWER(1.03, 5) AS DECIMAL(18,2)) AS Estimated_Future_Price_5_Years,
    CAST(((POWER(1.03, 5) - 1) * 100.0) AS DECIMAL(10,2)) AS Capital_Appreciation_Potential_Percent
FROM 
    [dbo].[Swiss_real-estate_property];
```

#### Results/Findings 

The analysis results are summarized as follows:

1. Basel:
Properties have a relatively stable yield.
Overall Gross Rental Yield is 4.5%

Zürich:
Higher property prices result in slightly lower yields.
Overall Gross Rental Yield is 3.63%.





    
    
    
    




  
	



