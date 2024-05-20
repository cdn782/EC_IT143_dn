create procedure dbo.usp_hello_world_load
as

/*****************************************************************************************************************
NAME:    dbo.usp_hello_world_load
PURPOSE: Hello world - load user stoered procedure
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
	
	truncate table dbo.t_hello_world;

	insert into dbo.t_hello_World
	     select v.my_message
		   ,  v.current_date_time
		   from dbo.v_hello_world_load as v;


-- a1) review results

    SELECT t.*
	  from dbo.t_hello_world as t;

 end;
 go