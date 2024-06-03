-- Q1 : HOW to keep track of when a record was last modified?
-- A1 : This works for the initial INSERT...

--ALTER TABLE dbo.t_hello_world
--ADD Last_modified_date DATETIME default GETDATE();

-- Q2: How to keep track of when a record was last modified?
-- A2: maybe use an after update trigger?
-- https://stackoverflow.com/questions/998240/how-to-keep-a-track-of-last-modified-time
-- https://stackoverflow.com/question/9522982/t-sql-trigger-update