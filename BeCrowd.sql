create database becrowd;
use becrowd;
create table customers
(
id integer auto_increment primary key,
c_name varchar(255),
street varchar(255),
city varchar(255),
state char(2),
credic_limit float
);

create table legal_person
(
id_customers integer not null,
cnpj char(18),
contact varchar(20),
foreign key (id_customers) references customers(id)
);


insert into customers(c_name, street, city, state, credic_limit) values 
('Nicolas Diogo Cardoso', 'Acesso Um', 'Porto Alegre','RS', 475),
('Cecilia Oliveira Rodrigues', 'Rua Sizuka Usuy', 'Cianorte','PR', 3170),
('Augusto Fernando Carlos Eduardo Cadorso', 'Rua Baldomiro Koerich', 'Palhoça','SC', 1097),
('Nicolas Diogo Cardoso', 'Acesso Um', 'Porto Alegre','RS', 475),
('Sabrina Heloisa Gabriela Barros', 'Rua Engenheiro Tito Marques Fernandes', 'Porto Alegre','RS', 4312),
('Joaquim Diego Lorenjo Araújo', 'Rua Vitorino', 'Novo Hamburgo','RS', 2314);

insert into legal_person(id_customers, cnpj, contact) values
(4, 85883842000191,'99767-0562'),
(5, 47773848000117,'99100-8965');

show tables;
select * from customers;
select * from legal_person;

drop table customers;
drop table legal_peson;

select * from customers order by credic_limit desc;
select * from customers order by credic_limit;
select * from customers order by 4, 1;

select c_name from customers inner join legal_person on customers.id = legal_person.id_customers;

select * from customers limit 3;
select * from customers limit 2, 3;
select c_name from customers order by credic_limit desc limit 3;

update customers set c_name='Augusto Fernando Carlos Eduardo Cardoso' where id = 3;

select * from customers where c_name like '%Cardoso%';
select c_name, credic_limit from customers where credic_limit like '____';
select c_name, credic_limit from customers where credic_limit like '___';


#select c_name from customers, legal person left outer join id = id_customers;


