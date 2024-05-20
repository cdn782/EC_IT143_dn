drop table if exists dbo.t_name;
go

create table dbo.t_name
(my_message         varchar(25) not null,
family_members int not null,
constraint pk_t_salary primary key clustered(my_message asc)
);
go