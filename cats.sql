create table cats 
(pet_name varchar(15) default '#MissingName',
age int default 999
);

show tables;

show columns from cats;
 
select * from cats;

insert into cats (pet_name, age) values ('bill', 3);
insert into cats (pet_name) values ('Frajola');
insert into cats (age) values (3);