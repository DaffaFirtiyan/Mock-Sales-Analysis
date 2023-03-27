-- Prepped DimDate
SELECT 
  [DateKey], 
  [FullDateAlternateKey] AS Date, 
  [EnglishDayNameOfWeek] AS Day, 
  [WeekNumberOfYear] AS WeekNr, 
  [EnglishMonthName] AS Month, 
  -- abbreviated month names
  LEFT([EnglishMonthName], 3) AS MonthAbr, 
  [MonthNumberOfYear] AS MonthNo, 
  [CalendarQuarter] AS Quarter, 
  [CalendarYear] AS Year 
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate] 
WHERE 
  CalendarYear >= 2019
