-- Q: How to extract first name from contact Name?

-- A: Well, here is your problem...
-- customerName = Alejandra Camino -> Alejandra


select t.contactName
    from dbo.t_w3_schools_customers as t
	order by 1;