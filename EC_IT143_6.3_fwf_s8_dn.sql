-- Q: How to extract first name from contact Name?

-- A: Well, here is your problem...
-- customerName = Alejandra Camino -> Alejandra
-- Google search "How to extract first Name from combined name tsql stack overflow"
-- https://stackoverflow.com/questiions/5145791/extracting-fist-name-and-last-name

SELECT t.CustomerID
     , t.customername
	 , t.contactname
	 , dbo.udf_parse_first_name(t.contactName) AS ContactName_fist_Name
	 , '' AS ContactName_Last_name  -- How to extract last name from contact name?
	 , t.city
	 , t.country
from dbo.t_w3_schools_customers as  t
ORDER BY 3;