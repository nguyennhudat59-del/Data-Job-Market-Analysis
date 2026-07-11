SELECT TOP (1000) [Respondent]
      ,[Country]
      ,[Employment]
      ,[Student]
      ,[EdLevel]
      ,[UndergradMajor]
      ,[DevType]
      ,[YearsCode]
      ,[YearsCodePro]
      ,[LanguageWorkedWith]
      ,[DatabaseWorkedWith]
      ,[PlatformWorkedWith]
      ,[DevEnviron]
      ,[OpSys]
      ,[ConvertedComp]
      ,[WorkWeekHrs]
      ,[WorkRemote]
      ,[CareerSat]
      ,[JobSat]
      ,[Age]
      ,[Gender]
  FROM [final_project].[dbo].[SurveyClean]

  -- kiem tra trung nhau
  SELECT Respondent, COUNT(*) AS SoLanXuatHien
FROM [final_project].[dbo].[Final Project]
GROUP BY Respondent
HAVING COUNT(*) > 1;

-- xóa trung
WITH DuplicateRows AS
(
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY Respondent ORDER BY Respondent) AS rn
    FROM SurveyClean
)
DELETE FROM DuplicateRows
WHERE rn > 1;
---
SELECT*
  FROM [final_project].[dbo].[SurveyClean]
--- xoa null
DELETE FROM SurveyClean
WHERE Respondent IS NULL
   OR Country IS NULL
   OR Employment IS NULL
   OR Student IS NULL
   OR EdLevel IS NULL
   OR UndergradMajor IS NULL
   OR DevType IS NULL
   OR YearsCode IS NULL
   OR YearsCodePro IS NULL
   OR LanguageWorkedWith IS NULL
   OR DatabaseWorkedWith IS NULL
   OR PlatformWorkedWith IS NULL
   OR DevEnviron IS NULL
   OR OpSys IS NULL
   OR ConvertedComp IS NULL
   OR WorkWeekHrs IS NULL
   OR WorkRemote IS NULL
   OR CareerSat IS NULL
   OR JobSat IS NULL
   OR Age IS NULL
   OR Gender IS NULL;
   -----kiem tra gia tri dac biet
   SELECT DISTINCT YearsCode
FROM SurveyClean
ORDER BY YearsCode;

SELECT DISTINCT YearsCodePro
FROM SurveyClean
ORDER BY YearsCodePro;
-- cap nhat
UPDATE SurveyClean
SET YearsCode = '0'
WHERE YearsCode = 'Less than 1 year';

UPDATE SurveyClean
SET YearsCodePro = '0'
WHERE YearsCodePro = 'Less than 1 year';

-- min max
SELECT
    MIN(ConvertedComp) AS MinSalary,
    MAX(ConvertedComp) AS MaxSalary,
    AVG(ConvertedComp) AS AvgSalary
FROM SurveyClean;


SELECT
    MIN(Age) AS MinAge,
    MAX(Age) AS MaxAge,
    AVG(Age) AS AvgAge
FROM SurveyClean;

SELECT
    MIN(WorkWeekHrs) AS MinHours,
    MAX(WorkWeekHrs) AS MaxHours,
    AVG(WorkWeekHrs) AS AvgHours
FROM SurveyClean;

--- kiem tra du lieu
SELECT DISTINCT Country
FROM SurveyClean
ORDER BY Country;

SELECT DISTINCT Employment
FROM SurveyClean
ORDER BY Employment;

SELECT DISTINCT DevType
FROM SurveyClean
ORDER BY DevType;


SELECT DISTINCT Gender
FROM SurveyClean
ORDER BY Gender;
 
--dong bo du lieu
ALTER TABLE SurveyClean
ADD GenderMain NVARCHAR(50);
------
UPDATE SurveyClean
SET GenderMain =
CASE
    WHEN Gender = 'Man' THEN 'Man'
    WHEN Gender = 'Woman' THEN 'Woman'
    ELSE 'Other'
END;

--tạo các bảng dimension
--DevType
SELECT
    Respondent,
    TRIM(value) AS DevType
INTO DevTypeDetail
FROM SurveyClean
CROSS APPLY STRING_SPLIT(DevType,';');
--Language
SELECT
    Respondent,
    TRIM(value) AS Language
INTO LanguageDetail
FROM SurveyClean
CROSS APPLY STRING_SPLIT(LanguageWorkedWith,';');
--Database
SELECT
    Respondent,
    TRIM(value) AS DatabaseName
INTO DatabaseDetail
FROM SurveyClean
CROSS APPLY STRING_SPLIT(DatabaseWorkedWith,';');
--Platform
SELECT
    Respondent,
    TRIM(value) AS Platform
INTO PlatformDetail
FROM SurveyClean
CROSS APPLY STRING_SPLIT(PlatformWorkedWith,';');
--DevEnviron
SELECT
    Respondent,
    TRIM(value) AS IDE
INTO DevEnvironmentDetail
FROM SurveyClean
CROSS APPLY STRING_SPLIT(DevEnviron,';');




-- truy van 
--quoc gia
SELECT Country, COUNT(*) AS Total
FROM SurveyClean
GROUP BY Country
ORDER BY Total DESC;
--luong
SELECT Country,
AVG(ConvertedComp) AS AvgSalary
FROM SurveyClean
GROUP BY Country
ORDER BY AvgSalary DESC;
--hoc van 
SELECT EdLevel,
COUNT(*) AS Total
FROM SurveyClean
GROUP BY EdLevel
ORDER BY Total DESC;


