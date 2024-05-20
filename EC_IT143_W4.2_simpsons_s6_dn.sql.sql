-- Q: how many people are in the family table?

-- A: let's ask SQL Server and find out...

--1) reload data

truncate table dbo.t_name;

insert into dbo.t_name
       select v.my_message
	      , v.family_members
	from dbo.v_name_load as v;

	--2) review results 

	select t.*
	from dbo.t_name as t;