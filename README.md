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

-- Calculate Gross Rental Yield for properties in Basel
```sql
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


    
    
    
    




  
	



