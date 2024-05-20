-- Q: What is the total player salary?

-- A: let's ask SQL server and find out...

--1) reload data

truncate table dbo.t_salary;

insert into dbo.t_salary
       select v.my_message
	      , v.total_player_salary_per_month
	from dbo.v_salary_load as v;

	--2) review results 

	select t.*
	from dbo.t_salary as t;