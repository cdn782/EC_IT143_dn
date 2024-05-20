drop view if exists dbo.v_salary_load;
go

create view dbo.v_salary_load
as

/*****************************************************************************************************************
NAME:   dbo.v_salary_load
PURPOSE:creat the salary - load view
MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     05/28/2022   JJAUSSI       1. Built this script for EC IT143


RUNTIME: 
1s

NOTES: 
this script exists to help me learn step 4 of 8 in the answer focuse approach for T-SQL Data Manipulation
 
******************************************************************************************************************/
select 'salary' as my_message 
   , sum (mtd_salary) as total_player_salary_per_month
   from [dbo].[tblPlayerFact]

  