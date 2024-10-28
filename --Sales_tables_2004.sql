--Sales_tables_2004

use classicmodels;
Create table Sales_2004 (
select
    p.ProductName,
    c.CountryName,
    ci.CityName,
    SUM(s.SalesValue) AS TotalSalesValue,
    SUM(s.CostOfSales) AS TotalCostOfSales,
    SUM(s.SalesValue - s.CostOfSales) AS NetProfit
FROM 
    Sales s
JOIN 
    Products p ON s.ProductID = p.ProductID
JOIN 
    Countries c ON s.CountryID = c.CountryID
JOIN 
    Cities ci ON s.CityID = ci.CityID
WHERE 
    YEAR(s.SalesDate) = 2004
GROUP BY 
    p.ProductName, c.CountryName, ci.CityName
ORDER BY 
    p.ProductName, c.CountryName, ci.CityName);