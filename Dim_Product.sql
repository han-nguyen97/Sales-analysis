/* Cleansed Dim_Product Table */
SELECT 
  [ProductKey],
  --,[ProductAlternateKey]
  p.[ProductSubcategoryKey], 
  --,[WeightUnitMeasureCode]
  --,[SizeUnitMeasureCode]
  [EnglishProductName] AS ProductName, 
  --,[SpanishProductName]
  --,[FrenchProductName]
  --,[StandardCost]
  --,[FinishedGoodsFlag]
  --,[Color]
  --,[SafetyStockLevel]
  --,[ReorderPoint]
  --,[ListPrice]
  --,[Size]
  --,[SizeRange]
  --,[Weight]
  --,[DaysToManufacture]
  --,[ProductLine]
  --,[DealerPrice]
  --,[Class]
  --,[Style]
  --,[ModelName]
  --,[LargePhoto] 
  [EnglishDescription] AS Description, 
  --,[FrenchDescription]
  --,[ChineseDescription]
  --,[ArabicDescription]
  --,[HebrewDescription]
  --,[ThaiDescription]
  --,[GermanDescription]
  --,[JapaneseDescription]
  --,[TurkishDescription]
  --,[StartDate]
  --,[EndDate]
  ISNULL(p.Status, 'Outdated') AS Status, 
  EnglishProductSubcategoryName AS SubCategory, -- Joined in from Sub Category Table
  pc.EnglishProductCategoryName AS ProductCategory -- Joined in from Category Table
FROM 
  DimProduct AS p, 
  DimProductSubcategory AS ps, 
  DimProductCategory AS pc 
WHERE 
  p.ProductSubcategoryKey = ps.ProductSubcategoryKey AND
  ps.ProductCategoryKey = pc.ProductCategoryKey 
ORDER BY 
  ProductKey;