-- Q: how many people are in the family table?

-- A: let's ask SQL Server and find out...

   select v.my_message
     , v.family_members
     into dbo.t_name
from dbo.v_name_load as v;
