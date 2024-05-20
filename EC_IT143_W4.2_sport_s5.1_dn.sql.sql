-- Q: What is the total player salary per month?
-- A: let's ask SQL server and find out...

   select v.my_message
     , v.total_player_salary_per_month
     into dbo.t_salary
from dbo.v_salary_load as v;
