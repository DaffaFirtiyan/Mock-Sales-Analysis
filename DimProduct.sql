-- Prepped Products 
SELECT 
  p.[ProductKey] AS ProductKey, 
  p.[ProductAlternateKey] AS ProductItemCode, 
  p.[EnglishProductName] AS ProductName, 
  ps.EnglishProductSubcategoryName AS SubCategory, 
  pc.EnglishProductCategoryName AS ProductCategory, 
  p.[Color] AS ProductColour, 
  p.[Size] AS ProductSize, 
  p.[ProductLine] AS ProductLine, 
  p.[ModelName] AS ModelName, 
  p.[EnglishDescription] AS ProductDescription, 
  ISNULL (p.[Status], 'Outdated') AS ProductStatus 
FROM 
  [AdventureWorksDW2019].[dbo].[DimProduct] as p 
  LEFT JOIN dbo.DimProductSubcategory AS ps ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey 
  LEFT JOIN dbo.DimProductCategory AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey 
ORDER BY 
  ProductKey ASC
