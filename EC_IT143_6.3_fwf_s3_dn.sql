-- Q: How to extract first name from contact Name?

-- A: Well, here is your problem...
-- customerName = Alejandra Camino -> Alejandra
-- Google search "How to extract first Name from combined name tsql stack overflow"
-- https://stackoverflow.com/questiions/5145791/extracting-fist-name-and-last-name


select t.contactName
     ,left (t.ContactName, CHARINDEX(' ',t.ContactName + ' ') - 1) AS first_name
    from dbo.t_w3_schools_customers as t
	order by 1;