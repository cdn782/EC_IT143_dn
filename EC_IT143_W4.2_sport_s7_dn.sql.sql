create procedure dbo.usp_salary_load
as

/*****************************************************************************************************************
NAME:    dbo.usp_salary_load
PURPOSE: salary - load user stoered procedure
MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     05/23/2022   JJAUSSI       1. Built this script for EC IT143


RUNTIME: 
1s

NOTES: 
This script exist to help me learn step 7 of 8 in the answer focused aproach for T-SQL Data Manipulation
 
******************************************************************************************************************/

   begin 
    -- Q1) reload data
	truncate table dbo.t_salary;

	insert into dbo.t_salary
	     select v.my_message
		   , v.total_player_salary_per_month
		   from dbo.v_salary_load as v;


-- a1) review results

    SELECT t.*
	  from dbo.t_salary as t;

 end
 go