-- Q: how many people are in the family table?

-- A: let's ask SQL Server and find out...

 select Name as my_messaage
   , Member_ID  as family_members

   from [dbo].[Family_Data]