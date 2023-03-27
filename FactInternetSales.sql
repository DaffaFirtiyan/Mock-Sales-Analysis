-- Prepped Internet Sales
SELECT 
  [ProductKey], 
  [OrderDateKey], 
  [DueDateKey], 
  [ShipDateKey], 
  [CustomerKey], 
  [SalesOrderNumber], 
  [SalesAmount] 
FROM 
  [AdventureWorksDW2019].[dbo].[FactInternetSales] 
WHERE 
  -- data is always 2 years from date of extraction
  LEFT(OrderDateKey, 4) >= YEAR(GETDATE()) -2 
ORDER BY 
  OrderDateKey ASC
