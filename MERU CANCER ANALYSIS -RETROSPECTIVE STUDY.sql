use project_portfolio;

Select*
From `the state of cancer in meru, kenya – a retrospective study`;

ALTER TABLE `the state of cancer in meru, kenya – a retrospective study`
RENAME `State of Cancer in Meru,Kenya`;

select *
from `State of Cancer in Meru,Kenya`;

-- Types of cancer within the retrospective study
SELECT DISTINCT DIAGNOSIS
FROM `State of Cancer in Meru,Kenya`; 

-- Types of cancer prevalent
Select diagnosis,count(*) as prevalence
from `State of Cancer in Meru,Kenya`
group by diagnosis
order by prevalence desc;

-- CANCER PATIENTS GROUPED BY GENDER
Select sex,Count(*) as `Number_of_cases`
FROM `State of Cancer in Meru,Kenya`
Group by Sex;

-- Most occurring cancer type by Gender
WITH CTE_Diagnosiscount as (
Select 
  sex,
  diagnosis as cancer_type,
  count(*) as count
from `State of Cancer in Meru,Kenya`
Group by sex,diagnosis
)
SELECT sex,cancer_type,count
From CTE_Diagnosiscount
Where sex like 'F' 
order  by count desc
Limit 10;

WITH CTE_Diagnosiscount as (
Select 
  sex,
  diagnosis as cancer_type,
  count(*) as count
from `State of Cancer in Meru,Kenya`
Group by sex,diagnosis
)
SELECT sex,cancer_type,count
From CTE_Diagnosiscount
Where sex like 'M' 
order  by count desc
Limit 10;

-- The Age affected mostly by cancer
SELECT age,count(*)as Age_counts
from `State of Cancer in Meru,Kenya`
group by Age 
Order by Age_counts Desc;

-- Number of Cancer patients per Sub county
SELECT Distinct `sub county`,count(sex) as `Number of cancer Patients`
FROM `State of Cancer in Meru,Kenya`
Group by  `Sub county`;

-- The trajectory of Cancer Cases since 2010
SELECT year, count(year) AS Number_of_Cases
FROM `State of Cancer in Meru,Kenya`
where year between 2010 and 2018
Group by year;

-- Types of Cancer prevelent on children between 0-10 years
Select Diagnosis,Count(*) as prevalence
From `State of Cancer in Meru,Kenya`
Where Age between 0 and 10
group by diagnosis
order by prevalence Desc;

-- Children below 10 years Cancer cases based on Gender
Select *
FROM `State of Cancer in Meru,Kenya`
where Age between 0 and 10 and sex like 'F'
order by Age ASC;
Select *
FROM `State of Cancer in Meru,Kenya`
where Age between 0 and 10 and sex like 'M'
order by Age ASC;

-- Types of cancer prevelent on adults between the age 50 and 100
Select Diagnosis,Count(*) as prevalence
From `State of Cancer in Meru,Kenya`
Where Age between 50 and 100
group by diagnosis
order by prevalence Desc;

-- Cancer cases among patients aged above 50 based on gender
Select *
FROM `State of Cancer in Meru,Kenya`
where Age between 50 and 100 and sex like 'M'
order by Age Desc;
Select *
FROM `State of Cancer in Meru,Kenya`
where Age between 50 and 100 and Sex like 'F'
order by Age Desc;




