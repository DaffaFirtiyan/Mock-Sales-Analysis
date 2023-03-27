-- Prepped Customer Table
SELECT 
  c.CustomerKey AS CustomerKey, 
  c.FirstName AS FirstName, 
  c.LastName AS LastName, 
  -- combined first and last name
  c.FirstName + ' ' + LastName AS FullName, 
  CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, 
  -- joined from geography table
  c.DateFirstPurchase AS DateFirstPurchase, 
  g.City AS CustomerCity 
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] as c 
  LEFT JOIN dbo.DimGeography AS g ON c.GeographyKey = g.GeographyKey 
ORDER BY 
  CustomerKey ASC
