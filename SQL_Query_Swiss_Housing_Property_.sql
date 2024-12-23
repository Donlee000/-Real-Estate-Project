SELECT 
    Location,
    Property_Price,
    [Annual Rental Income],
    CAST(([Annual Rental Income] * 100.0 / Property_Price) AS DECIMAL(10,2)) AS Gross_Rental_Yield_Percent
FROM 
    [dbo].[Swiss_real-estate_property]
WHERE 
    Location LIKE '%Basel%';

SELECT 
    SUM([Annual Rental Income]) * 100.0 / SUM(Property_Price) AS Overall_Gross_Rental_Yield_Percent
FROM 
    [dbo].[Swiss_real-estate_property]
WHERE 
    Location LIKE '%Basel%';


SELECT 
    Location,
    Property_Price,
    [Annual Rental Income],
    CAST(([Annual Rental Income] * 100.0 / Property_Price) AS DECIMAL(10,2)) AS Gross_Rental_Yield_Percent
FROM 
    [dbo].[Swiss_real-estate_property]
WHERE 
    Location LIKE '%Zürich%';

SELECT 
    SUM([Annual Rental Income]) * 100.0 / SUM(Property_Price) AS Overall_Gross_Rental_Yield_Percent
FROM 
    [dbo].[Swiss_real-estate_property]
WHERE 
    Location LIKE '%Zürich%';

SELECT 
    Location,
    Property_Price,
    [Annual Rental Income],
    CAST(([Annual Rental Income] * 100.0 / Property_Price) AS DECIMAL(10,2)) AS Gross_Rental_Yield_Percent
FROM 
    [dbo].[Swiss_real-estate_property]
WHERE 
    Location LIKE '%Genève%';

	SELECT 
    SUM([Annual Rental Income]) * 100.0 / SUM(Property_Price) AS Overall_Gross_Rental_Yield_Percent
FROM 
    [dbo].[Swiss_real-estate_property]
WHERE 
    Location LIKE '%Genève%';

SELECT 
    Location,
    Property_Price,
    [Annual Rental Income],
    CAST(([Annual Rental Income] * 100.0 / Property_Price) AS DECIMAL(10,2)) AS Gross_Rental_Yield_Percent
FROM 
    [dbo].[Swiss_real-estate_property]
WHERE 
    Location LIKE '%Luzern%';

	SELECT 
    SUM([Annual Rental Income]) * 100.0 / SUM(Property_Price) AS Overall_Gross_Rental_Yield_Percent
FROM 
    [dbo].[Swiss_real-estate_property]
WHERE 
    Location LIKE '%Luzern%';

SELECT 
    Location,
    Property_Price,
    [Annual Rental Income],
    CAST(([Annual Rental Income] * 100.0 / Property_Price) AS DECIMAL(10,2)) AS Gross_Rental_Yield_Percent
FROM 
    [dbo].[Swiss_real-estate_property]
WHERE 
    Location LIKE '% Bern%';

SELECT 
    SUM([Annual Rental Income]) * 100.0 / SUM(Property_Price) AS Overall_Gross_Rental_Yield_Percent
FROM 
    [dbo].[Swiss_real-estate_property]
WHERE 
    Location LIKE '%Bern%';


SELECT 
    Location,
    Property_Price,
    [Annual Rental Income],
    ([Annual Rental Income] - (Property_Price * 0.10)) AS Net_Income,
    CAST((([Annual Rental Income] - (Property_Price * 0.10)) * 100.0 / Property_Price) AS DECIMAL(10,2)) AS Net_Rental_Yield_Percent
FROM 
    [dbo].[Swiss_real-estate_property];



SELECT 
    Location,
    Property_Price,
    [Annual Rental Income],
    ([Annual Rental Income] - (Property_Price * 0.10)) AS Net_Income,
    CAST(
        (([Annual Rental Income] - (Property_Price * 0.10) + (Property_Price * 0.03)) * 100.0 / Property_Price)
        AS DECIMAL(10,2)
    ) AS Overall_ROI_Percent
FROM 
    [dbo].[Swiss_real-estate_property];

	SELECT 
    Location,
    Property_Price,
    [Annual Rental Income],
    ([Annual Rental Income] - (Property_Price * 0.10)) AS Net_Income,
    CAST(
        (([Annual Rental Income] - (Property_Price * 0.10) + (Property_Price * 0.03)) * 100.0 / Property_Price)
        AS DECIMAL(10,2)
    ) AS Overall_ROI_Percent
FROM 
    [dbo].[Swiss_real-estate_property]
WHERE 
    Location LIKE '%Basel%';

	SELECT 
    Location,
    Property_Price,
    [Annual Rental Income],
    ([Annual Rental Income] - (Property_Price * 0.10)) AS Net_Income,
    CAST(
        (([Annual Rental Income] - (Property_Price * 0.10) + (Property_Price * 0.03)) * 100.0 / Property_Price)
        AS DECIMAL(10,2)
    ) AS Overall_ROI_Percent
FROM 
    [dbo].[Swiss_real-estate_property]
WHERE 
    Location LIKE '%Zürich%';

	SELECT 
    Location,
    Property_Price,
    [Annual Rental Income],
    ([Annual Rental Income] - (Property_Price * 0.10)) AS Net_Income,
    CAST(
        (([Annual Rental Income] - (Property_Price * 0.10) + (Property_Price * 0.03)) * 100.0 / Property_Price)
        AS DECIMAL(10,2)
    ) AS Overall_ROI_Percent
FROM 
    [dbo].[Swiss_real-estate_property]
WHERE 
    Location LIKE '%Genève%';

SELECT 
    Location,
    Property_Price,
    [Annual Rental Income],
    ([Annual Rental Income] - (Property_Price * 0.10)) AS Net_Income,
    CAST(
        (([Annual Rental Income] - (Property_Price * 0.10) + (Property_Price * 0.03)) * 100.0 / Property_Price)
        AS DECIMAL(10,2)
    ) AS Overall_ROI_Percent
FROM 
    [dbo].[Swiss_real-estate_property]
WHERE 
    Location LIKE '%Luzern%';

SELECT 
    Location,
    Property_Price,
    [Annual Rental Income],
    ([Annual Rental Income] - (Property_Price * 0.10)) AS Net_Income,
    CAST(
        (([Annual Rental Income] - (Property_Price * 0.10) + (Property_Price * 0.03)) * 100.0 / Property_Price)
        AS DECIMAL(10,2)
    ) AS Overall_ROI_Percent
FROM 
    [dbo].[Swiss_real-estate_property]
WHERE 
    Location LIKE '%Bern%';

	SELECT 
    Location,
    Property_Price,
    CAST(Property_Price * POWER(1.03, 5) AS DECIMAL(18,2)) AS Estimated_Future_Price_5_Years,
    CAST(((POWER(1.03, 5) - 1) * 100.0) AS DECIMAL(10,2)) AS Capital_Appreciation_Potential_Percent
FROM 
    [dbo].[Swiss_real-estate_property];














