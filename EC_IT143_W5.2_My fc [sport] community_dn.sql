/*****************************************************************************************************************
NAME:    MyFC
PURPOSE: To help answer questions 

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     05/23/2023   David Nnam       1. Built this script for EC IT143


RUNTIME: 
Xm Xs

NOTES: 
This script is to respont to questions ask by other student and myself about this database.
i will be rewriting some of the questions to meet the datas found in my database. This is to help me answer week 5.2 question.
 
******************************************************************************************************************/

-- Q1: (by me) what is the most recorling time and month name that players went on holiday? with the intent of knowing when to schedule holiday. 
-- A1: This will provide information on what month have players gone holiday more.

SELECT TOP 1 
    DATEPART(MONTH, week_start_date) AS weekID,
    DATENAME(MONTH, month_name) AS MonthName,
    COUNT(*) AS HolidayCount
FROM dbo.DateDim
GROUP BY DATEPART(MONTH,week_Start_Date), DATENAME(MONTH, month_name)
ORDER BY HolidayCount DESC;

-- Q2:(by ME)  What is the toal amount spent on players salary each year and the highest paid player? The team may need to know the rate of increase made over the year to attract more contracts.
---A2: This will give you the yearly total they spent on salary and highest paid player.
-- Total amount spent on players' salary each year
SELECT 
    d.year_number,
    SUM(mtd_salary) AS TotalSalary
FROM PlayerSalaries,
dbo.DateDim as d
GROUP BY year_number;

-- Highest paid player
SELECT TOP 1
    Pl_ID,
    MAX(mtd_salary) AS HighestSalary
FROM dbo.PlayerSalaries
GROUP BY pl_id
ORDER BY HighestSalary DESC;

-- Q3:(by alcarter) We need to adjust the salaries of our highest players so we can sign Neymar Jr. As it will be a big signing, who are the top 10 highest paid players?
-- A2: This is going to get the top 10 highest paid players sorted by salary, with player id, name, and salary amount

SELECT DISTINCT TOP 10 f.pl_id, p.p_name, f.mtd_salary
from dbo.tblPlayerFact as f ,dbo.tblPositionDim as p
inner  JOIN dbo.tblPlayerFact ON dbo.tblPlayerFact.pl_id = dbo.tblPositionDim.p_id
ORDER BY mtd_salary DESC


-- Q4:(by Alma Carter) What position do we have the most players at? We're looking at filling in some of the holes we have on the team.
-- A1: This will just give out the positions and the count of each of them.

SELECT p_name, COUNT(p_name) AS Position
FROM dbo.tblPositionDim
GROUP BY p_name;
