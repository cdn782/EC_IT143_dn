drop view if exists dbo.v_name_load;
go

create view dbo.v_name_load
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

select name as my_message 
   , Member_ID  as family_members
   from [dbo].[Family_Data]