drop table if exists dbo.t_salary;
go

create table dbo.t_salary
(my_message         varchar(25) not null,
total_player_salary_per_month int not null,
constraint pk_t_salary primary key clustered(my_message asc)
);
go