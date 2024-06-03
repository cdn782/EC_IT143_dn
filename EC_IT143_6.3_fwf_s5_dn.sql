-- Q2: How to keep track of when a record was last modified?
-- A2: maybe use an after update trigger

-- Q3: Did it work?
-- A3: Well, let see...yup

--Remove stuff if it is already there
DELETE From dbo.t_hello_world
 WHERE my_message IN('Hello world2','Hello world3', 'Hello world4');

 -- load test rows
 INSERT INTO dbo.t_hello_world(my_message)
 VALUES ('Hello world2'), ('Hello world3');

 -- see if the trigger worked
   SElECT t.*
     from dbo.t_hello_world as t;

-- Try it again 
   UPDATE dbo.t_hello_world set my_message = 'Hello world4'
      where my_message = 'Hello world3';


  -- see if the trigger worked
  SELECT t.*
    from dbo.t_hello_world as t;