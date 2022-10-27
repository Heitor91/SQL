create table employees
(
id int auto_increment primary key,
last_name varchar(20) not null,
first_name varchar(20) not null,
middle_name varchar(50),
age int not null,
current_status varchar(20) not null default 'employed'
);

drop table employees;

insert into employees(last_name, first_name, middle_name, age, current_status) values ('Almeida', 'José', 'Francisco', 45, 'contrated');
select * from employees;

select concat(first_name, ' ', last_name) as person_name from employees;

select concat_ws(' ', first_name, middle_name, last_name) as full_name from employees;