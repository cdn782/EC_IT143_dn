-- Q: what is the current date and time?

-- A: let's ask SQL Server and find out...

 select v.my_message
     , v.current_date_time
     into dbo.t_hello_world 
from dbo.v_hello_world_load as v;
