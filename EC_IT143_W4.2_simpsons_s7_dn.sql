create procedure dbo.usp_name_load
as

/*****************************************************************************************************************
NAME:    dbo.usp_name_load
PURPOSE: name - load user stoered procedure
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
	truncate table dbo.t_name;

	insert into dbo.t_name
	     select v.my_message
		   , v.family_members
		   from dbo.v_name_load as v;


-- a1) review results

    SELECT t.*
	  from dbo.t_name as t;

 end
 go