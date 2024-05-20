-- Q: What is the total player salary per month?

-- A: let's ask SQL server and find out...

select 'salary' as my_message 
   , sum (mtd_salary) as total_player_salary_per_month
   from [dbo].[tblPlayerFact]