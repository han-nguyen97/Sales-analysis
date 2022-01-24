/* Cleansed Dim_Customer Table */
SELECT 
  [CustomerKey], 
  c.[GeographyKey], 
  [CustomerAlternateKey],
  --,[Title]
  [FirstName], 
  --,[MiddleName] 
  [LastName], 
  --,[NameStyle] 
  [FirstName] + ' ' + [LastName] AS FullName, 
  [BirthDate], 
  --,[MaritalStatus]
  --,[Suffix]
  CASE c.gender WHEN 'M' then 'Male' else 'Female' END AS [Gender], 
  --,[EmailAddress] 
  [YearlyIncome],
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  [DateFirstPurchase], 
  --,[CommuteDistance]
  g.City AS CustomerCity, 
  g.StateProvinceName AS CustomerState, 
  g.EnglishCountryRegionName AS CustomerCountry 
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] AS c 
  LEFT JOIN dbo.DimGeography AS g ON c.GeographyKey = g.GeographyKey 
ORDER BY 
  c.CustomerKey;
