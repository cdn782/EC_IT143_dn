-- Q: How to extract first name from contact Name?

-- A: Well, here is your problem...
-- customerName = Alejandra Camino -> Alejandra
-- Google search "How to extract first Name from combined name tsql stack overflow"
-- https://stackoverflow.com/questiions/5145791/extracting-fist-name-and-last-name

with s1 --use a common Table Expression and compare first_name to first_name2
    AS (select t.contactName
     , left (t.ContactName, CHARINDEX(' ',t.ContactName + ' ') - 1) AS first_name
	 ,dbo.udf_parse_first_name(t.contactName) as first_name2
    from dbo.t_w3_schools_customers as t)
	Select s1.*
	from s1
	where s1.first_name<>s1.first_name2; --expected result is 0 rows