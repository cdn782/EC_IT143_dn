create function [dbo].[udf_parse_first_name]
(@v_combined_name as varchar(500)
)
Returns Varchar(100)

/*****************************************************************************************************************
NAME:    dbo.udf_parse_first_name
PURPOSE: parse first name from combined name

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     06/04/2022   David name      1. Built this script for EC IT143


RUNTIME: 
1s

NOTES: 
Adapted from the following...
 https://stackoverflow.com/questiions/5145791/extracting-fist-name-and-last-name
 
******************************************************************************************************************/

      BEGIN

           DECLARE @v_first_name as varchar(100);

	      set @v_first_name = LEFT(@v_combined_name, CHARINDEX(' ',@v_combined_name + ' ')  -1);

	      RETURN @v_first_name;

		  END;
	GO