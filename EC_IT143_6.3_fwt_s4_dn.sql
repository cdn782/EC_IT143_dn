create trigger trg_hello_world_last_mod on dbo.t_hello_world
AFTER UPDATE
AS

/*****************************************************************************************************************
NAME:    dbo.trg_hello_world_last_mod
PURPOSE: My script purpose...

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     06/03/2022   David Nnam      1. Built this script for EC IT143


RUNTIME: 
1s

NOTES: 
keep tract of the last modified date for each row in the table
 
******************************************************************************************************************/

     UPDATE  dbo.t_hello_world
	         SET
			    Last_modified_date = GETDATE()
      Where my_message in
	  (
	     select distinct  
		        my_message
		from inserted
);