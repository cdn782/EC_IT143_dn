drop view if exists dbo.v_hello_world_load;
go

create view dbo.v_hello_world_load
as

/*****************************************************************************************************************
NAME:   dbo.v_hello_world_load
PURPOSE:creat the hello world - load view
MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     05/28/2022   JJAUSSI       1. Built this script for EC IT143


RUNTIME: 
1s

NOTES: 
this script exists to help me learn step 4 of 8 in the answer focuse approach for T-SQL Data Manipulation
 
******************************************************************************************************************/
SELECT 'Hello World'as my_message
 ,GETDATE() AS current_date_time;