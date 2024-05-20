drop table if exists dbo.t_hello_world;
go

create table dbo.t_hello_world
(my_message         varchar(25) not null,
  current_date_time datetime not null,
constraint pk_t_salary primary key clustered(my_message asc)
);
go