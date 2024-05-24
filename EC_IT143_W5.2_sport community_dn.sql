/*****************************************************************************************************************
NAME:    Simpsons
PURPOSE: To help answer questions 

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     05/23/2023   David Nnam       1. Built this script for EC IT143


RUNTIME: 
Xm Xs

NOTES: 
This script is to respont to questions ask by other student and myself about this database.
i will be rewriting some of the questions, This is to help me answer week 5.2 question.
 
******************************************************************************************************************/

-- Q1: (by me)  As a department event organizer, I’m planning a cultural event. 
--    -what are the available information on the most common cultural practices among the department members?
-- A1: This will give you the activites happening and number of time it happened.

SELECT Category as CulturalPractices, COUNT(*) as Frequency
FROM dbo.Planet_Express
GROUP BY Category
ORDER BY Frequency DESC;

-- Q2:(by alma carter)  We're launching a simpsons reboot based in realism, the amount Marge and Homer spent seemed too unrealistic. 
--    -How much off the national average amount of debt are we off? What would be a more realistic amount per month for them to spend?
---A2: This will give you the monthly total they spent on debit.
SELECT Date, SUM(Debit) as TotalSpent
FROM dbo.FBS_Viza_Costmo
GROUP BY Date

-- Q3:(by me) Getting details on the expenses could improve work. what is the total amount spent on maintenance and salary for this past quarter?
-- A3: this is the amount that the team spent on maintenance and salary.
-- Calculate total maintenance cost for the past quarter
SELECT SUM(debit) as TotalMaintenanceCost
FROM dbo.FBS_Viza_Costmo
WHERE Date >= DATEADD(quarter, -1, GETDATE());
-- Calculate total salary cost for the past quarter
SELECT  SUM(amount) as TotalSalaryCost
FROM dbo.Planet_Express
WHERE Date >= DATEADD(quarter, -1, GETDATE());


-- Q4:(by Alma Carter) How can the Simpson family expenses dataset be utilized to develop a budget forecasting model? 
--    -Describe the methodologies and measurements that would be required for accurate prediction.
---A4: this can be done by cleaning the data that exist and creating new features like this
SELECT Date, SUM(debit) as TotalSpent
FROM dbo.FBS_Viza_Costmo
WHERE Member_Name = 'Simpson'
GROUP BY Date;

SELECT AVG(TotalSpent) as AverageSpent, MIN(TotalSpent) as MinSpent, MAX(TotalSpent) as MaxSpent
FROM (SELECT Date, SUM(debit) as TotalSpent
      FROM dbo.FBS_Viza_Costmo
      WHERE Member_Name = 'Simpson'
      GROUP BY Date) as MonthlyExpenses;